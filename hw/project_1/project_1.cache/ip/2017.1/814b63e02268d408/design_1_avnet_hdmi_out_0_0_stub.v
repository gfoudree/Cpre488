// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Fri Mar  2 09:36:18 2018
// Host        : CO2041-04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_avnet_hdmi_out_0_0_stub.v
// Design      : design_1_avnet_hdmi_out_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "avnet_hdmi_out,Vivado 2017.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reset, oe, embed_syncs, audio_spdif, 
  video_vblank, video_hblank, video_de, video_data, io_hdmio_spdif, io_hdmio_video, 
  io_hdmio_clk)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,oe,embed_syncs,audio_spdif,video_vblank,video_hblank,video_de,video_data[15:0],io_hdmio_spdif,io_hdmio_video[15:0],io_hdmio_clk" */;
  input clk;
  input reset;
  input oe;
  input embed_syncs;
  input audio_spdif;
  input video_vblank;
  input video_hblank;
  input video_de;
  input [15:0]video_data;
  output io_hdmio_spdif;
  output [15:0]io_hdmio_video;
  output io_hdmio_clk;
endmodule
