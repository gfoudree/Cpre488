connect -url tcp:127.0.0.1:3121
source C:/Cpre488/MP-4/MP-4.sdk/MP4_design1_wrapper_hw_platform_2/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Platform Cable USB II 000013ccd9f801"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB II 000013ccd9f801"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB II 000013ccd9f801"} -index 0
dow C:/Cpre488/MP-4/MP-4.sdk/p7_request_GPS/Debug/p7_request_GPS.elf
bpadd -addr &main
