-makelib ies/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "C:/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/axi_infrastructure_v1_1_0 \
  "../../../../MP-4.srcs/sources_1/bd/MP4_design1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies/xil_common_vip_v1_0_0 -sv \
  "../../../../MP-4.srcs/sources_1/bd/MP4_design1/ipshared/2ad9/hdl/xil_common_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies/smartconnect_v1_0 -sv \
  "../../../../MP-4.srcs/sources_1/bd/MP4_design1/ipshared/16a2/hdl/sc_util_v1_0_vl_rfs.sv" \
-endlib
-makelib ies/axi_protocol_checker_v1_1_13 -sv \
  "../../../../MP-4.srcs/sources_1/bd/MP4_design1/ipshared/8017/hdl/axi_protocol_checker_v1_1_vl_rfs.sv" \
-endlib
-makelib ies/axi_vip_v1_0_1 -sv \
  "../../../../MP-4.srcs/sources_1/bd/MP4_design1/ipshared/856d/hdl/axi_vip_v1_0_vl_rfs.sv" \
  "../../../../MP-4.srcs/sources_1/bd/MP4_design1/ipshared/d5eb/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/MP4_design1/ip/MP4_design1_processing_system7_0_0/sim/MP4_design1_processing_system7_0_0.v" \
-endlib
-makelib ies/axi_lite_ipif_v3_0_4 \
  "../../../../MP-4.srcs/sources_1/bd/MP4_design1/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies/lib_cdc_v1_0_2 \
  "../../../../MP-4.srcs/sources_1/bd/MP4_design1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies/interrupt_control_v3_1_4 \
  "../../../../MP-4.srcs/sources_1/bd/MP4_design1/ipshared/e956/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies/axi_gpio_v2_0_14 \
  "../../../../MP-4.srcs/sources_1/bd/MP4_design1/ipshared/3b45/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/MP4_design1/ip/MP4_design1_axi_gpio_0_1/sim/MP4_design1_axi_gpio_0_1.vhd" \
  "../../../bd/MP4_design1/ip/MP4_design1_axi_gpio_1_1/sim/MP4_design1_axi_gpio_1_1.vhd" \
-endlib
-makelib ies/blk_mem_gen_v8_3_6 \
  "../../../../MP-4.srcs/sources_1/bd/MP4_design1/ipshared/4158/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib ies/axi_bram_ctrl_v4_0_11 \
  "../../../../MP-4.srcs/sources_1/bd/MP4_design1/ipshared/9183/hdl/axi_bram_ctrl_v4_0_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/MP4_design1/ip/MP4_design1_axi_bram_ctrl_0_1/sim/MP4_design1_axi_bram_ctrl_0_1.vhd" \
-endlib
-makelib ies/proc_sys_reset_v5_0_11 \
  "../../../../MP-4.srcs/sources_1/bd/MP4_design1/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/MP4_design1/ip/MP4_design1_rst_ps7_0_100M_2/sim/MP4_design1_rst_ps7_0_100M_2.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/MP4_design1/ip/MP4_design1_axi_bram_ctrl_0_bram_2/sim/MP4_design1_axi_bram_ctrl_0_bram_2.v" \
-endlib
-makelib ies/generic_baseblocks_v2_1_0 \
  "../../../../MP-4.srcs/sources_1/bd/MP4_design1/ipshared/f9c1/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_register_slice_v2_1_12 \
  "../../../../MP-4.srcs/sources_1/bd/MP4_design1/ipshared/0e33/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies/fifo_generator_v13_1_4 \
  "../../../../MP-4.srcs/sources_1/bd/MP4_design1/ipshared/ebc2/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies/fifo_generator_v13_1_4 \
  "../../../../MP-4.srcs/sources_1/bd/MP4_design1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.vhd" \
-endlib
-makelib ies/fifo_generator_v13_1_4 \
  "../../../../MP-4.srcs/sources_1/bd/MP4_design1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.v" \
-endlib
-makelib ies/axi_data_fifo_v2_1_11 \
  "../../../../MP-4.srcs/sources_1/bd/MP4_design1/ipshared/5235/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_crossbar_v2_1_13 \
  "../../../../MP-4.srcs/sources_1/bd/MP4_design1/ipshared/78eb/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/MP4_design1/ip/MP4_design1_xbar_0/sim/MP4_design1_xbar_0.v" \
-endlib
-makelib ies/axi_protocol_converter_v2_1_12 \
  "../../../../MP-4.srcs/sources_1/bd/MP4_design1/ipshared/138d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/MP4_design1/ip/MP4_design1_auto_pc_1/sim/MP4_design1_auto_pc_1.v" \
  "../../../bd/MP4_design1/ip/MP4_design1_auto_pc_0/sim/MP4_design1_auto_pc_0.v" \
  "../../../bd/MP4_design1/ip/MP4_design1_auto_pc_2/sim/MP4_design1_auto_pc_2.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/MP4_design1/hdl/MP4_design1.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

