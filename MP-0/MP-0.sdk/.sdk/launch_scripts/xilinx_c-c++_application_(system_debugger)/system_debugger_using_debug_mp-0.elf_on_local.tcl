connect -url tcp:127.0.0.1:3121
source U:/CPR_E_488/MP-0/MP-0.sdk/MP0_design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Platform Cable USB II 000018cd4b8001"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB II 000018cd4b8001"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB II 000018cd4b8001"} -index 0
dow U:/CPR_E_488/MP-0/MP-0.sdk/MP-0/Debug/MP-0.elf
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB II 000018cd4b8001"} -index 0
con
