connect -url tcp:127.0.0.1:3121
source U:/Desktop/MP-2/hw/project_1/project_1.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Platform Cable USB II 000018cd2f6f01"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB II 000018cd2f6f01"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB II 000018cd2f6f01"} -index 0
dow U:/Desktop/MP-2/hw/project_1/project_1.sdk/MP2-TPG/Debug/MP2-TPG.elf
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB II 000018cd2f6f01"} -index 0
con
