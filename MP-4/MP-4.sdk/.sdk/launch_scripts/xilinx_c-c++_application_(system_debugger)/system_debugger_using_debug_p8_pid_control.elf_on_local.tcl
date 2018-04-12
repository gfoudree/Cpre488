connect -url tcp:127.0.0.1:3121
source U:/Desktop/Cpre488/MP-4/MP-4.sdk/MP4_design1_wrapper_hw_platform_2/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Platform Cable USB II 000018cd4b8001"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB II 000018cd4b8001"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB II 000018cd4b8001"} -index 0
dow U:/Desktop/Cpre488/MP-4/MP-4.sdk/p8_PID_control/Debug/p8_PID_control.elf
bpadd -addr &main
