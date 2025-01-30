
  .text_libapps_apps :
  {
    *libapps:(.text .text.*)
  } > v_memory

  .ro_libapps_apps :
  {
    *libapps:(.rodata .rodata.*)
  } > v_memory

  .bss_libapps_apps :
  {
    *libapps:(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libapps_apps :
  {
    *libapps:(.sdata* .srodata* .data* .version_data)
  } > v_memory

  .text_libarch_arch :
  {
    *libarch:(.text .text.*)
  } > v_memory

  .ro_libarch_arch :
  {
    *libarch:(.rodata .rodata.*)
  } > v_memory

  .bss_libarch_arch :
  {
    *libarch:(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libarch_arch :
  {
    *libarch:(.sdata* .srodata* .data* .version_data)
  } > v_memory

  .text_libboard_board :
  {
    *libboard:(.text .text.*)
  } > v_memory

  .ro_libboard_board :
  {
    *libboard:(.rodata .rodata.*)
  } > v_memory

  .bss_libboard_board :
  {
    *libboard:(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libboard_board :
  {
    *libboard:(.sdata* .srodata* .data* .version_data)
  } > v_memory

  .text_libdrivers_drivers :
  {
    *libdrivers:(.text .text.*)
  } > v_memory

  .ro_libdrivers_drivers :
  {
    *libdrivers:(.rodata .rodata.*)
  } > v_memory

  .bss_libdrivers_drivers :
  {
    *libdrivers:(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libdrivers_drivers :
  {
    *libdrivers:(.sdata* .srodata* .data* .version_data)
  } > v_memory

  .text_libos_os :
  {
    *libos:(.text .text.*)
  } > v_memory

  .ro_libos_os :
  {
    *libos:(.rodata .rodata.*)
  } > v_memory

  .bss_libos_os :
  {
    *libos:(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libos_os :
  {
    *libos:(.sdata* .srodata* .data* .version_data)
  } > v_memory

  .text_libpsm_psm :
  {
    *libpsm:(.text .text.*)
  } > v_memory

  .ro_libpsm_psm :
  {
    *libpsm:(.rodata .rodata.*)
  } > v_memory

  .bss_libpsm_psm :
  {
    *libpsm:(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libpsm_psm :
  {
    *libpsm:(.sdata* .srodata* .data* .version_data)
  } > v_memory

  .text_libcomponents_cjson :
  {
    *libcomponents.a:cJSON.o(.text .text.*)
  } > v_memory

  .ro_libcomponents_cjson :
  {
    *libcomponents.a:cJSON.o(.rodata .rodata.*)
  } > v_memory

  .bss_libcomponents_cjson :
  {
    *libcomponents.a:cJSON.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libcomponents_cjson :
  {
    *libcomponents.a:cJSON.o(.sdata* .srodata* .data* .version_data)
  } > v_memory

  .text_libcomponents_cli :
  {
    *libcomponents.a:cmd_system.o(.text .text.*)
    *libcomponents.a:cmd_write.o(.text .text.*)
    *libcomponents.a:cmd_read.o(.text .text.*)
    *libcomponents.a:cmd_adc.o(.text .text.*)
    *libcomponents.a:cmd_health_monitor.o(.text .text.*)
    *libcomponents.a:cmd_wdt.o(.text .text.*)
    *libcomponents.a:cmd_common.o(.text .text.*)
    *libcomponents.a:cmd_show.o(.text .text.*)
    *libcomponents.a:cmd_wifi_amt_cli.o(.text .text.*)
    *libcomponents.a:cmd_system_debug.o(.text .text.*)
    *libcomponents.a:cmd_ble_amt_cli.o(.text .text.*)
    *libcomponents.a:cmd_psm.o(.text .text.*)
    *libcomponents.a:cmd_smartconfig.o(.text .text.*)
    *libcomponents.a:cmd_sntp.o(.text .text.*)
    *libcomponents.a:cmd_ota.o(.text .text.*)
    *libcomponents.a:cmd_efuse.o(.text .text.*)
    *libcomponents.a:cmd_nv.o(.text .text.*)
    *libcomponents.a:cmd_iperf.o(.text .text.*)
    *libcomponents.a:cmd_wifi.o(.text .text.*)
    *libcomponents.a:cmd_ble.o(.text .text.*)
    *libcomponents.a:cli_trace_stack.o(.text .text.*)
    *libcomponents.a:cli.o(.text .text.*)
  } > v_memory

  .ro_libcomponents_cli :
  {
    *libcomponents.a:cmd_system.o(.rodata .rodata.*)
    *libcomponents.a:cmd_write.o(.rodata .rodata.*)
    *libcomponents.a:cmd_read.o(.rodata .rodata.*)
    *libcomponents.a:cmd_adc.o(.rodata .rodata.*)
    *libcomponents.a:cmd_health_monitor.o(.rodata .rodata.*)
    *libcomponents.a:cmd_wdt.o(.rodata .rodata.*)
    *libcomponents.a:cmd_common.o(.rodata .rodata.*)
    *libcomponents.a:cmd_show.o(.rodata .rodata.*)
    *libcomponents.a:cmd_wifi_amt_cli.o(.rodata .rodata.*)
    *libcomponents.a:cmd_system_debug.o(.rodata .rodata.*)
    *libcomponents.a:cmd_ble_amt_cli.o(.rodata .rodata.*)
    *libcomponents.a:cmd_psm.o(.rodata .rodata.*)
    *libcomponents.a:cmd_smartconfig.o(.rodata .rodata.*)
    *libcomponents.a:cmd_sntp.o(.rodata .rodata.*)
    *libcomponents.a:cmd_ota.o(.rodata .rodata.*)
    *libcomponents.a:cmd_efuse.o(.rodata .rodata.*)
    *libcomponents.a:cmd_nv.o(.rodata .rodata.*)
    *libcomponents.a:cmd_iperf.o(.rodata .rodata.*)
    *libcomponents.a:cmd_wifi.o(.rodata .rodata.*)
    *libcomponents.a:cmd_ble.o(.rodata .rodata.*)
    *libcomponents.a:cli_trace_stack.o(.rodata .rodata.*)
    *libcomponents.a:cli.o(.rodata .rodata.*)
  } > v_memory

  .bss_libcomponents_cli :
  {
    *libcomponents.a:cmd_system.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cmd_write.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cmd_read.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cmd_adc.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cmd_health_monitor.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cmd_wdt.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cmd_common.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cmd_show.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cmd_wifi_amt_cli.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cmd_system_debug.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cmd_ble_amt_cli.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cmd_psm.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cmd_smartconfig.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cmd_sntp.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cmd_ota.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cmd_efuse.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cmd_nv.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cmd_iperf.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cmd_wifi.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cmd_ble.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cli_trace_stack.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cli.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libcomponents_cli :
  {
    *libcomponents.a:cmd_system.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cmd_write.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cmd_read.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cmd_adc.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cmd_health_monitor.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cmd_wdt.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cmd_common.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cmd_show.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cmd_wifi_amt_cli.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cmd_system_debug.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cmd_ble_amt_cli.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cmd_psm.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cmd_smartconfig.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cmd_sntp.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cmd_ota.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cmd_efuse.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cmd_nv.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cmd_iperf.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cmd_wifi.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cmd_ble.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cli_trace_stack.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cli.o(.sdata* .srodata* .data* .version_data)
  } > v_memory

  .text_libcomponents_health_monitor :
  {
    *libcomponents.a:health_monitor.o(.text .text.*)
  } > v_memory

  .ro_libcomponents_health_monitor :
  {
    *libcomponents.a:health_monitor.o(.rodata .rodata.*)
  } > v_memory

  .bss_libcomponents_health_monitor :
  {
    *libcomponents.a:health_monitor.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libcomponents_health_monitor :
  {
    *libcomponents.a:health_monitor.o(.sdata* .srodata* .data* .version_data)
  } > v_memory

  .text_libcomponents_iperf3 :
  {
    *libcomponents.a:dscp.o(.text .text.*)
    *libcomponents.a:iperf_locale.o(.text .text.*)
    *libcomponents.a:iperf.o(.text .text.*)
    *libcomponents.a:iperf_sctp.o(.text .text.*)
    *libcomponents.a:iperf_time.o(.text .text.*)
    *libcomponents.a:iperf_error.o(.text .text.*)
    *libcomponents.a:iperf_util.o(.text .text.*)
    *libcomponents.a:timer.o(.text .text.*)
    *libcomponents.a:iperf_client_api.o(.text .text.*)
    *libcomponents.a:units.o(.text .text.*)
    *libcomponents.a:iperf_tcp.o(.text .text.*)
    *libcomponents.a:net.o(.text .text.*)
    *libcomponents.a:iperf_udp.o(.text .text.*)
    *libcomponents.a:getopt.o(.text .text.*)
    *libcomponents.a:iperf_server_api.o(.text .text.*)
    *libcomponents.a:iperf_api.o(.text .text.*)
  } > v_memory

  .ro_libcomponents_iperf3 :
  {
    *libcomponents.a:dscp.o(.rodata .rodata.*)
    *libcomponents.a:iperf_locale.o(.rodata .rodata.*)
    *libcomponents.a:iperf.o(.rodata .rodata.*)
    *libcomponents.a:iperf_sctp.o(.rodata .rodata.*)
    *libcomponents.a:iperf_time.o(.rodata .rodata.*)
    *libcomponents.a:iperf_error.o(.rodata .rodata.*)
    *libcomponents.a:iperf_util.o(.rodata .rodata.*)
    *libcomponents.a:timer.o(.rodata .rodata.*)
    *libcomponents.a:iperf_client_api.o(.rodata .rodata.*)
    *libcomponents.a:units.o(.rodata .rodata.*)
    *libcomponents.a:iperf_tcp.o(.rodata .rodata.*)
    *libcomponents.a:net.o(.rodata .rodata.*)
    *libcomponents.a:iperf_udp.o(.rodata .rodata.*)
    *libcomponents.a:getopt.o(.rodata .rodata.*)
    *libcomponents.a:iperf_server_api.o(.rodata .rodata.*)
    *libcomponents.a:iperf_api.o(.rodata .rodata.*)
  } > v_memory

  .bss_libcomponents_iperf3 :
  {
    *libcomponents.a:dscp.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:iperf_locale.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:iperf.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:iperf_sctp.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:iperf_time.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:iperf_error.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:iperf_util.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:timer.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:iperf_client_api.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:units.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:iperf_tcp.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:net.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:iperf_udp.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:getopt.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:iperf_server_api.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:iperf_api.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libcomponents_iperf3 :
  {
    *libcomponents.a:dscp.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:iperf_locale.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:iperf.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:iperf_sctp.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:iperf_time.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:iperf_error.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:iperf_util.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:timer.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:iperf_client_api.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:units.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:iperf_tcp.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:net.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:iperf_udp.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:getopt.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:iperf_server_api.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:iperf_api.o(.sdata* .srodata* .data* .version_data)
  } > v_memory

  .text_libcomponents_lwip :
  {
    *libcomponents.a:sys_arch.o(.text .text.*)
    *libcomponents.a:autoip.o(.text .text.*)
    *libcomponents.a:ip4_addr.o(.text .text.*)
    *libcomponents.a:ip4.o(.text .text.*)
    *libcomponents.a:ip4_frag.o(.text .text.*)
    *libcomponents.a:icmp.o(.text .text.*)
    *libcomponents.a:igmp.o(.text .text.*)
    *libcomponents.a:etharp.o(.text .text.*)
    *libcomponents.a:dhcp.o(.text .text.*)
    *libcomponents.a:napt.o(.text .text.*)
    *libcomponents.a:stats.o(.text .text.*)
    *libcomponents.a:def.o(.text .text.*)
    *libcomponents.a:ip.o(.text .text.*)
    *libcomponents.a:inet_chksum.o(.text .text.*)
    *libcomponents.a:sys.o(.text .text.*)
    *libcomponents.a:timeouts.o(.text .text.*)
    *libcomponents.a:raw.o(.text .text.*)
    *libcomponents.a:memp.o(.text .text.*)
    *libcomponents.a:mem.o(.text .text.*)
    *libcomponents.a:dns.o(.text .text.*)
    *libcomponents.a:init.o(.text .text.*)
    *libcomponents.a:udp.o(.text .text.*)
    *libcomponents.a:pbuf.o(.text .text.*)
    *libcomponents.a:ethip6.o(.text .text.*)
    *libcomponents.a:inet6.o(.text .text.*)
    *libcomponents.a:icmp6.o(.text .text.*)
    *libcomponents.a:ip6_addr.o(.text .text.*)
    *libcomponents.a:mld6.o(.text .text.*)
    *libcomponents.a:ip6_frag.o(.text .text.*)
    *libcomponents.a:ip6.o(.text .text.*)
    *libcomponents.a:dhcp6.o(.text .text.*)
    *libcomponents.a:nd6.o(.text .text.*)
    *libcomponents.a:netif.o(.text .text.*)
    *libcomponents.a:tcp_out.o(.text .text.*)
    *libcomponents.a:tcp.o(.text .text.*)
    *libcomponents.a:tcp_in.o(.text .text.*)
    *libcomponents.a:err.o(.text .text.*)
    *libcomponents.a:tcpip.o(.text .text.*)
    *libcomponents.a:netbuf.o(.text .text.*)
    *libcomponents.a:netdb.o(.text .text.*)
    *libcomponents.a:netifapi.o(.text .text.*)
    *libcomponents.a:api_lib.o(.text .text.*)
    *libcomponents.a:api_msg.o(.text .text.*)
    *libcomponents.a:sockets.o(.text .text.*)
    *libcomponents.a:ethernet.o(.text .text.*)
    *libcomponents.a:ping.o(.text .text.*)
    *libcomponents.a:ping6.o(.text .text.*)
    *libcomponents.a:dhcpserver.o(.text .text.*)
    *libcomponents.a:sntp.o(.text .text.*)
  } > v_memory

  .ro_libcomponents_lwip :
  {
    *libcomponents.a:sys_arch.o(.rodata .rodata.*)
    *libcomponents.a:autoip.o(.rodata .rodata.*)
    *libcomponents.a:ip4_addr.o(.rodata .rodata.*)
    *libcomponents.a:ip4.o(.rodata .rodata.*)
    *libcomponents.a:ip4_frag.o(.rodata .rodata.*)
    *libcomponents.a:icmp.o(.rodata .rodata.*)
    *libcomponents.a:igmp.o(.rodata .rodata.*)
    *libcomponents.a:etharp.o(.rodata .rodata.*)
    *libcomponents.a:dhcp.o(.rodata .rodata.*)
    *libcomponents.a:napt.o(.rodata .rodata.*)
    *libcomponents.a:stats.o(.rodata .rodata.*)
    *libcomponents.a:def.o(.rodata .rodata.*)
    *libcomponents.a:ip.o(.rodata .rodata.*)
    *libcomponents.a:inet_chksum.o(.rodata .rodata.*)
    *libcomponents.a:sys.o(.rodata .rodata.*)
    *libcomponents.a:timeouts.o(.rodata .rodata.*)
    *libcomponents.a:raw.o(.rodata .rodata.*)
    *libcomponents.a:memp.o(.rodata .rodata.*)
    *libcomponents.a:mem.o(.rodata .rodata.*)
    *libcomponents.a:dns.o(.rodata .rodata.*)
    *libcomponents.a:init.o(.rodata .rodata.*)
    *libcomponents.a:udp.o(.rodata .rodata.*)
    *libcomponents.a:pbuf.o(.rodata .rodata.*)
    *libcomponents.a:ethip6.o(.rodata .rodata.*)
    *libcomponents.a:inet6.o(.rodata .rodata.*)
    *libcomponents.a:icmp6.o(.rodata .rodata.*)
    *libcomponents.a:ip6_addr.o(.rodata .rodata.*)
    *libcomponents.a:mld6.o(.rodata .rodata.*)
    *libcomponents.a:ip6_frag.o(.rodata .rodata.*)
    *libcomponents.a:ip6.o(.rodata .rodata.*)
    *libcomponents.a:dhcp6.o(.rodata .rodata.*)
    *libcomponents.a:nd6.o(.rodata .rodata.*)
    *libcomponents.a:netif.o(.rodata .rodata.*)
    *libcomponents.a:tcp_out.o(.rodata .rodata.*)
    *libcomponents.a:tcp.o(.rodata .rodata.*)
    *libcomponents.a:tcp_in.o(.rodata .rodata.*)
    *libcomponents.a:err.o(.rodata .rodata.*)
    *libcomponents.a:tcpip.o(.rodata .rodata.*)
    *libcomponents.a:netbuf.o(.rodata .rodata.*)
    *libcomponents.a:netdb.o(.rodata .rodata.*)
    *libcomponents.a:netifapi.o(.rodata .rodata.*)
    *libcomponents.a:api_lib.o(.rodata .rodata.*)
    *libcomponents.a:api_msg.o(.rodata .rodata.*)
    *libcomponents.a:sockets.o(.rodata .rodata.*)
    *libcomponents.a:ethernet.o(.rodata .rodata.*)
    *libcomponents.a:ping.o(.rodata .rodata.*)
    *libcomponents.a:ping6.o(.rodata .rodata.*)
    *libcomponents.a:dhcpserver.o(.rodata .rodata.*)
    *libcomponents.a:sntp.o(.rodata .rodata.*)
  } > v_memory

  .bss_libcomponents_lwip :
  {
    *libcomponents.a:sys_arch.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:autoip.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ip4_addr.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ip4.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ip4_frag.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:icmp.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:igmp.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:etharp.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:dhcp.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:napt.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:stats.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:def.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ip.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:inet_chksum.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:sys.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:timeouts.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:raw.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:memp.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:mem.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:dns.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:init.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:udp.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:pbuf.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ethip6.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:inet6.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:icmp6.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ip6_addr.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:mld6.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ip6_frag.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ip6.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:dhcp6.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:nd6.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:netif.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:tcp_out.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:tcp.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:tcp_in.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:err.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:tcpip.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:netbuf.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:netdb.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:netifapi.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:api_lib.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:api_msg.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:sockets.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ethernet.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ping.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ping6.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:dhcpserver.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:sntp.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libcomponents_lwip :
  {
    *libcomponents.a:sys_arch.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:autoip.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ip4_addr.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ip4.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ip4_frag.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:icmp.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:igmp.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:etharp.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:dhcp.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:napt.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:stats.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:def.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ip.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:inet_chksum.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:sys.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:timeouts.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:raw.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:memp.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:mem.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:dns.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:init.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:udp.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:pbuf.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ethip6.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:inet6.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:icmp6.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ip6_addr.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:mld6.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ip6_frag.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ip6.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:dhcp6.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:nd6.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:netif.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:tcp_out.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:tcp.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:tcp_in.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:err.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:tcpip.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:netbuf.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:netdb.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:netifapi.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:api_lib.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:api_msg.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:sockets.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ethernet.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ping.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ping6.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:dhcpserver.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:sntp.o(.sdata* .srodata* .data* .version_data)
  } > v_memory

  .text_libcomponents_mbedtls :
  {
    *libcomponents.a:md4.o(.text .text.*)
    *libcomponents.a:chachapoly.o(.text .text.*)
    *libcomponents.a:blowfish.o(.text .text.*)
    *libcomponents.a:ssl_ticket.o(.text .text.*)
    *libcomponents.a:pkcs11.o(.text .text.*)
    *libcomponents.a:ecp_curves.o(.text .text.*)
    *libcomponents.a:havege.o(.text .text.*)
    *libcomponents.a:entropy_poll.o(.text .text.*)
    *libcomponents.a:nist_kw.o(.text .text.*)
    *libcomponents.a:dhm.o(.text .text.*)
    *libcomponents.a:memory_buffer_alloc.o(.text .text.*)
    *libcomponents.a:pk.o(.text .text.*)
    *libcomponents.a:cipher.o(.text .text.*)
    *libcomponents.a:x509write_csr.o(.text .text.*)
    *libcomponents.a:ssl_cache.o(.text .text.*)
    *libcomponents.a:timing.o(.text .text.*)
    *libcomponents.a:padlock.o(.text .text.*)
    *libcomponents.a:version.o(.text .text.*)
    *libcomponents.a:md_wrap.o(.text .text.*)
    *libcomponents.a:gcm.o(.text .text.*)
    *libcomponents.a:cmac.o(.text .text.*)
    *libcomponents.a:md.o(.text .text.*)
    *libcomponents.a:md2.o(.text .text.*)
    *libcomponents.a:chacha20.o(.text .text.*)
    *libcomponents.a:aria.o(.text .text.*)
    *libcomponents.a:debug.o(.text .text.*)
    *libcomponents.a:pkwrite.o(.text .text.*)
    *libcomponents.a:asn1parse.o(.text .text.*)
    *libcomponents.a:ecdh.o(.text .text.*)
    *libcomponents.a:ecjpake.o(.text .text.*)
    *libcomponents.a:sha256.o(.text .text.*)
    *libcomponents.a:x509_create.o(.text .text.*)
    *libcomponents.a:ssl_ciphersuites.o(.text .text.*)
    *libcomponents.a:xtea.o(.text .text.*)
    *libcomponents.a:asn1write.o(.text .text.*)
    *libcomponents.a:mbedtls_md5.o(.text .text.*)
    *libcomponents.a:base64.o(.text .text.*)
    *libcomponents.a:ecp.o(.text .text.*)
    *libcomponents.a:ssl_cli.o(.text .text.*)
    *libcomponents.a:arc4.o(.text .text.*)
    *libcomponents.a:ecdsa.o(.text .text.*)
    *libcomponents.a:oid.o(.text .text.*)
    *libcomponents.a:cipher_wrap.o(.text .text.*)
    *libcomponents.a:threading.o(.text .text.*)
    *libcomponents.a:camellia.o(.text .text.*)
    *libcomponents.a:hkdf.o(.text .text.*)
    *libcomponents.a:rsa_internal.o(.text .text.*)
    *libcomponents.a:certs.o(.text .text.*)
    *libcomponents.a:ssl_cookie.o(.text .text.*)
    *libcomponents.a:rsa.o(.text .text.*)
    *libcomponents.a:ccm.o(.text .text.*)
    *libcomponents.a:poly1305.o(.text .text.*)
    *libcomponents.a:aes.o(.text .text.*)
    *libcomponents.a:des.o(.text .text.*)
    *libcomponents.a:sha512.o(.text .text.*)
    *libcomponents.a:x509_crl.o(.text .text.*)
    *libcomponents.a:pem.o(.text .text.*)
    *libcomponents.a:platform.o(.text .text.*)
    *libcomponents.a:x509.o(.text .text.*)
    *libcomponents.a:hmac_drbg.o(.text .text.*)
    *libcomponents.a:pkparse.o(.text .text.*)
    *libcomponents.a:pkcs12.o(.text .text.*)
    *libcomponents.a:aesni.o(.text .text.*)
    *libcomponents.a:x509_crt.o(.text .text.*)
    *libcomponents.a:pkcs5.o(.text .text.*)
    *libcomponents.a:error.o(.text .text.*)
    *libcomponents.a:ripemd160.o(.text .text.*)
    *libcomponents.a:ctr_drbg.o(.text .text.*)
    *libcomponents.a:platform_util.o(.text .text.*)
    *libcomponents.a:entropy.o(.text .text.*)
    *libcomponents.a:pk_wrap.o(.text .text.*)
    *libcomponents.a:mbedtls_sha1.o(.text .text.*)
    *libcomponents.a:x509write_crt.o(.text .text.*)
    *libcomponents.a:ssl_srv.o(.text .text.*)
    *libcomponents.a:x509_csr.o(.text .text.*)
    *libcomponents.a:bignum.o(.text .text.*)
    *libcomponents.a:ssl_tls.o(.text .text.*)
    *libcomponents.a:mbedtls_memory.o(.text .text.*)
    *libcomponents.a:trs_hardware_entropy.o(.text .text.*)
    *libcomponents.a:trs_net_sockets.o(.text .text.*)
  } > v_memory

  .ro_libcomponents_mbedtls :
  {
    *libcomponents.a:md4.o(.rodata .rodata.*)
    *libcomponents.a:chachapoly.o(.rodata .rodata.*)
    *libcomponents.a:blowfish.o(.rodata .rodata.*)
    *libcomponents.a:ssl_ticket.o(.rodata .rodata.*)
    *libcomponents.a:pkcs11.o(.rodata .rodata.*)
    *libcomponents.a:ecp_curves.o(.rodata .rodata.*)
    *libcomponents.a:havege.o(.rodata .rodata.*)
    *libcomponents.a:entropy_poll.o(.rodata .rodata.*)
    *libcomponents.a:nist_kw.o(.rodata .rodata.*)
    *libcomponents.a:dhm.o(.rodata .rodata.*)
    *libcomponents.a:memory_buffer_alloc.o(.rodata .rodata.*)
    *libcomponents.a:pk.o(.rodata .rodata.*)
    *libcomponents.a:cipher.o(.rodata .rodata.*)
    *libcomponents.a:x509write_csr.o(.rodata .rodata.*)
    *libcomponents.a:ssl_cache.o(.rodata .rodata.*)
    *libcomponents.a:timing.o(.rodata .rodata.*)
    *libcomponents.a:padlock.o(.rodata .rodata.*)
    *libcomponents.a:version.o(.rodata .rodata.*)
    *libcomponents.a:md_wrap.o(.rodata .rodata.*)
    *libcomponents.a:gcm.o(.rodata .rodata.*)
    *libcomponents.a:cmac.o(.rodata .rodata.*)
    *libcomponents.a:md.o(.rodata .rodata.*)
    *libcomponents.a:md2.o(.rodata .rodata.*)
    *libcomponents.a:chacha20.o(.rodata .rodata.*)
    *libcomponents.a:aria.o(.rodata .rodata.*)
    *libcomponents.a:debug.o(.rodata .rodata.*)
    *libcomponents.a:pkwrite.o(.rodata .rodata.*)
    *libcomponents.a:asn1parse.o(.rodata .rodata.*)
    *libcomponents.a:ecdh.o(.rodata .rodata.*)
    *libcomponents.a:ecjpake.o(.rodata .rodata.*)
    *libcomponents.a:sha256.o(.rodata .rodata.*)
    *libcomponents.a:x509_create.o(.rodata .rodata.*)
    *libcomponents.a:ssl_ciphersuites.o(.rodata .rodata.*)
    *libcomponents.a:xtea.o(.rodata .rodata.*)
    *libcomponents.a:asn1write.o(.rodata .rodata.*)
    *libcomponents.a:mbedtls_md5.o(.rodata .rodata.*)
    *libcomponents.a:base64.o(.rodata .rodata.*)
    *libcomponents.a:ecp.o(.rodata .rodata.*)
    *libcomponents.a:ssl_cli.o(.rodata .rodata.*)
    *libcomponents.a:arc4.o(.rodata .rodata.*)
    *libcomponents.a:ecdsa.o(.rodata .rodata.*)
    *libcomponents.a:oid.o(.rodata .rodata.*)
    *libcomponents.a:cipher_wrap.o(.rodata .rodata.*)
    *libcomponents.a:threading.o(.rodata .rodata.*)
    *libcomponents.a:camellia.o(.rodata .rodata.*)
    *libcomponents.a:hkdf.o(.rodata .rodata.*)
    *libcomponents.a:rsa_internal.o(.rodata .rodata.*)
    *libcomponents.a:certs.o(.rodata .rodata.*)
    *libcomponents.a:ssl_cookie.o(.rodata .rodata.*)
    *libcomponents.a:rsa.o(.rodata .rodata.*)
    *libcomponents.a:ccm.o(.rodata .rodata.*)
    *libcomponents.a:poly1305.o(.rodata .rodata.*)
    *libcomponents.a:aes.o(.rodata .rodata.*)
    *libcomponents.a:des.o(.rodata .rodata.*)
    *libcomponents.a:sha512.o(.rodata .rodata.*)
    *libcomponents.a:x509_crl.o(.rodata .rodata.*)
    *libcomponents.a:pem.o(.rodata .rodata.*)
    *libcomponents.a:platform.o(.rodata .rodata.*)
    *libcomponents.a:x509.o(.rodata .rodata.*)
    *libcomponents.a:hmac_drbg.o(.rodata .rodata.*)
    *libcomponents.a:pkparse.o(.rodata .rodata.*)
    *libcomponents.a:pkcs12.o(.rodata .rodata.*)
    *libcomponents.a:aesni.o(.rodata .rodata.*)
    *libcomponents.a:x509_crt.o(.rodata .rodata.*)
    *libcomponents.a:pkcs5.o(.rodata .rodata.*)
    *libcomponents.a:error.o(.rodata .rodata.*)
    *libcomponents.a:ripemd160.o(.rodata .rodata.*)
    *libcomponents.a:ctr_drbg.o(.rodata .rodata.*)
    *libcomponents.a:platform_util.o(.rodata .rodata.*)
    *libcomponents.a:entropy.o(.rodata .rodata.*)
    *libcomponents.a:pk_wrap.o(.rodata .rodata.*)
    *libcomponents.a:mbedtls_sha1.o(.rodata .rodata.*)
    *libcomponents.a:x509write_crt.o(.rodata .rodata.*)
    *libcomponents.a:ssl_srv.o(.rodata .rodata.*)
    *libcomponents.a:x509_csr.o(.rodata .rodata.*)
    *libcomponents.a:bignum.o(.rodata .rodata.*)
    *libcomponents.a:ssl_tls.o(.rodata .rodata.*)
    *libcomponents.a:mbedtls_memory.o(.rodata .rodata.*)
    *libcomponents.a:trs_hardware_entropy.o(.rodata .rodata.*)
    *libcomponents.a:trs_net_sockets.o(.rodata .rodata.*)
  } > v_memory

  .bss_libcomponents_mbedtls :
  {
    *libcomponents.a:md4.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:chachapoly.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:blowfish.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ssl_ticket.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:pkcs11.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ecp_curves.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:havege.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:entropy_poll.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:nist_kw.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:dhm.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:memory_buffer_alloc.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:pk.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cipher.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:x509write_csr.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ssl_cache.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:timing.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:padlock.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:version.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:md_wrap.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:gcm.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cmac.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:md.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:md2.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:chacha20.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:aria.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:debug.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:pkwrite.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:asn1parse.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ecdh.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ecjpake.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:sha256.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:x509_create.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ssl_ciphersuites.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:xtea.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:asn1write.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:mbedtls_md5.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:base64.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ecp.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ssl_cli.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:arc4.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ecdsa.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:oid.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:cipher_wrap.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:threading.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:camellia.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:hkdf.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:rsa_internal.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:certs.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ssl_cookie.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:rsa.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ccm.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:poly1305.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:aes.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:des.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:sha512.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:x509_crl.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:pem.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:platform.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:x509.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:hmac_drbg.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:pkparse.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:pkcs12.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:aesni.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:x509_crt.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:pkcs5.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:error.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ripemd160.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ctr_drbg.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:platform_util.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:entropy.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:pk_wrap.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:mbedtls_sha1.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:x509write_crt.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ssl_srv.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:x509_csr.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:bignum.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ssl_tls.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:mbedtls_memory.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:trs_hardware_entropy.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:trs_net_sockets.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libcomponents_mbedtls :
  {
    *libcomponents.a:md4.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:chachapoly.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:blowfish.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ssl_ticket.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:pkcs11.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ecp_curves.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:havege.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:entropy_poll.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:nist_kw.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:dhm.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:memory_buffer_alloc.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:pk.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cipher.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:x509write_csr.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ssl_cache.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:timing.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:padlock.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:version.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:md_wrap.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:gcm.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cmac.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:md.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:md2.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:chacha20.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:aria.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:debug.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:pkwrite.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:asn1parse.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ecdh.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ecjpake.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:sha256.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:x509_create.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ssl_ciphersuites.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:xtea.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:asn1write.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:mbedtls_md5.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:base64.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ecp.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ssl_cli.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:arc4.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ecdsa.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:oid.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:cipher_wrap.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:threading.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:camellia.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:hkdf.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:rsa_internal.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:certs.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ssl_cookie.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:rsa.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ccm.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:poly1305.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:aes.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:des.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:sha512.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:x509_crl.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:pem.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:platform.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:x509.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:hmac_drbg.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:pkparse.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:pkcs12.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:aesni.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:x509_crt.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:pkcs5.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:error.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ripemd160.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ctr_drbg.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:platform_util.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:entropy.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:pk_wrap.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:mbedtls_sha1.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:x509write_crt.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ssl_srv.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:x509_csr.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:bignum.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ssl_tls.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:mbedtls_memory.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:trs_hardware_entropy.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:trs_net_sockets.o(.sdata* .srodata* .data* .version_data)
  } > v_memory

  .text_libcomponents_mqtt :
  {
    *libcomponents.a:platform_tr6600.o(.text .text.*)
    *libcomponents.a:mqtt_outbox.o(.text .text.*)
    *libcomponents.a:transport.o(.text .text.*)
    *libcomponents.a:transport_tcp.o(.text .text.*)
    *libcomponents.a:mqtt_msg.o(.text .text.*)
    *libcomponents.a:transport_ssl.o(.text .text.*)
    *libcomponents.a:transport_ws.o(.text .text.*)
    *libcomponents.a:mqtt_test.o(.text .text.*)
    *libcomponents.a:mqtt_client.o(.text .text.*)
  } > v_memory

  .ro_libcomponents_mqtt :
  {
    *libcomponents.a:platform_tr6600.o(.rodata .rodata.*)
    *libcomponents.a:mqtt_outbox.o(.rodata .rodata.*)
    *libcomponents.a:transport.o(.rodata .rodata.*)
    *libcomponents.a:transport_tcp.o(.rodata .rodata.*)
    *libcomponents.a:mqtt_msg.o(.rodata .rodata.*)
    *libcomponents.a:transport_ssl.o(.rodata .rodata.*)
    *libcomponents.a:transport_ws.o(.rodata .rodata.*)
    *libcomponents.a:mqtt_test.o(.rodata .rodata.*)
    *libcomponents.a:mqtt_client.o(.rodata .rodata.*)
  } > v_memory

  .bss_libcomponents_mqtt :
  {
    *libcomponents.a:platform_tr6600.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:mqtt_outbox.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:transport.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:transport_tcp.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:mqtt_msg.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:transport_ssl.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:transport_ws.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:mqtt_test.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:mqtt_client.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libcomponents_mqtt :
  {
    *libcomponents.a:platform_tr6600.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:mqtt_outbox.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:transport.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:transport_tcp.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:mqtt_msg.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:transport_ssl.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:transport_ws.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:mqtt_test.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:mqtt_client.o(.sdata* .srodata* .data* .version_data)
  } > v_memory

  .text_libcomponents_nv :
  {
    *libcomponents.a:ef_iap.o(.text .text.*)
    *libcomponents.a:easyflash.o(.text .text.*)
    *libcomponents.a:ef_log.o(.text .text.*)
    *libcomponents.a:ef_utils.o(.text .text.*)
    *libcomponents.a:ef_env.o(.text .text.*)
    *libcomponents.a:ef_port.o(.text .text.*)
  } > v_memory

  .ro_libcomponents_nv :
  {
    *libcomponents.a:ef_iap.o(.rodata .rodata.*)
    *libcomponents.a:easyflash.o(.rodata .rodata.*)
    *libcomponents.a:ef_log.o(.rodata .rodata.*)
    *libcomponents.a:ef_utils.o(.rodata .rodata.*)
    *libcomponents.a:ef_env.o(.rodata .rodata.*)
    *libcomponents.a:ef_port.o(.rodata .rodata.*)
  } > v_memory

  .bss_libcomponents_nv :
  {
    *libcomponents.a:ef_iap.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:easyflash.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ef_log.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ef_utils.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ef_env.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ef_port.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libcomponents_nv :
  {
    *libcomponents.a:ef_iap.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:easyflash.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ef_log.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ef_utils.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ef_env.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ef_port.o(.sdata* .srodata* .data* .version_data)
  } > v_memory

  .text_libcomponents_ota :
  {
    *libcomponents.a:local_ota.o(.text .text.*)
    *libcomponents.a:http_ota.o(.text .text.*)
    *libcomponents.a:mqtt_ota.o(.text .text.*)
    *libcomponents.a:ota.o(.text .text.*)
  } > v_memory

  .ro_libcomponents_ota :
  {
    *libcomponents.a:local_ota.o(.rodata .rodata.*)
    *libcomponents.a:http_ota.o(.rodata .rodata.*)
    *libcomponents.a:mqtt_ota.o(.rodata .rodata.*)
    *libcomponents.a:ota.o(.rodata .rodata.*)
  } > v_memory

  .bss_libcomponents_ota :
  {
    *libcomponents.a:local_ota.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:http_ota.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:mqtt_ota.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ota.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libcomponents_ota :
  {
    *libcomponents.a:local_ota.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:http_ota.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:mqtt_ota.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ota.o(.sdata* .srodata* .data* .version_data)
  } > v_memory

  .text_libcomponents_platform_api :
  {
    *libcomponents.a:format_conversion.o(.text .text.*)
    *libcomponents.a:system_config.o(.text .text.*)
  } > v_memory

  .ro_libcomponents_platform_api :
  {
    *libcomponents.a:format_conversion.o(.rodata .rodata.*)
    *libcomponents.a:system_config.o(.rodata .rodata.*)
  } > v_memory

  .bss_libcomponents_platform_api :
  {
    *libcomponents.a:format_conversion.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:system_config.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libcomponents_platform_api :
  {
    *libcomponents.a:format_conversion.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:system_config.o(.sdata* .srodata* .data* .version_data)
  } > v_memory

  .text_libcomponents_pthread :
  {
    *libcomponents.a:pthread_local_storage.o(.text .text.*)
  } > v_memory

  .ro_libcomponents_pthread :
  {
    *libcomponents.a:pthread_local_storage.o(.rodata .rodata.*)
  } > v_memory

  .bss_libcomponents_pthread :
  {
    *libcomponents.a:pthread_local_storage.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libcomponents_pthread :
  {
    *libcomponents.a:pthread_local_storage.o(.sdata* .srodata* .data* .version_data)
  } > v_memory

  .text_libcomponents_smartconfig :
  {
    *libcomponents.a:smartconfig_notify.o(.text .text.*)
    *libcomponents.a:awss_aplist.o(.text .text.*)
    *libcomponents.a:zconfig_utils.o(.text .text.*)
    *libcomponents.a:zconfig_ieee80211.o(.text .text.*)
    *libcomponents.a:smartconfig.o(.text .text.*)
  } > v_memory

  .ro_libcomponents_smartconfig :
  {
    *libcomponents.a:smartconfig_notify.o(.rodata .rodata.*)
    *libcomponents.a:awss_aplist.o(.rodata .rodata.*)
    *libcomponents.a:zconfig_utils.o(.rodata .rodata.*)
    *libcomponents.a:zconfig_ieee80211.o(.rodata .rodata.*)
    *libcomponents.a:smartconfig.o(.rodata .rodata.*)
  } > v_memory

  .bss_libcomponents_smartconfig :
  {
    *libcomponents.a:smartconfig_notify.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:awss_aplist.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:zconfig_utils.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:zconfig_ieee80211.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:smartconfig.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libcomponents_smartconfig :
  {
    *libcomponents.a:smartconfig_notify.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:awss_aplist.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:zconfig_utils.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:zconfig_ieee80211.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:smartconfig.o(.sdata* .srodata* .data* .version_data)
  } > v_memory

  .text_libcomponents_sntp :
  {
    *libcomponents.a:sntp_tr.o(.text .text.*)
  } > v_memory

  .ro_libcomponents_sntp :
  {
    *libcomponents.a:sntp_tr.o(.rodata .rodata.*)
  } > v_memory

  .bss_libcomponents_sntp :
  {
    *libcomponents.a:sntp_tr.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libcomponents_sntp :
  {
    *libcomponents.a:sntp_tr.o(.sdata* .srodata* .data* .version_data)
  } > v_memory

  .text_libcomponents_telnet :
  {
    *libcomponents.a:telnet.o(.text .text.*)
  } > v_memory

  .ro_libcomponents_telnet :
  {
    *libcomponents.a:telnet.o(.rodata .rodata.*)
  } > v_memory

  .bss_libcomponents_telnet :
  {
    *libcomponents.a:telnet.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libcomponents_telnet :
  {
    *libcomponents.a:telnet.o(.sdata* .srodata* .data* .version_data)
  } > v_memory

  .text_libcomponents_trs-tls :
  {
    *libcomponents.a:trs_tls.o(.text .text.*)
  } > v_memory

  .ro_libcomponents_trs-tls :
  {
    *libcomponents.a:trs_tls.o(.rodata .rodata.*)
  } > v_memory

  .bss_libcomponents_trs-tls :
  {
    *libcomponents.a:trs_tls.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libcomponents_trs-tls :
  {
    *libcomponents.a:trs_tls.o(.sdata* .srodata* .data* .version_data)
  } > v_memory

  .text_libcomponents_url_parser :
  {
    *libcomponents.a:url_parser.o(.text .text.*)
  } > v_memory

  .ro_libcomponents_url_parser :
  {
    *libcomponents.a:url_parser.o(.rodata .rodata.*)
  } > v_memory

  .bss_libcomponents_url_parser :
  {
    *libcomponents.a:url_parser.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libcomponents_url_parser :
  {
    *libcomponents.a:url_parser.o(.sdata* .srodata* .data* .version_data)
  } > v_memory

  .text_libcomponents_wifi_ctrl :
  {
    *libcomponents.a:wifi_sniffer.o(.text .text.*)
    *libcomponents.a:wifi_config.o(.text .text.*)
    *libcomponents.a:event_default_handlers.o(.text .text.*)
    *libcomponents.a:event_loop.o(.text .text.*)
    *libcomponents.a:wifi_conn.o(.text .text.*)
    *libcomponents.a:system_lwip.o(.text .text.*)
    *libcomponents.a:system_network.o(.text .text.*)
    *libcomponents.a:system_wifi.o(.text .text.*)
  } > v_memory

  .ro_libcomponents_wifi_ctrl :
  {
    *libcomponents.a:wifi_sniffer.o(.rodata .rodata.*)
    *libcomponents.a:wifi_config.o(.rodata .rodata.*)
    *libcomponents.a:event_default_handlers.o(.rodata .rodata.*)
    *libcomponents.a:event_loop.o(.rodata .rodata.*)
    *libcomponents.a:wifi_conn.o(.rodata .rodata.*)
    *libcomponents.a:system_lwip.o(.rodata .rodata.*)
    *libcomponents.a:system_network.o(.rodata .rodata.*)
    *libcomponents.a:system_wifi.o(.rodata .rodata.*)
  } > v_memory

  .bss_libcomponents_wifi_ctrl :
  {
    *libcomponents.a:wifi_sniffer.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:wifi_config.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:event_default_handlers.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:event_loop.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:wifi_conn.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:system_lwip.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:system_network.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:system_wifi.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libcomponents_wifi_ctrl :
  {
    *libcomponents.a:wifi_sniffer.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:wifi_config.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:event_default_handlers.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:event_loop.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:wifi_conn.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:system_lwip.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:system_network.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:system_wifi.o(.sdata* .srodata* .data* .version_data)
  } > v_memory

  .text_libcomponents_wpa :
  {
    *libcomponents.a:wpas_pmk.o(.text .text.*)
    *libcomponents.a:notify.o(.text .text.*)
    *libcomponents.a:bss.o(.text .text.*)
    *libcomponents.a:config.o(.text .text.*)
    *libcomponents.a:ap.o(.text .text.*)
    *libcomponents.a:ctrl_iface_freeRTOS.o(.text .text.*)
    *libcomponents.a:wpas_glue.o(.text .text.*)
    *libcomponents.a:ctrl_iface.o(.text .text.*)
    *libcomponents.a:scan.o(.text .text.*)
    *libcomponents.a:events.o(.text .text.*)
    *libcomponents.a:sme.o(.text .text.*)
    *libcomponents.a:wpa_supplicant.o(.text .text.*)
    *libcomponents.a:wpa_debug.o(.text .text.*)
    *libcomponents.a:wpabuf.o(.text .text.*)
    *libcomponents.a:os_freeRTOS.o(.text .text.*)
    *libcomponents.a:eloop_freeRTOS.o(.text .text.*)
    *libcomponents.a:common.o(.text .text.*)
    *libcomponents.a:main_rwnx.o(.text .text.*)
    *libcomponents.a:sae.o(.text .text.*)
    *libcomponents.a:wpa_common.o(.text .text.*)
    *libcomponents.a:hw_features_common.o(.text .text.*)
    *libcomponents.a:ieee802_11_common.o(.text .text.*)
    *libcomponents.a:crypto_mbedtls-bignum.o(.text .text.*)
    *libcomponents.a:sha256-wpa.o(.text .text.*)
    *libcomponents.a:sha256-prf.o(.text .text.*)
    *libcomponents.a:sha256-internal.o(.text .text.*)
    *libcomponents.a:aes-ccm.o(.text .text.*)
    *libcomponents.a:crypto_mbedtls-ec.o(.text .text.*)
    *libcomponents.a:aes-unwrap.o(.text .text.*)
    *libcomponents.a:aes-internal.o(.text .text.*)
    *libcomponents.a:aes-omac1.o(.text .text.*)
    *libcomponents.a:aes-wrap.o(.text .text.*)
    *libcomponents.a:aes-internal-dec.o(.text .text.*)
    *libcomponents.a:md5.o(.text .text.*)
    *libcomponents.a:dh_group5.o(.text .text.*)
    *libcomponents.a:dh_groups.o(.text .text.*)
    *libcomponents.a:rc4.o(.text .text.*)
    *libcomponents.a:aes-internal-enc.o(.text .text.*)
    *libcomponents.a:sha1.o(.text .text.*)
    *libcomponents.a:md5-internal.o(.text .text.*)
    *libcomponents.a:sha1-prf.o(.text .text.*)
    *libcomponents.a:sha1-pbkdf2.o(.text .text.*)
    *libcomponents.a:sha1-internal.o(.text .text.*)
    *libcomponents.a:wpa_ie.o(.text .text.*)
    *libcomponents.a:wpa.o(.text .text.*)
    *libcomponents.a:l2_packet_rwnx.o(.text .text.*)
    *libcomponents.a:wmm.o(.text .text.*)
    *libcomponents.a:ap_mlme.o(.text .text.*)
    *libcomponents.a:wpa_auth_glue.o(.text .text.*)
    *libcomponents.a:drv_callbacks.o(.text .text.*)
    *libcomponents.a:ieee802_11_shared.o(.text .text.*)
    *libcomponents.a:ap_config.o(.text .text.*)
    *libcomponents.a:tkip_countermeasures.o(.text .text.*)
    *libcomponents.a:ieee802_11_he.o(.text .text.*)
    *libcomponents.a:sta_info.o(.text .text.*)
    *libcomponents.a:ieee802_11_ht.o(.text .text.*)
    *libcomponents.a:beacon.o(.text .text.*)
    *libcomponents.a:ap_drv_ops.o(.text .text.*)
    *libcomponents.a:ctrl_iface_ap.o(.text .text.*)
    *libcomponents.a:hostapd.o(.text .text.*)
    *libcomponents.a:wpa_auth_ie.o(.text .text.*)
    *libcomponents.a:hw_features.o(.text .text.*)
    *libcomponents.a:ieee802_11.o(.text .text.*)
    *libcomponents.a:wpa_auth.o(.text .text.*)
    *libcomponents.a:driver_common.o(.text .text.*)
    *libcomponents.a:drivers.o(.text .text.*)
    *libcomponents.a:stub.o(.text .text.*)
  } > v_memory

  .ro_libcomponents_wpa :
  {
    *libcomponents.a:wpas_pmk.o(.rodata .rodata.*)
    *libcomponents.a:notify.o(.rodata .rodata.*)
    *libcomponents.a:bss.o(.rodata .rodata.*)
    *libcomponents.a:config.o(.rodata .rodata.*)
    *libcomponents.a:ap.o(.rodata .rodata.*)
    *libcomponents.a:ctrl_iface_freeRTOS.o(.rodata .rodata.*)
    *libcomponents.a:wpas_glue.o(.rodata .rodata.*)
    *libcomponents.a:ctrl_iface.o(.rodata .rodata.*)
    *libcomponents.a:scan.o(.rodata .rodata.*)
    *libcomponents.a:events.o(.rodata .rodata.*)
    *libcomponents.a:sme.o(.rodata .rodata.*)
    *libcomponents.a:wpa_supplicant.o(.rodata .rodata.*)
    *libcomponents.a:wpa_debug.o(.rodata .rodata.*)
    *libcomponents.a:wpabuf.o(.rodata .rodata.*)
    *libcomponents.a:os_freeRTOS.o(.rodata .rodata.*)
    *libcomponents.a:eloop_freeRTOS.o(.rodata .rodata.*)
    *libcomponents.a:common.o(.rodata .rodata.*)
    *libcomponents.a:main_rwnx.o(.rodata .rodata.*)
    *libcomponents.a:sae.o(.rodata .rodata.*)
    *libcomponents.a:wpa_common.o(.rodata .rodata.*)
    *libcomponents.a:hw_features_common.o(.rodata .rodata.*)
    *libcomponents.a:ieee802_11_common.o(.rodata .rodata.*)
    *libcomponents.a:crypto_mbedtls-bignum.o(.rodata .rodata.*)
    *libcomponents.a:sha256-wpa.o(.rodata .rodata.*)
    *libcomponents.a:sha256-prf.o(.rodata .rodata.*)
    *libcomponents.a:sha256-internal.o(.rodata .rodata.*)
    *libcomponents.a:aes-ccm.o(.rodata .rodata.*)
    *libcomponents.a:crypto_mbedtls-ec.o(.rodata .rodata.*)
    *libcomponents.a:aes-unwrap.o(.rodata .rodata.*)
    *libcomponents.a:aes-internal.o(.rodata .rodata.*)
    *libcomponents.a:aes-omac1.o(.rodata .rodata.*)
    *libcomponents.a:aes-wrap.o(.rodata .rodata.*)
    *libcomponents.a:aes-internal-dec.o(.rodata .rodata.*)
    *libcomponents.a:md5.o(.rodata .rodata.*)
    *libcomponents.a:dh_group5.o(.rodata .rodata.*)
    *libcomponents.a:dh_groups.o(.rodata .rodata.*)
    *libcomponents.a:rc4.o(.rodata .rodata.*)
    *libcomponents.a:aes-internal-enc.o(.rodata .rodata.*)
    *libcomponents.a:sha1.o(.rodata .rodata.*)
    *libcomponents.a:md5-internal.o(.rodata .rodata.*)
    *libcomponents.a:sha1-prf.o(.rodata .rodata.*)
    *libcomponents.a:sha1-pbkdf2.o(.rodata .rodata.*)
    *libcomponents.a:sha1-internal.o(.rodata .rodata.*)
    *libcomponents.a:wpa_ie.o(.rodata .rodata.*)
    *libcomponents.a:wpa.o(.rodata .rodata.*)
    *libcomponents.a:l2_packet_rwnx.o(.rodata .rodata.*)
    *libcomponents.a:wmm.o(.rodata .rodata.*)
    *libcomponents.a:ap_mlme.o(.rodata .rodata.*)
    *libcomponents.a:wpa_auth_glue.o(.rodata .rodata.*)
    *libcomponents.a:drv_callbacks.o(.rodata .rodata.*)
    *libcomponents.a:ieee802_11_shared.o(.rodata .rodata.*)
    *libcomponents.a:ap_config.o(.rodata .rodata.*)
    *libcomponents.a:tkip_countermeasures.o(.rodata .rodata.*)
    *libcomponents.a:ieee802_11_he.o(.rodata .rodata.*)
    *libcomponents.a:sta_info.o(.rodata .rodata.*)
    *libcomponents.a:ieee802_11_ht.o(.rodata .rodata.*)
    *libcomponents.a:beacon.o(.rodata .rodata.*)
    *libcomponents.a:ap_drv_ops.o(.rodata .rodata.*)
    *libcomponents.a:ctrl_iface_ap.o(.rodata .rodata.*)
    *libcomponents.a:hostapd.o(.rodata .rodata.*)
    *libcomponents.a:wpa_auth_ie.o(.rodata .rodata.*)
    *libcomponents.a:hw_features.o(.rodata .rodata.*)
    *libcomponents.a:ieee802_11.o(.rodata .rodata.*)
    *libcomponents.a:wpa_auth.o(.rodata .rodata.*)
    *libcomponents.a:driver_common.o(.rodata .rodata.*)
    *libcomponents.a:drivers.o(.rodata .rodata.*)
    *libcomponents.a:stub.o(.rodata .rodata.*)
  } > v_memory

  .bss_libcomponents_wpa :
  {
    *libcomponents.a:wpas_pmk.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:notify.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:bss.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:config.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ap.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ctrl_iface_freeRTOS.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:wpas_glue.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ctrl_iface.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:scan.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:events.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:sme.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:wpa_supplicant.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:wpa_debug.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:wpabuf.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:os_freeRTOS.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:eloop_freeRTOS.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:common.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:main_rwnx.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:sae.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:wpa_common.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:hw_features_common.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ieee802_11_common.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:crypto_mbedtls-bignum.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:sha256-wpa.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:sha256-prf.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:sha256-internal.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:aes-ccm.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:crypto_mbedtls-ec.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:aes-unwrap.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:aes-internal.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:aes-omac1.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:aes-wrap.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:aes-internal-dec.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:md5.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:dh_group5.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:dh_groups.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:rc4.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:aes-internal-enc.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:sha1.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:md5-internal.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:sha1-prf.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:sha1-pbkdf2.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:sha1-internal.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:wpa_ie.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:wpa.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:l2_packet_rwnx.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:wmm.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ap_mlme.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:wpa_auth_glue.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:drv_callbacks.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ieee802_11_shared.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ap_config.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:tkip_countermeasures.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ieee802_11_he.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:sta_info.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ieee802_11_ht.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:beacon.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ap_drv_ops.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ctrl_iface_ap.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:hostapd.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:wpa_auth_ie.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:hw_features.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:ieee802_11.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:wpa_auth.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:driver_common.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:drivers.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
    *libcomponents.a:stub.o(.sbss_w .sbss_w.* .bss* COMMON .scommon_*)
  } > v_memory

  .data_libcomponents_wpa :
  {
    *libcomponents.a:wpas_pmk.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:notify.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:bss.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:config.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ap.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ctrl_iface_freeRTOS.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:wpas_glue.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ctrl_iface.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:scan.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:events.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:sme.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:wpa_supplicant.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:wpa_debug.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:wpabuf.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:os_freeRTOS.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:eloop_freeRTOS.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:common.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:main_rwnx.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:sae.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:wpa_common.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:hw_features_common.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ieee802_11_common.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:crypto_mbedtls-bignum.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:sha256-wpa.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:sha256-prf.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:sha256-internal.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:aes-ccm.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:crypto_mbedtls-ec.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:aes-unwrap.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:aes-internal.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:aes-omac1.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:aes-wrap.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:aes-internal-dec.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:md5.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:dh_group5.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:dh_groups.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:rc4.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:aes-internal-enc.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:sha1.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:md5-internal.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:sha1-prf.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:sha1-pbkdf2.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:sha1-internal.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:wpa_ie.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:wpa.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:l2_packet_rwnx.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:wmm.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ap_mlme.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:wpa_auth_glue.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:drv_callbacks.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ieee802_11_shared.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ap_config.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:tkip_countermeasures.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ieee802_11_he.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:sta_info.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ieee802_11_ht.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:beacon.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ap_drv_ops.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ctrl_iface_ap.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:hostapd.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:wpa_auth_ie.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:hw_features.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:ieee802_11.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:wpa_auth.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:driver_common.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:drivers.o(.sdata* .srodata* .data* .version_data)
    *libcomponents.a:stub.o(.sdata* .srodata* .data* .version_data)
  } > v_memory
