"""
author:zhudeming
Modified V0.1.1:
    liuyong
    20210726
    modified for stub_cpu file number

Modified V0.1.2:
    liuyong
    20210915
    modified for stub_addr (eco3)
    modified partition parser
    
Modified V0.1.3:
    liuyong
    20211206
    add app_name
"""
__version__ = '0.1.3'
import struct, argparse, os, binascii, shutil, glob

class Bin_Parser:
    SECTOR_SIZE = 4096
    EF_WRITE_GRAN = 32
    ENV_UNUSED = 0
    ENV_PRE_WRITE = 1
    ENV_WRITE = 2
    ENV_PRE_DELETE = 3
    ENV_DELETED = 4
    ENV_ERR_HDR = 5
    ENV_STATUS_NUM = 6
    SECTOR_STORE_UNUSED = 0
    SECTOR_STORE_EMPTY = 1
    SECTOR_STORE_USING = 2
    SECTOR_STORE_FULL = 3
    SECTOR_STORE_STATUS_NUM = 4
    SECTOR_DIRTY_UNUSED = 0
    SECTOR_DIRTY_FALSE = 1
    SECTOR_DIRTY_TRUE = 2
    SECTOR_DIRTY_GC = 3
    SECTOR_DIRTY_STATUS_NUM = 4
    SECTOR_MAGIC_WORD = '04FE'
    SECTOR_NOT_COMBINED = 4294967295

    def __init__(self):
        self.ENV_STATUS_TABLE_SIZE = self.STATUS_TABLE_SIZE(self.ENV_STATUS_NUM)
        self.env_hdr_data_len = 1 * self.ENV_STATUS_TABLE_SIZE + 4 + 4 + 4 + 4
        self.ENV_HDR_DATA_SIZE = self.EF_WG_ALIGN(self.env_hdr_data_len)
        self.STORE_STATUS_TABLE_SIZE = self.STATUS_TABLE_SIZE(self.SECTOR_STORE_STATUS_NUM)
        self.DIRTY_STATUS_TABLE_SIZE = self.STATUS_TABLE_SIZE(self.SECTOR_DIRTY_STATUS_NUM)
        self.sector_hdr_data_len = 1 * self.STORE_STATUS_TABLE_SIZE + 1 * self.DIRTY_STATUS_TABLE_SIZE + 4 + 4 + 4
        self.SECTOR_HDR_DATA_SIZE = self.EF_WG_ALIGN(self.sector_hdr_data_len)
        self.partition_dict = {}
        self.binname = []

    def ef_calc_crc32(self, s):
        return binascii.crc32(s) & 4294967295

    def STATUS_TABLE_SIZE(self, status_number):
        if self.EF_WRITE_GRAN == 1:
            return (status_number * self.EF_WRITE_GRAN + 7) // 8
        return ((status_number - 1) * self.EF_WRITE_GRAN + 7) // 8

    def EF_WG_ALIGN(self, size):
        return self.EF_ALIGN(size, (self.EF_WRITE_GRAN + 7) // 8)

    def EF_ALIGN(self, size, align):
        return size + align - 1 & ~(align - 1)

    def pack(self, u, l):
        if l == 1:
            return struct.pack('<B', u)
        if l == 4:
            return struct.pack('<I', u)

    def str_to_int(self, e):
        if type(e) != int:
            e = ord(e)
        return e

    def unpacknvbin_kv(self, kv):
        kvhead = kv[0]
        kvkey = kv[1]
        kvvalue = kv[2]
        st = kvhead[:self.ENV_STATUS_TABLE_SIZE]
        kvhead = kvhead[self.ENV_STATUS_TABLE_SIZE:]
        if st[(self.ENV_ERR_HDR - 1) * (self.EF_WRITE_GRAN // 8)] == 0:
            st_mean = 'ENV_ERR_HDR'
        else:
            if st[(self.ENV_DELETED - 1) * (self.EF_WRITE_GRAN // 8)] == 0:
                st_mean = 'ENV_DELETED'
            else:
                if st[(self.ENV_PRE_DELETE - 1) * (self.EF_WRITE_GRAN // 8)] == 0:
                    st_mean = 'ENV_PRE_DELETE'
                else:
                    if st[(self.ENV_WRITE - 1) * (self.EF_WRITE_GRAN // 8)] == 0:
                        st_mean = 'ENV_WRITE'
                    else:
                        if st[(self.ENV_PRE_WRITE - 1) * (self.EF_WRITE_GRAN // 8)] == 0:
                            st_mean = 'ENV_PRE_WRITE'
                        else:
                            st_mean = 'ST_ERROR'
        crc = kvhead[4:8]
        crc_clac = self.ef_calc_crc32(kvhead[8:] + kvkey + kvvalue)
        if crc == self.pack(crc_clac, 4):
            crc_clac = 'CRC_CORRET'
        else:
            crc_clac = 'CRC_ERROR'
        kvkey_mean = ''
        for i in range(len(kvkey)):
            a = self.str_to_int(kvkey[i])
            if a != 255:
                kvkey_mean += chr(a)

        kvvalue_mean = ''
        for i in range(len(kvvalue)):
            a = self.str_to_int(kvvalue[i])
            if a != 255:
                kvvalue_mean += chr(a)

        self.partition_dict[kvkey_mean] = kvvalue_mean.split(',')
        self.binname.append(kvkey_mean)
        return ['kvkey', "''", 'kvvalue', 'kvkey_mean', 'kvvalue_mean', 'st', 'st_mean', 
         'crc', 'crc_clac']

    def unpacknvbin_sectorhead(self, sector_head):
        sh = sector_head
        sst = sh[:self.STORE_STATUS_TABLE_SIZE]
        if sst[(self.SECTOR_STORE_FULL - 1) * (self.EF_WRITE_GRAN // 8)] == 0:
            sst_mean = 'SECTOR_STORE_FULL'
        else:
            if sst[(self.SECTOR_STORE_USING - 1) * (self.EF_WRITE_GRAN // 8)] == 0:
                sst_mean = 'SECTOR_STORE_USING'
            else:
                if sst[(self.SECTOR_STORE_EMPTY - 1) * (self.EF_WRITE_GRAN // 8)] == 0:
                    sst_mean = 'SECTOR_STORE_EMPTY'
                else:
                    sst_mean = 'SST_ERROR'
        sh = sh[self.STORE_STATUS_TABLE_SIZE:]
        dst = sh[:self.DIRTY_STATUS_TABLE_SIZE]
        if dst[(self.SECTOR_DIRTY_GC - 1) * (self.EF_WRITE_GRAN // 8)] == 0:
            dst_mean = 'SECTOR_DIRTY_GC'
        else:
            if dst[(self.SECTOR_DIRTY_TRUE - 1) * (self.EF_WRITE_GRAN // 8)] == 0:
                dst_mean = 'SECTOR_DIRTY_TRUE'
            else:
                if dst[(self.SECTOR_DIRTY_FALSE - 1) * (self.EF_WRITE_GRAN // 8)] == 0:
                    dst_mean = 'SECTOR_DIRTY_FALSE'
                else:
                    dst_mean = 'DST_ERROR'
        sh = sh[self.DIRTY_STATUS_TABLE_SIZE:]
        magic = sh[:4]
        combain = sh[4:8]
        reserved = sh[8:]
        return [
         'sst', 'sst_mean', 'dst', 'dst_mean', 'magic', 'combain', 
         'reserved']

    def unpacknvbin_sector(self, sector):
        result = []
        s = sector
        sector_head = s[:self.SECTOR_HDR_DATA_SIZE]
        cut_data = s[-3072:]
        result.append(self.unpacknvbin_sectorhead(sector_head))
        num = 0
        s = cut_data
        while True:
            if len(s) <= 0:
                break
            else:
                kvhead = s[:self.ENV_HDR_DATA_SIZE]
                if len(kvhead) <= 0:
                    break
                kvkey_len = self.str_to_int(kvhead[-8])
                if kvkey_len == 255:
                    break
                kvvalue_len = struct.unpack('<I', kvhead[-4:])[0]
                s = s[self.ENV_HDR_DATA_SIZE:]
                kvkey_len_align = self.EF_WG_ALIGN(kvkey_len)
                kvvalue_len_align = self.EF_WG_ALIGN(kvvalue_len)
                kvkey = s[:kvkey_len_align]
                s = s[kvkey_len_align:]
                kvvalue = s[:kvvalue_len_align]
                s = s[kvvalue_len_align:]
                kv = [kvhead, kvkey, kvvalue]
                result.append(self.unpacknvbin_kv(kv))

        return result

    def unpacknvbin(self, nvbin):
        sectorlist = []
        bin = nvbin
        while True:
            if len(bin) <= self.SECTOR_SIZE:
                sectorlist.append(bin)
                break
            else:
                sectorlist.append(bin[:self.SECTOR_SIZE])
                bin = bin[self.SECTOR_SIZE:]

        kvpair = []
        for sector in sectorlist:
            kvpair.append(self.unpacknvbin_sector(sector))

        return kvpair


class Bin_Handle:
    TRS_ALLINONE = 'oneb'

    def __init__(self):
        pass

    def copybin(self, dst_dir, src_dir):
        file_names = glob.glob(src_dir + '/*.bin')
        for file_name in file_names:
            shutil.copy(file_name, dst_dir)

    def searchbin(self, bindir, binname):
        for filename in os.listdir(bindir):
            binpath = os.path.join(bindir, filename)
            if os.path.isfile(binpath) and binname.lower() in filename.lower():
                return binpath

        return ''

    def pack_allinone(self, valid_bin, bin_dict, allinone_bin_path):
        allinone_fd = open(allinone_bin_path, 'wb')
        allinone_fd.write(self.TRS_ALLINONE.encode(encoding='utf-8', errors='strict'))
        binnum = struct.pack('<B', len(bin_dict.keys()))
        allinone_fd.write(binnum)
        for binpath in valid_bin:
            bin_baseaddr = int(bin_dict[binpath], 16)
            if 'stub' in binpath.lower():
                bin_type = 0
                bin_baseaddr = 65536
            else:
                bin_type = 2
            bin_len = os.path.getsize(binpath)
            bininfo = struct.pack('<BII', bin_type, bin_baseaddr, bin_len)
            allinone_fd.write(bininfo)
            bin_fd = open(binpath, 'rb')
            bin_data = bin_fd.read()
            allinone_fd.write(bin_data)
            bin_fd.close()

        allinone_fd.close()

    def pack_stub_cpu(self, valid_bin, bin_dict, stub_cpu_inone_bin_path):
        stub_cpu_inone_fd = open(stub_cpu_inone_bin_path, 'wb')
        stub_cpu_inone_fd.write(self.TRS_ALLINONE.encode(encoding='utf-8', errors='strict'))
        binnum = struct.pack('<B', 2)
        stub_cpu_inone_fd.write(binnum)
        for binpath in valid_bin:
            bin_baseaddr = int(bin_dict[binpath], 16)
            if 'stub' in binpath.lower():
                bin_type = 0
                bin_baseaddr = 65536
            else:
                if 'cpu' in binpath.lower():
                    bin_type = 2
                else:
                    continue
                bin_len = os.path.getsize(binpath)
                bininfo = struct.pack('<BII', bin_type, bin_baseaddr, bin_len)
                stub_cpu_inone_fd.write(bininfo)
                bin_fd = open(binpath, 'rb')
                bin_data = bin_fd.read()
                stub_cpu_inone_fd.write(bin_data)
                bin_fd.close()

        stub_cpu_inone_fd.close()


if __name__ == '__main__':
    print('-------------------------------------------------------------------')
    print('makeone.py {}'.format(__version__))
    bin_dict = {}
    valid_bin = []
    invalid_bin = []
    parser = argparse.ArgumentParser()
    parser.add_argument('--boarddir', '-b', help='ref design directory')
    parser.add_argument('--outdir', '-o', help='output bin directory')
    parser.add_argument('--app_name', '-a', help='output bin name')
    args = parser.parse_args()
    ref_bin_path = os.path.join(args.boarddir, 'ref_bin')
    comm_bin_path = os.path.join(os.path.dirname(args.boarddir), 'common/common_bin')
    cpu_bin_path = args.outdir
    result_app_name = ''
    if args.app_name:
        result_app_name = args.app_name
    else:
        if args.app_name != os.path.basename(args.boarddir):
            allinone_bin_path = os.path.join(args.outdir, 'ECR6600F_' + os.path.basename(args.boarddir) + '_' + result_app_name + '_allinone.bin')
        else:
            allinone_bin_path = os.path.join(args.outdir, 'ECR6600F_' + os.path.basename(args.boarddir) + '_allinone.bin')
        if os.path.exists(allinone_bin_path):
            os.remove(allinone_bin_path)
        if args.app_name != os.path.basename(args.boarddir):
            stub_cpu_inone_bin_path = os.path.join(args.outdir, 'ECR6600F_' + os.path.basename(args.boarddir) + '_' + result_app_name + '_stub_cpu_inone.bin')
        else:
            stub_cpu_inone_bin_path = os.path.join(args.outdir, 'ECR6600F_' + os.path.basename(args.boarddir) + '_stub_cpu_inone.bin')
    if os.path.exists(stub_cpu_inone_bin_path):
        os.remove(stub_cpu_inone_bin_path)
    dst_bin_path = os.path.join(args.outdir, 'bin')
    if os.path.exists(dst_bin_path):
        shutil.rmtree(dst_bin_path)
    os.mkdir(dst_bin_path)
    handle = Bin_Handle()
    handle.copybin(dst_bin_path, ref_bin_path)
    handle.copybin(dst_bin_path, comm_bin_path)
    handle.copybin(dst_bin_path, cpu_bin_path)
    stub_bin_path = handle.searchbin(dst_bin_path, 'stub')
    if stub_bin_path == '':
        print('Stub is not found!!!!!!!!')
        sys.exit(0)
    else:
        valid_bin.append(stub_bin_path)
        bin_dict[stub_bin_path] = '0x0'
    partition_bin_path = handle.searchbin(dst_bin_path, 'partition')
    if partition_bin_path == '':
        print('Partition is not found!!!!!!!!')
        sys.exit(0)
    fd = open(partition_bin_path, 'rb')
    partition_bin_data = fd.read()
    fd.close()
    partition_paser = Bin_Parser()
    partition_paser.unpacknvbin(partition_bin_data)
    for binname in partition_paser.binname:
        bin_path = handle.searchbin(dst_bin_path, binname)
        if bin_path != '':
            valid_bin.append(bin_path)
            bin_dict[bin_path] = partition_paser.partition_dict[binname][0]
        else:
            invalid_bin.append(binname)

    print('     Bin is found:')
    for bin in valid_bin:
        print('         ' + bin)

    if invalid_bin:
        print('     Bin is missing:')
        for bin in invalid_bin:
            print('         ' + bin)

    print('Result:')
    handle.pack_allinone(valid_bin, bin_dict, allinone_bin_path)
    print('     ' + allinone_bin_path + ' is generated')
    handle.pack_stub_cpu(valid_bin, bin_dict, stub_cpu_inone_bin_path)
    print('     ' + stub_cpu_inone_bin_path + ' is generated')