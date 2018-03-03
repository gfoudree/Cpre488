
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-1
   set_property BOARD_PART em.avnet.com:zed:part0:1.3 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name design_1

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./hw

  # Use origin directory path location variable, if specified in the tcl shell
  if { [info exists ::origin_dir_loc] } {
     set origin_dir $::origin_dir_loc
  }

  set str_bd_folder [file normalize ${origin_dir}]
  set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

  # Check if remote design exists on disk
  if { [file exists $str_bd_filepath ] == 1 } {
     catch {common::send_msg_id "BD_TCL-110" "ERROR" "The remote BD file path <$str_bd_filepath> already exists!"}
     common::send_msg_id "BD_TCL-008" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0>."
     common::send_msg_id "BD_TCL-009" "INFO" "Also make sure there is no design <$design_name> existing in your current project."

     return 1
  }

  # Check if design exists in memory
  set list_existing_designs [get_bd_designs -quiet $design_name]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-111" "ERROR" "The design <$design_name> already exists in this project! Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-010" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Check if design exists on disk within project
  set list_existing_designs [get_files -quiet */${design_name}.bd]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-112" "ERROR" "The design <$design_name> already exists in this project at location:
    $list_existing_designs"}
     catch {common::send_msg_id "BD_TCL-113" "ERROR" "Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-011" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Now can create the remote BD
  # NOTE - usage of <-dir> will create <$str_bd_folder/$design_name/$design_name.bd>
  create_bd_design -dir $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design $design_name} errmsg] } {
     common::send_msg_id "BD_TCL-012" "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
  set IO_HDMIO [ create_bd_intf_port -mode Master -vlnv avnet.com:interface:avnet_hdmi_rtl:2.0 IO_HDMIO ]
  set IO_VITA_CAM [ create_bd_intf_port -mode Slave -vlnv avnet.com:interface:onsemi_vita_cam_rtl:1.0 IO_VITA_CAM ]
  set IO_VITA_SPI [ create_bd_intf_port -mode Master -vlnv avnet.com:interface:onsemi_vita_spi_rtl:1.0 IO_VITA_SPI ]
  set fmc_imageon_iic [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 fmc_imageon_iic ]
  set fmc_ipmi_id_eeprom [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 fmc_ipmi_id_eeprom ]

  # Create ports
  set IO_HDMII_spdif [ create_bd_port -dir I IO_HDMII_spdif ]
  set fmc_imageon_iic_rst_n [ create_bd_port -dir O -from 0 -to 0 fmc_imageon_iic_rst_n ]
  set fmc_imageon_vclk [ create_bd_port -dir I -type clk fmc_imageon_vclk ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {148500000} \
 ] $fmc_imageon_vclk

  # Create instance: avnet_hdmi_out_0, and set properties
  set avnet_hdmi_out_0 [ create_bd_cell -type ip -vlnv avnet:avnet_hdmi:avnet_hdmi_out:3.1 avnet_hdmi_out_0 ]

  # Create instance: axi_smc, and set properties
  set axi_smc [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_smc ]
  set_property -dict [ list \
CONFIG.NUM_CLKS {1} \
CONFIG.NUM_SI {2} \
 ] $axi_smc

  # Create instance: axi_vdma_0, and set properties
  set axi_vdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.3 axi_vdma_0 ]
  set_property -dict [ list \
CONFIG.c_m_axis_mm2s_tdata_width {16} \
CONFIG.c_mm2s_linebuffer_depth {4096} \
CONFIG.c_s2mm_linebuffer_depth {4096} \
 ] $axi_vdma_0

  # Create instance: axis_subset_converter_0, and set properties
  set axis_subset_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 axis_subset_converter_0 ]
  set_property -dict [ list \
CONFIG.M_TDATA_NUM_BYTES {2} \
CONFIG.S_TDATA_NUM_BYTES {1} \
CONFIG.TDATA_REMAP {8'b10000000,tdata[7:0]} \
CONFIG.TKEEP_REMAP {1'b0} \
CONFIG.TSTRB_REMAP {1'b0} \
 ] $axis_subset_converter_0

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 clk_wiz_0 ]
  set_property -dict [ list \
CONFIG.CLKIN1_JITTER_PS {67.34} \
CONFIG.CLKOUT1_JITTER {107.784} \
CONFIG.CLKOUT1_PHASE_ERROR {92.455} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {148.500} \
CONFIG.MMCM_CLKFBOUT_MULT_F {6.750} \
CONFIG.MMCM_CLKIN1_PERIOD {6.734} \
CONFIG.MMCM_CLKIN2_PERIOD {10.000} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {6.750} \
CONFIG.MMCM_DIVCLK_DIVIDE {1} \
CONFIG.PRIM_IN_FREQ {148.500} \
CONFIG.RESET_PORT {resetn} \
CONFIG.RESET_TYPE {ACTIVE_LOW} \
 ] $clk_wiz_0

  # Create instance: fmc_imageon_iic_0, and set properties
  set fmc_imageon_iic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 fmc_imageon_iic_0 ]

  # Create instance: fmc_ipmi_id_eeprom_0, and set properties
  set fmc_ipmi_id_eeprom_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 fmc_ipmi_id_eeprom_0 ]
  set_property -dict [ list \
CONFIG.C_GPO_WIDTH {8} \
 ] $fmc_ipmi_id_eeprom_0

  # Create instance: onsemi_vita_cam_0, and set properties
  set onsemi_vita_cam_0 [ create_bd_cell -type ip -vlnv avnet:onsemi_vita:onsemi_vita_cam:3.3 onsemi_vita_cam_0 ]

  # Create instance: onsemi_vita_spi_0, and set properties
  set onsemi_vita_spi_0 [ create_bd_cell -type ip -vlnv avnet:onsemi_vita:onsemi_vita_spi:3.3 onsemi_vita_spi_0 ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
CONFIG.PCW_EN_CLK1_PORT {1} \
CONFIG.PCW_EN_CLK2_PORT {1} \
CONFIG.PCW_EN_RST1_PORT {1} \
CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {75} \
CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {150.000000} \
CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_USE_S_AXI_HP0 {1} \
CONFIG.preset {ZedBoard} \
 ] $processing_system7_0

  # Create instance: ps7_0_axi_periph, and set properties
  set ps7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps7_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {7} \
 ] $ps7_0_axi_periph

  # Create instance: rst_clk_wiz_0_148M, and set properties
  set rst_clk_wiz_0_148M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_0_148M ]

  # Create instance: rst_ps7_0_100M, and set properties
  set rst_ps7_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_100M ]

  # Create instance: v_axi4s_vid_out_0, and set properties
  set v_axi4s_vid_out_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_0 ]
  set_property -dict [ list \
CONFIG.C_ADDR_WIDTH {12} \
CONFIG.C_HAS_ASYNC_CLK {1} \
CONFIG.C_S_AXIS_VIDEO_FORMAT {0} \
CONFIG.C_VTG_MASTER_SLAVE {1} \
 ] $v_axi4s_vid_out_0

  # Create instance: v_tc_0, and set properties
  set v_tc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.1 v_tc_0 ]
  set_property -dict [ list \
CONFIG.VIDEO_MODE {1080p} \
CONFIG.enable_detection {false} \
 ] $v_tc_0

  # Create instance: v_vid_in_axi4s_0, and set properties
  set v_vid_in_axi4s_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_vid_in_axi4s:4.0 v_vid_in_axi4s_0 ]
  set_property -dict [ list \
CONFIG.C_ADDR_WIDTH {12} \
CONFIG.C_M_AXIS_VIDEO_FORMAT {12} \
 ] $v_vid_in_axi4s_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]

  # Create interface connections
  connect_bd_intf_net -intf_net IO_CAM_IN_1 [get_bd_intf_ports IO_VITA_CAM] [get_bd_intf_pins onsemi_vita_cam_0/IO_CAM_IN]
  connect_bd_intf_net -intf_net avnet_hdmi_out_0_IO_HDMIO [get_bd_intf_ports IO_HDMIO] [get_bd_intf_pins avnet_hdmi_out_0/IO_HDMIO]
  connect_bd_intf_net -intf_net axi_smc_M00_AXI [get_bd_intf_pins axi_smc/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXIS_MM2S [get_bd_intf_pins axi_vdma_0/M_AXIS_MM2S] [get_bd_intf_pins v_axi4s_vid_out_0/video_in]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_MM2S [get_bd_intf_pins axi_smc/S00_AXI] [get_bd_intf_pins axi_vdma_0/M_AXI_MM2S]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_S2MM [get_bd_intf_pins axi_smc/S01_AXI] [get_bd_intf_pins axi_vdma_0/M_AXI_S2MM]
  connect_bd_intf_net -intf_net axis_subset_converter_0_M_AXIS [get_bd_intf_pins axi_vdma_0/S_AXIS_S2MM] [get_bd_intf_pins axis_subset_converter_0/M_AXIS]
  connect_bd_intf_net -intf_net fmc_imageon_iic_0_IIC [get_bd_intf_ports fmc_imageon_iic] [get_bd_intf_pins fmc_imageon_iic_0/IIC]
  connect_bd_intf_net -intf_net fmc_ipmi_id_eeprom_0_IIC [get_bd_intf_ports fmc_ipmi_id_eeprom] [get_bd_intf_pins fmc_ipmi_id_eeprom_0/IIC]
  connect_bd_intf_net -intf_net onsemi_vita_cam_0_VID_IO_OUT [get_bd_intf_pins onsemi_vita_cam_0/VID_IO_OUT] [get_bd_intf_pins v_vid_in_axi4s_0/vid_io_in]
  connect_bd_intf_net -intf_net onsemi_vita_spi_0_IO_SPI_OUT [get_bd_intf_ports IO_VITA_SPI] [get_bd_intf_pins onsemi_vita_spi_0/IO_SPI_OUT]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins ps7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M00_AXI [get_bd_intf_pins fmc_imageon_iic_0/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M02_AXI [get_bd_intf_pins ps7_0_axi_periph/M02_AXI] [get_bd_intf_pins v_tc_0/ctrl]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M03_AXI [get_bd_intf_pins axi_vdma_0/S_AXI_LITE] [get_bd_intf_pins ps7_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M04_AXI [get_bd_intf_pins fmc_ipmi_id_eeprom_0/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M05_AXI [get_bd_intf_pins onsemi_vita_spi_0/S00_AXI] [get_bd_intf_pins ps7_0_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M06_AXI [get_bd_intf_pins onsemi_vita_cam_0/S00_AXI] [get_bd_intf_pins ps7_0_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net v_axi4s_vid_out_0_vid_io_out [get_bd_intf_pins avnet_hdmi_out_0/VID_IO_IN] [get_bd_intf_pins v_axi4s_vid_out_0/vid_io_out]
  connect_bd_intf_net -intf_net v_tc_0_vtiming_out [get_bd_intf_pins v_axi4s_vid_out_0/vtiming_in] [get_bd_intf_pins v_tc_0/vtiming_out]
  connect_bd_intf_net -intf_net v_vid_in_axi4s_0_video_out [get_bd_intf_pins axis_subset_converter_0/S_AXIS] [get_bd_intf_pins v_vid_in_axi4s_0/video_out]

  # Create port connections
  connect_bd_net -net audio_spdif_1 [get_bd_ports IO_HDMII_spdif] [get_bd_pins avnet_hdmi_out_0/audio_spdif]
  connect_bd_net -net clk_in1_1 [get_bd_ports fmc_imageon_vclk] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins avnet_hdmi_out_0/clk] [get_bd_pins axi_vdma_0/m_axis_mm2s_aclk] [get_bd_pins axi_vdma_0/s_axis_s2mm_aclk] [get_bd_pins axis_subset_converter_0/aclk] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins onsemi_vita_cam_0/clk] [get_bd_pins ps7_0_axi_periph/M01_ACLK] [get_bd_pins rst_clk_wiz_0_148M/slowest_sync_clk] [get_bd_pins v_axi4s_vid_out_0/aclk] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_clk] [get_bd_pins v_tc_0/clk] [get_bd_pins v_vid_in_axi4s_0/aclk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins rst_clk_wiz_0_148M/dcm_locked]
  connect_bd_net -net fmc_imageon_iic_0_gpo [get_bd_ports fmc_imageon_iic_rst_n] [get_bd_pins fmc_imageon_iic_0/gpo]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins axi_vdma_0/s_axi_lite_aclk] [get_bd_pins fmc_imageon_iic_0/s_axi_aclk] [get_bd_pins fmc_ipmi_id_eeprom_0/s_axi_aclk] [get_bd_pins onsemi_vita_cam_0/s00_axi_aclk] [get_bd_pins onsemi_vita_spi_0/s00_axi_aclk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins ps7_0_axi_periph/ACLK] [get_bd_pins ps7_0_axi_periph/M00_ACLK] [get_bd_pins ps7_0_axi_periph/M02_ACLK] [get_bd_pins ps7_0_axi_periph/M03_ACLK] [get_bd_pins ps7_0_axi_periph/M04_ACLK] [get_bd_pins ps7_0_axi_periph/M05_ACLK] [get_bd_pins ps7_0_axi_periph/M06_ACLK] [get_bd_pins ps7_0_axi_periph/S00_ACLK] [get_bd_pins rst_ps7_0_100M/slowest_sync_clk] [get_bd_pins v_tc_0/s_axi_aclk]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins axi_smc/aclk] [get_bd_pins axi_vdma_0/m_axi_mm2s_aclk] [get_bd_pins axi_vdma_0/m_axi_s2mm_aclk] [get_bd_pins processing_system7_0/FCLK_CLK1] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK]
  connect_bd_net -net processing_system7_0_FCLK_CLK2 [get_bd_pins onsemi_vita_cam_0/clk200] [get_bd_pins processing_system7_0/FCLK_CLK2]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins clk_wiz_0/resetn] [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_clk_wiz_0_148M/ext_reset_in] [get_bd_pins rst_ps7_0_100M/ext_reset_in]
  connect_bd_net -net processing_system7_0_FCLK_RESET1_N [get_bd_pins axi_smc/aresetn] [get_bd_pins processing_system7_0/FCLK_RESET1_N]
  connect_bd_net -net rst_clk_wiz_0_148M_peripheral_aresetn [get_bd_pins axis_subset_converter_0/aresetn] [get_bd_pins ps7_0_axi_periph/M01_ARESETN] [get_bd_pins rst_clk_wiz_0_148M/peripheral_aresetn] [get_bd_pins v_axi4s_vid_out_0/aresetn] [get_bd_pins v_tc_0/resetn] [get_bd_pins v_vid_in_axi4s_0/aresetn]
  connect_bd_net -net rst_clk_wiz_0_148M_peripheral_reset [get_bd_pins avnet_hdmi_out_0/reset] [get_bd_pins onsemi_vita_cam_0/reset] [get_bd_pins rst_clk_wiz_0_148M/peripheral_reset] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_reset]
  connect_bd_net -net rst_ps7_0_100M_interconnect_aresetn [get_bd_pins ps7_0_axi_periph/ARESETN] [get_bd_pins rst_ps7_0_100M/interconnect_aresetn]
  connect_bd_net -net rst_ps7_0_100M_peripheral_aresetn [get_bd_pins axi_vdma_0/axi_resetn] [get_bd_pins fmc_imageon_iic_0/s_axi_aresetn] [get_bd_pins fmc_ipmi_id_eeprom_0/s_axi_aresetn] [get_bd_pins onsemi_vita_cam_0/s00_axi_aresetn] [get_bd_pins onsemi_vita_spi_0/s00_axi_aresetn] [get_bd_pins ps7_0_axi_periph/M00_ARESETN] [get_bd_pins ps7_0_axi_periph/M02_ARESETN] [get_bd_pins ps7_0_axi_periph/M03_ARESETN] [get_bd_pins ps7_0_axi_periph/M04_ARESETN] [get_bd_pins ps7_0_axi_periph/M05_ARESETN] [get_bd_pins ps7_0_axi_periph/M06_ARESETN] [get_bd_pins ps7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_ps7_0_100M/peripheral_aresetn] [get_bd_pins v_tc_0/s_axi_aresetn]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins onsemi_vita_cam_0/trigger1] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins avnet_hdmi_out_0/embed_syncs] [get_bd_pins avnet_hdmi_out_0/oe] [get_bd_pins onsemi_vita_cam_0/oe] [get_bd_pins onsemi_vita_spi_0/oe] [get_bd_pins v_axi4s_vid_out_0/aclken] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_ce] [get_bd_pins v_tc_0/clken] [get_bd_pins v_tc_0/gen_clken] [get_bd_pins v_tc_0/s_axi_aclken] [get_bd_pins v_vid_in_axi4s_0/aclken] [get_bd_pins v_vid_in_axi4s_0/axis_enable] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_ce] [get_bd_pins xlconstant_1/dout]

  # Create address segments
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_vdma_0/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_vdma_0/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x00010000 -offset 0x43000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_vdma_0/S_AXI_LITE/Reg] SEG_axi_vdma_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41600000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs fmc_imageon_iic_0/S_AXI/Reg] SEG_fmc_imageon_iic_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41610000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs fmc_ipmi_id_eeprom_0/S_AXI/Reg] SEG_fmc_ipmi_id_eeprom_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C30000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs onsemi_vita_cam_0/S00_AXI/Reg] SEG_onsemi_vita_cam_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C20000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs onsemi_vita_spi_0/S00_AXI/Reg] SEG_onsemi_vita_spi_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C10000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs v_tc_0/ctrl/Reg] SEG_v_tc_0_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


