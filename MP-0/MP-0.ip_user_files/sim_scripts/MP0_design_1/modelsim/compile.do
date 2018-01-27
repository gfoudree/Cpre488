vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/axi_infrastructure_v1_1_0
vlib msim/xil_common_vip_v1_0_0
vlib msim/smartconnect_v1_0
vlib msim/axi_protocol_checker_v1_1_13
vlib msim/axi_vip_v1_0_1
vlib msim/axi_lite_ipif_v3_0_4
vlib msim/lib_cdc_v1_0_2
vlib msim/interrupt_control_v3_1_4
vlib msim/axi_gpio_v2_0_14
vlib msim/proc_sys_reset_v5_0_11
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_register_slice_v2_1_12
vlib msim/fifo_generator_v13_1_4
vlib msim/axi_data_fifo_v2_1_11
vlib msim/axi_crossbar_v2_1_13
vlib msim/lib_pkg_v1_0_2
vlib msim/lib_fifo_v1_0_8
vlib msim/blk_mem_gen_v8_3_6
vlib msim/lib_bmg_v1_0_8
vlib msim/lib_srl_fifo_v1_0_2
vlib msim/axi_datamover_v5_1_14
vlib msim/axi_vdma_v6_3_0
vlib msim/v_tc_v6_1_10
vlib msim/v_vid_in_axi4s_v4_0_6
vlib msim/v_axi4s_vid_out_v4_0_6
vlib msim/axi_protocol_converter_v2_1_12
vlib msim/axi_clock_converter_v2_1_11
vlib msim/axi_dwidth_converter_v2_1_12

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap xil_common_vip_v1_0_0 msim/xil_common_vip_v1_0_0
vmap smartconnect_v1_0 msim/smartconnect_v1_0
vmap axi_protocol_checker_v1_1_13 msim/axi_protocol_checker_v1_1_13
vmap axi_vip_v1_0_1 msim/axi_vip_v1_0_1
vmap axi_lite_ipif_v3_0_4 msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_14 msim/axi_gpio_v2_0_14
vmap proc_sys_reset_v5_0_11 msim/proc_sys_reset_v5_0_11
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_12 msim/axi_register_slice_v2_1_12
vmap fifo_generator_v13_1_4 msim/fifo_generator_v13_1_4
vmap axi_data_fifo_v2_1_11 msim/axi_data_fifo_v2_1_11
vmap axi_crossbar_v2_1_13 msim/axi_crossbar_v2_1_13
vmap lib_pkg_v1_0_2 msim/lib_pkg_v1_0_2
vmap lib_fifo_v1_0_8 msim/lib_fifo_v1_0_8
vmap blk_mem_gen_v8_3_6 msim/blk_mem_gen_v8_3_6
vmap lib_bmg_v1_0_8 msim/lib_bmg_v1_0_8
vmap lib_srl_fifo_v1_0_2 msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_14 msim/axi_datamover_v5_1_14
vmap axi_vdma_v6_3_0 msim/axi_vdma_v6_3_0
vmap v_tc_v6_1_10 msim/v_tc_v6_1_10
vmap v_vid_in_axi4s_v4_0_6 msim/v_vid_in_axi4s_v4_0_6
vmap v_axi4s_vid_out_v4_0_6 msim/v_axi4s_vid_out_v4_0_6
vmap axi_protocol_converter_v2_1_12 msim/axi_protocol_converter_v2_1_12
vmap axi_clock_converter_v2_1_11 msim/axi_clock_converter_v2_1_11
vmap axi_dwidth_converter_v2_1_12 msim/axi_dwidth_converter_v2_1_12

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_13 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_1 "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"C:/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_common_vip_v1_0_0 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_13 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_1 "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl/xil_common_vip_v1_0_vl_rfs.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_13 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_1 "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v1_1_13 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_13 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_1 "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/8017/hdl/axi_protocol_checker_v1_1_vl_rfs.sv" \

vlog -work axi_vip_v1_0_1 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_13 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_1 "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl/axi_vip_v1_0_vl_rfs.sv" \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"../../../bd/MP0_design_1/ip/MP0_design_1_processing_system7_0_0/sim/MP0_design_1_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/e956/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_14 -64 -93 \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/3b45/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/MP0_design_1/ip/MP0_design_1_axi_gpio_0_0/sim/MP0_design_1_axi_gpio_0_0.vhd" \
"../../../bd/MP0_design_1/ip/MP0_design_1_axi_gpio_1_0/sim/MP0_design_1_axi_gpio_1_0.vhd" \
"../../../bd/MP0_design_1/ip/MP0_design_1_axi_gpio_2_0/sim/MP0_design_1_axi_gpio_2_0.vhd" \

vcom -work proc_sys_reset_v5_0_11 -64 -93 \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/MP0_design_1/ip/MP0_design_1_rst_ps7_0_100M_1/sim/MP0_design_1_rst_ps7_0_100M_1.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/f9c1/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_12 -64 -incr "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/0e33/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_4 -64 -incr "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/ebc2/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_4 -64 -93 \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_4 -64 -incr "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_11 -64 -incr "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/5235/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_13 -64 -incr "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/78eb/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"../../../bd/MP0_design_1/ip/MP0_design_1_xbar_0/sim/MP0_design_1_xbar_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/MP0_design_1/hdl/MP0_design_1.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_8 -64 -93 \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/c387/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_3_6 -64 -incr "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/4158/simulation/blk_mem_gen_v8_3.v" \

vcom -work lib_bmg_v1_0_8 -64 -93 \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/0dfc/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_14 -64 -93 \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/9afd/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_0 -64 -incr "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_0 -64 -93 \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/MP0_design_1/ip/MP0_design_1_axi_vdma_0_0/sim/MP0_design_1_axi_vdma_0_0.vhd" \

vcom -work v_tc_v6_1_10 -64 -93 \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d9f8/hdl/v_tc_v6_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/MP0_design_1/ip/MP0_design_1_v_tc_0_0/sim/MP0_design_1_v_tc_0_0.vhd" \

vlog -work v_vid_in_axi4s_v4_0_6 -64 -incr "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/00c5/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_6 -64 -incr "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/6e4e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"../../../bd/MP0_design_1/ip/MP0_design_1_v_axi4s_vid_out_0_0/sim/MP0_design_1_v_axi4s_vid_out_0_0.v" \

vlog -work axi_protocol_converter_v2_1_12 -64 -incr "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/138d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"../../../bd/MP0_design_1/ip/MP0_design_1_auto_pc_5/sim/MP0_design_1_auto_pc_5.v" \

vlog -work axi_clock_converter_v2_1_11 -64 -incr "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/c526/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_12 -64 -incr "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/fef9/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/7e3a/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/2ad9/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/856d/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/d5eb/hdl" "+incdir+../../../../MP-0.srcs/sources_1/bd/MP0_design_1/ipshared/47ae/hdl" \
"../../../bd/MP0_design_1/ip/MP0_design_1_auto_ds_4/sim/MP0_design_1_auto_ds_4.v" \
"../../../bd/MP0_design_1/ip/MP0_design_1_auto_pc_4/sim/MP0_design_1_auto_pc_4.v" \
"../../../bd/MP0_design_1/ip/MP0_design_1_auto_ds_3/sim/MP0_design_1_auto_ds_3.v" \
"../../../bd/MP0_design_1/ip/MP0_design_1_auto_pc_3/sim/MP0_design_1_auto_pc_3.v" \
"../../../bd/MP0_design_1/ip/MP0_design_1_auto_ds_2/sim/MP0_design_1_auto_ds_2.v" \
"../../../bd/MP0_design_1/ip/MP0_design_1_auto_pc_2/sim/MP0_design_1_auto_pc_2.v" \
"../../../bd/MP0_design_1/ip/MP0_design_1_auto_ds_1/sim/MP0_design_1_auto_ds_1.v" \
"../../../bd/MP0_design_1/ip/MP0_design_1_auto_pc_1/sim/MP0_design_1_auto_pc_1.v" \
"../../../bd/MP0_design_1/ip/MP0_design_1_auto_ds_0/sim/MP0_design_1_auto_ds_0.v" \
"../../../bd/MP0_design_1/ip/MP0_design_1_auto_pc_0/sim/MP0_design_1_auto_pc_0.v" \
"../../../bd/MP0_design_1/ip/MP0_design_1_auto_pc_6/sim/MP0_design_1_auto_pc_6.v" \
"../../../bd/MP0_design_1/ip/MP0_design_1_auto_us_0/sim/MP0_design_1_auto_us_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

