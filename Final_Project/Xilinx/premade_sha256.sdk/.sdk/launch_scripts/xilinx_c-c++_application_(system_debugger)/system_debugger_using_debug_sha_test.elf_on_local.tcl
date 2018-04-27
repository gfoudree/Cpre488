connect -url tcp:127.0.0.1:3121
source U:/Desktop/MP-4/Cpre488/Final_Project/Xilinx/premade_sha256.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
dow U:/Desktop/MP-4/Cpre488/Final_Project/Xilinx/premade_sha256.sdk/sha_test/Debug/sha_test.elf
bpadd -addr &main
