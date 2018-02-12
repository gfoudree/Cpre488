vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/axi_infrastructure_v1_1_0
vlib msim/xil_common_vip_v1_0_0
vlib msim/smartconnect_v1_0
vlib msim/axi_protocol_checker_v1_1_13
vlib msim/axi_vip_v1_0_1
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_10
vlib msim/generic_baseblocks_v2_1_0
vlib msim/fifo_generator_v13_1_4
vlib msim/axi_data_fifo_v2_1_11
vlib msim/axi_register_slice_v2_1_12
vlib msim/axi_protocol_converter_v2_1_12

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap xil_common_vip_v1_0_0 msim/xil_common_vip_v1_0_0
vmap smartconnect_v1_0 msim/smartconnect_v1_0
vmap axi_protocol_checker_v1_1_13 msim/axi_protocol_checker_v1_1_13
vmap axi_vip_v1_0_1 msim/axi_vip_v1_0_1
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_10 msim/proc_sys_reset_v5_0_10
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_1_4 msim/fifo_generator_v13_1_4
vmap axi_data_fifo_v2_1_11 msim/axi_data_fifo_v2_1_11
vmap axi_register_slice_v2_1_12 msim/axi_register_slice_v2_1_12
vmap axi_protocol_converter_v2_1_12 msim/axi_protocol_converter_v2_1_12

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_13 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_1 "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" \
"C:/Xilinx/SDx/2017.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/SDx/2017.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" \
"../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_common_vip_v1_0_0 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_13 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_1 "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" \
"../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl/xil_common_vip_v1_0_vl_rfs.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_13 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_1 "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" \
"../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v1_1_13 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_13 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_1 "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" \
"../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/abae/hdl/axi_protocol_checker_v1_1_vl_rfs.sv" \

vlog -work axi_vip_v1_0_1 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_13 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_1 "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" \
"../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl/axi_vip_v1_0_vl_rfs.sv" \
"../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" \
"../../../bd/MP_1_Design_1/ip/MP_1_Design_1_processing_system7_0_0/sim/MP_1_Design_1_processing_system7_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/MP_1_Design_1/ipshared/4d36/hdl/axi_ppm_v1_0_S00_AXI.vhd" \
"../../../bd/MP_1_Design_1/ipshared/4d36/src/ppm_capture.vhd" \
"../../../bd/MP_1_Design_1/CPRE_488_MP-1/ppm_generation.vhd" \
"../../../bd/MP_1_Design_1/ipshared/4d36/hdl/axi_ppm_v1_0.vhd" \
"../../../bd/MP_1_Design_1/ip/MP_1_Design_1_axi_ppm_0_0/sim/MP_1_Design_1_axi_ppm_0_0.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_10 -64 -93 \
"../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/MP_1_Design_1/ip/MP_1_Design_1_rst_ps7_0_100M_0/sim/MP_1_Design_1_rst_ps7_0_100M_0.vhd" \
"../../../bd/MP_1_Design_1/hdl/MP_1_Design_1.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" \
"../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/f9c1/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_4 -64 "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" \
"../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/ebc2/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_4 -64 -93 \
"../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_4 -64 "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" \
"../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_11 -64 "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" \
"../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/5235/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_12 -64 "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" \
"../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/0e33/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_12 -64 "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" \
"../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/138d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/7cd5/hdl" "+incdir+../../../../MP-1.srcs/sources_1/bd/MP_1_Design_1/ipshared/d5eb/hdl" \
"../../../bd/MP_1_Design_1/ip/MP_1_Design_1_auto_pc_0/sim/MP_1_Design_1_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

