.PHONY: ${MAKECMDGOALS}

BOARD_DIR := ${shell echo $(CURDIR) | sed -e 's/ /\\ /g'}
TOPDIR := $(realpath ${BOARD_DIR}/../../..)

export GCC_PATH = ${BOARD_DIR}/../../../tool/nds32le-elf-mculib-v3s/bin/

${MAKECMDGOALS}:
	make -C ${TOPDIR} BOARD_DIR=${BOARD_DIR} APP_NAME=openbeken ${MAKEFLAGS} ${MAKECMDGOALS} 
	cp ../../../build/standalone/ECR6600F_openbeken_allinone.bin /home/share/samba/

