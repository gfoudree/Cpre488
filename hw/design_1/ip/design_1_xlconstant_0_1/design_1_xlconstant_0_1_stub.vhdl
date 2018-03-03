-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
-- Date        : Fri Mar  2 11:36:36 2018
-- Host        : CO2041-04 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               u:/Desktop/MP-2/hw/design_1/ip/design_1_xlconstant_0_1/design_1_xlconstant_0_1_stub.vhdl
-- Design      : design_1_xlconstant_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_xlconstant_0_1 is
  Port ( 
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end design_1_xlconstant_0_1;

architecture stub of design_1_xlconstant_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dout[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xlconstant_v1_1_3_xlconstant,Vivado 2017.1";
begin
end;
