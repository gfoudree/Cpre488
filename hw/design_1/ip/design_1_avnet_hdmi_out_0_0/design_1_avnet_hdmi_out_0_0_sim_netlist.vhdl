-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
-- Date        : Fri Mar  2 09:36:20 2018
-- Host        : CO2041-04 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               u:/Desktop/MP-2/hw/design_1/ip/design_1_avnet_hdmi_out_0_0/design_1_avnet_hdmi_out_0_0_sim_netlist.vhdl
-- Design      : design_1_avnet_hdmi_out_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_avnet_hdmi_out_0_0_adv7511_embed_syncs is
  port (
    \VIDEO_PORTS_16BIT_GEN.video_r_reg[14]\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \hdmio_video_o_reg[7]\ : out STD_LOGIC;
    \hdmio_video_o_reg[15]\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    vblank_d_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_avnet_hdmi_out_0_0_adv7511_embed_syncs : entity is "adv7511_embed_syncs";
end design_1_avnet_hdmi_out_0_0_adv7511_embed_syncs;

architecture STRUCTURE of design_1_avnet_hdmi_out_0_0_adv7511_embed_syncs is
  signal \hblank_d_reg_n_0_[1]\ : STD_LOGIC;
  signal \hblank_d_reg_n_0_[2]\ : STD_LOGIC;
  signal \hblank_d_reg_n_0_[3]\ : STD_LOGIC;
  signal \hblank_d_reg_n_0_[4]\ : STD_LOGIC;
  signal \hblank_d_reg_n_0_[5]\ : STD_LOGIC;
  signal \hblank_d_reg_n_0_[6]\ : STD_LOGIC;
  signal vblank_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal video_data_d1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal video_data_d2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \video_data_d2[0]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_d2[10]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_d2[11]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_d2[11]_i_2_n_0\ : STD_LOGIC;
  signal \video_data_d2[12]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_d2[13]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_d2[13]_i_2_n_0\ : STD_LOGIC;
  signal \video_data_d2[15]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_d2[15]_i_2_n_0\ : STD_LOGIC;
  signal \video_data_d2[1]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_d2[2]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_d2[3]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_d2[4]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_d2[5]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_d2[7]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_d2[8]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_d2[9]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_d5_reg[0]_srl3_n_0\ : STD_LOGIC;
  signal \video_data_d5_reg[10]_srl3_n_0\ : STD_LOGIC;
  signal \video_data_d5_reg[11]_srl3_n_0\ : STD_LOGIC;
  signal \video_data_d5_reg[12]_srl3_n_0\ : STD_LOGIC;
  signal \video_data_d5_reg[13]_srl3_n_0\ : STD_LOGIC;
  signal \video_data_d5_reg[14]_srl4_i_1_n_0\ : STD_LOGIC;
  signal \video_data_d5_reg[14]_srl4_n_0\ : STD_LOGIC;
  signal \video_data_d5_reg[15]_srl3_n_0\ : STD_LOGIC;
  signal \video_data_d5_reg[1]_srl3_n_0\ : STD_LOGIC;
  signal \video_data_d5_reg[2]_srl3_n_0\ : STD_LOGIC;
  signal \video_data_d5_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal \video_data_d5_reg[4]_srl3_n_0\ : STD_LOGIC;
  signal \video_data_d5_reg[5]_srl3_n_0\ : STD_LOGIC;
  signal \video_data_d5_reg[6]_srl4_i_1_n_0\ : STD_LOGIC;
  signal \video_data_d5_reg[6]_srl4_n_0\ : STD_LOGIC;
  signal \video_data_d5_reg[7]_srl3_n_0\ : STD_LOGIC;
  signal \video_data_d5_reg[8]_srl3_n_0\ : STD_LOGIC;
  signal \video_data_d5_reg[9]_srl3_n_0\ : STD_LOGIC;
  signal video_data_d6 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \video_data_df[0]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_df[10]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_df[11]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_df[12]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_df[13]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_df[13]_i_2_n_0\ : STD_LOGIC;
  signal \video_data_df[14]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_df[14]_i_2_n_0\ : STD_LOGIC;
  signal \video_data_df[1]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_df[2]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_df[3]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_df[4]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_df[5]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_df[6]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_df[8]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_df[9]_i_1_n_0\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \video_data_d5_reg[0]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg ";
  attribute srl_name : string;
  attribute srl_name of \video_data_d5_reg[0]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg[0]_srl3 ";
  attribute srl_bus_name of \video_data_d5_reg[10]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg ";
  attribute srl_name of \video_data_d5_reg[10]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg[10]_srl3 ";
  attribute srl_bus_name of \video_data_d5_reg[11]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg ";
  attribute srl_name of \video_data_d5_reg[11]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg[11]_srl3 ";
  attribute srl_bus_name of \video_data_d5_reg[12]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg ";
  attribute srl_name of \video_data_d5_reg[12]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg[12]_srl3 ";
  attribute srl_bus_name of \video_data_d5_reg[13]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg ";
  attribute srl_name of \video_data_d5_reg[13]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg[13]_srl3 ";
  attribute srl_bus_name of \video_data_d5_reg[14]_srl4\ : label is "\U0/embed_syncs_l/video_data_d5_reg ";
  attribute srl_name of \video_data_d5_reg[14]_srl4\ : label is "\U0/embed_syncs_l/video_data_d5_reg[14]_srl4 ";
  attribute srl_bus_name of \video_data_d5_reg[15]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg ";
  attribute srl_name of \video_data_d5_reg[15]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg[15]_srl3 ";
  attribute srl_bus_name of \video_data_d5_reg[1]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg ";
  attribute srl_name of \video_data_d5_reg[1]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg[1]_srl3 ";
  attribute srl_bus_name of \video_data_d5_reg[2]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg ";
  attribute srl_name of \video_data_d5_reg[2]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg[2]_srl3 ";
  attribute srl_bus_name of \video_data_d5_reg[3]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg ";
  attribute srl_name of \video_data_d5_reg[3]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg[3]_srl3 ";
  attribute srl_bus_name of \video_data_d5_reg[4]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg ";
  attribute srl_name of \video_data_d5_reg[4]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg[4]_srl3 ";
  attribute srl_bus_name of \video_data_d5_reg[5]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg ";
  attribute srl_name of \video_data_d5_reg[5]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg[5]_srl3 ";
  attribute srl_bus_name of \video_data_d5_reg[6]_srl4\ : label is "\U0/embed_syncs_l/video_data_d5_reg ";
  attribute srl_name of \video_data_d5_reg[6]_srl4\ : label is "\U0/embed_syncs_l/video_data_d5_reg[6]_srl4 ";
  attribute srl_bus_name of \video_data_d5_reg[7]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg ";
  attribute srl_name of \video_data_d5_reg[7]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg[7]_srl3 ";
  attribute srl_bus_name of \video_data_d5_reg[8]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg ";
  attribute srl_name of \video_data_d5_reg[8]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg[8]_srl3 ";
  attribute srl_bus_name of \video_data_d5_reg[9]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg ";
  attribute srl_name of \video_data_d5_reg[9]_srl3\ : label is "\U0/embed_syncs_l/video_data_d5_reg[9]_srl3 ";
begin
\VIDEO_PORTS_16BIT_GEN.video_r_reg[15]_srl2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAE0ABAAAAAAAA"
    )
        port map (
      I0 => video_data_d6(15),
      I1 => \hblank_d_reg_n_0_[4]\,
      I2 => \hblank_d_reg_n_0_[3]\,
      I3 => \hblank_d_reg_n_0_[5]\,
      I4 => \hblank_d_reg_n_0_[2]\,
      I5 => \hblank_d_reg_n_0_[6]\,
      O => \hdmio_video_o_reg[15]\
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[7]_srl2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAE0ABAAAAAAAA"
    )
        port map (
      I0 => video_data_d6(7),
      I1 => \hblank_d_reg_n_0_[4]\,
      I2 => \hblank_d_reg_n_0_[3]\,
      I3 => \hblank_d_reg_n_0_[5]\,
      I4 => \hblank_d_reg_n_0_[2]\,
      I5 => \hblank_d_reg_n_0_[6]\,
      O => \hdmio_video_o_reg[7]\
    );
\hblank_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(0),
      Q => \hblank_d_reg_n_0_[1]\,
      R => '0'
    );
\hblank_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \hblank_d_reg_n_0_[1]\,
      Q => \hblank_d_reg_n_0_[2]\,
      R => '0'
    );
\hblank_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \hblank_d_reg_n_0_[2]\,
      Q => \hblank_d_reg_n_0_[3]\,
      R => '0'
    );
\hblank_d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \hblank_d_reg_n_0_[3]\,
      Q => \hblank_d_reg_n_0_[4]\,
      R => '0'
    );
\hblank_d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \hblank_d_reg_n_0_[4]\,
      Q => \hblank_d_reg_n_0_[5]\,
      R => '0'
    );
\hblank_d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \hblank_d_reg_n_0_[5]\,
      Q => \hblank_d_reg_n_0_[6]\,
      R => '0'
    );
\vblank_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vblank_d_reg(0),
      Q => vblank_d(0),
      R => '0'
    );
\vblank_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vblank_d(0),
      Q => vblank_d(1),
      R => '0'
    );
\video_data_d1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(0),
      Q => video_data_d1(0),
      R => '0'
    );
\video_data_d1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(10),
      Q => video_data_d1(10),
      R => '0'
    );
\video_data_d1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(11),
      Q => video_data_d1(11),
      R => '0'
    );
\video_data_d1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(12),
      Q => video_data_d1(12),
      R => '0'
    );
\video_data_d1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(13),
      Q => video_data_d1(13),
      R => '0'
    );
\video_data_d1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(14),
      Q => video_data_d1(14),
      R => '0'
    );
\video_data_d1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(15),
      Q => video_data_d1(15),
      R => '0'
    );
\video_data_d1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(1),
      Q => video_data_d1(1),
      R => '0'
    );
\video_data_d1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(2),
      Q => video_data_d1(2),
      R => '0'
    );
\video_data_d1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(3),
      Q => video_data_d1(3),
      R => '0'
    );
\video_data_d1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(4),
      Q => video_data_d1(4),
      R => '0'
    );
\video_data_d1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(5),
      Q => video_data_d1(5),
      R => '0'
    );
\video_data_d1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(6),
      Q => video_data_d1(6),
      R => '0'
    );
\video_data_d1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(7),
      Q => video_data_d1(7),
      R => '0'
    );
\video_data_d1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(8),
      Q => video_data_d1(8),
      R => '0'
    );
\video_data_d1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(9),
      Q => video_data_d1(9),
      R => '0'
    );
\video_data_d2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFFFDF00000000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[1]\,
      I1 => \hblank_d_reg_n_0_[5]\,
      I2 => \hblank_d_reg_n_0_[2]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => video_data_d1(0),
      O => \video_data_d2[0]_i_1_n_0\
    );
\video_data_d2[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[4]\,
      I1 => \hblank_d_reg_n_0_[1]\,
      I2 => \hblank_d_reg_n_0_[5]\,
      I3 => \hblank_d_reg_n_0_[2]\,
      I4 => video_data_d1(10),
      O => \video_data_d2[10]_i_1_n_0\
    );
\video_data_d2[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000030"
    )
        port map (
      I0 => vblank_d(1),
      I1 => \hblank_d_reg_n_0_[5]\,
      I2 => \hblank_d_reg_n_0_[1]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => \hblank_d_reg_n_0_[2]\,
      O => \video_data_d2[11]_i_1_n_0\
    );
\video_data_d2[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFFFDF00000000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[1]\,
      I1 => \hblank_d_reg_n_0_[5]\,
      I2 => \hblank_d_reg_n_0_[2]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => video_data_d1(11),
      O => \video_data_d2[11]_i_2_n_0\
    );
\video_data_d2[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[4]\,
      I1 => \hblank_d_reg_n_0_[1]\,
      I2 => \hblank_d_reg_n_0_[5]\,
      I3 => \hblank_d_reg_n_0_[2]\,
      I4 => video_data_d1(12),
      O => \video_data_d2[12]_i_1_n_0\
    );
\video_data_d2[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000030"
    )
        port map (
      I0 => vblank_d(1),
      I1 => \hblank_d_reg_n_0_[5]\,
      I2 => \hblank_d_reg_n_0_[1]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => \hblank_d_reg_n_0_[2]\,
      O => \video_data_d2[13]_i_1_n_0\
    );
\video_data_d2[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFFFDF00000000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[1]\,
      I1 => \hblank_d_reg_n_0_[5]\,
      I2 => \hblank_d_reg_n_0_[2]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => video_data_d1(13),
      O => \video_data_d2[13]_i_2_n_0\
    );
\video_data_d2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000002"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[1]\,
      I1 => \hblank_d_reg_n_0_[5]\,
      I2 => \hblank_d_reg_n_0_[2]\,
      I3 => \hblank_d_reg_n_0_[3]\,
      I4 => \hblank_d_reg_n_0_[4]\,
      O => \video_data_d2[15]_i_1_n_0\
    );
\video_data_d2[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[4]\,
      I1 => \hblank_d_reg_n_0_[1]\,
      I2 => \hblank_d_reg_n_0_[5]\,
      I3 => \hblank_d_reg_n_0_[2]\,
      I4 => video_data_d1(15),
      O => \video_data_d2[15]_i_2_n_0\
    );
\video_data_d2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFFFDF00000000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[1]\,
      I1 => \hblank_d_reg_n_0_[5]\,
      I2 => \hblank_d_reg_n_0_[2]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => video_data_d1(1),
      O => \video_data_d2[1]_i_1_n_0\
    );
\video_data_d2[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[4]\,
      I1 => \hblank_d_reg_n_0_[1]\,
      I2 => \hblank_d_reg_n_0_[5]\,
      I3 => \hblank_d_reg_n_0_[2]\,
      I4 => video_data_d1(2),
      O => \video_data_d2[2]_i_1_n_0\
    );
\video_data_d2[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFFFDF00000000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[1]\,
      I1 => \hblank_d_reg_n_0_[5]\,
      I2 => \hblank_d_reg_n_0_[2]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => video_data_d1(3),
      O => \video_data_d2[3]_i_1_n_0\
    );
\video_data_d2[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[4]\,
      I1 => \hblank_d_reg_n_0_[1]\,
      I2 => \hblank_d_reg_n_0_[5]\,
      I3 => \hblank_d_reg_n_0_[2]\,
      I4 => video_data_d1(4),
      O => \video_data_d2[4]_i_1_n_0\
    );
\video_data_d2[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFFFDF00000000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[1]\,
      I1 => \hblank_d_reg_n_0_[5]\,
      I2 => \hblank_d_reg_n_0_[2]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => video_data_d1(5),
      O => \video_data_d2[5]_i_1_n_0\
    );
\video_data_d2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[4]\,
      I1 => \hblank_d_reg_n_0_[1]\,
      I2 => \hblank_d_reg_n_0_[5]\,
      I3 => \hblank_d_reg_n_0_[2]\,
      I4 => video_data_d1(7),
      O => \video_data_d2[7]_i_1_n_0\
    );
\video_data_d2[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFFFDF00000000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[1]\,
      I1 => \hblank_d_reg_n_0_[5]\,
      I2 => \hblank_d_reg_n_0_[2]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => video_data_d1(8),
      O => \video_data_d2[8]_i_1_n_0\
    );
\video_data_d2[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFFFDF00000000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[1]\,
      I1 => \hblank_d_reg_n_0_[5]\,
      I2 => \hblank_d_reg_n_0_[2]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => video_data_d1(9),
      O => \video_data_d2[9]_i_1_n_0\
    );
\video_data_d2_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d2[0]_i_1_n_0\,
      Q => video_data_d2(0),
      S => \video_data_d2[11]_i_1_n_0\
    );
\video_data_d2_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d2[10]_i_1_n_0\,
      Q => video_data_d2(10),
      S => \video_data_d2[15]_i_1_n_0\
    );
\video_data_d2_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d2[11]_i_2_n_0\,
      Q => video_data_d2(11),
      S => \video_data_d2[11]_i_1_n_0\
    );
\video_data_d2_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d2[12]_i_1_n_0\,
      Q => video_data_d2(12),
      S => \video_data_d2[15]_i_1_n_0\
    );
\video_data_d2_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d2[13]_i_2_n_0\,
      Q => video_data_d2(13),
      S => \video_data_d2[13]_i_1_n_0\
    );
\video_data_d2_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d2[15]_i_2_n_0\,
      Q => video_data_d2(15),
      S => \video_data_d2[15]_i_1_n_0\
    );
\video_data_d2_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d2[1]_i_1_n_0\,
      Q => video_data_d2(1),
      S => \video_data_d2[13]_i_1_n_0\
    );
\video_data_d2_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d2[2]_i_1_n_0\,
      Q => video_data_d2(2),
      S => \video_data_d2[15]_i_1_n_0\
    );
\video_data_d2_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d2[3]_i_1_n_0\,
      Q => video_data_d2(3),
      S => \video_data_d2[11]_i_1_n_0\
    );
\video_data_d2_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d2[4]_i_1_n_0\,
      Q => video_data_d2(4),
      S => \video_data_d2[15]_i_1_n_0\
    );
\video_data_d2_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d2[5]_i_1_n_0\,
      Q => video_data_d2(5),
      S => \video_data_d2[13]_i_1_n_0\
    );
\video_data_d2_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d2[7]_i_1_n_0\,
      Q => video_data_d2(7),
      S => \video_data_d2[15]_i_1_n_0\
    );
\video_data_d2_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d2[8]_i_1_n_0\,
      Q => video_data_d2(8),
      S => \video_data_d2[11]_i_1_n_0\
    );
\video_data_d2_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d2[9]_i_1_n_0\,
      Q => video_data_d2(9),
      S => \video_data_d2[13]_i_1_n_0\
    );
\video_data_d5_reg[0]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => video_data_d2(0),
      Q => \video_data_d5_reg[0]_srl3_n_0\
    );
\video_data_d5_reg[10]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => video_data_d2(10),
      Q => \video_data_d5_reg[10]_srl3_n_0\
    );
\video_data_d5_reg[11]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => video_data_d2(11),
      Q => \video_data_d5_reg[11]_srl3_n_0\
    );
\video_data_d5_reg[12]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => video_data_d2(12),
      Q => \video_data_d5_reg[12]_srl3_n_0\
    );
\video_data_d5_reg[13]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => video_data_d2(13),
      Q => \video_data_d5_reg[13]_srl3_n_0\
    );
\video_data_d5_reg[14]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \video_data_d5_reg[14]_srl4_i_1_n_0\,
      Q => \video_data_d5_reg[14]_srl4_n_0\
    );
\video_data_d5_reg[14]_srl4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8AAA8AAAAAAABA"
    )
        port map (
      I0 => video_data_d1(14),
      I1 => \hblank_d_reg_n_0_[5]\,
      I2 => \hblank_d_reg_n_0_[1]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => \hblank_d_reg_n_0_[2]\,
      O => \video_data_d5_reg[14]_srl4_i_1_n_0\
    );
\video_data_d5_reg[15]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => video_data_d2(15),
      Q => \video_data_d5_reg[15]_srl3_n_0\
    );
\video_data_d5_reg[1]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => video_data_d2(1),
      Q => \video_data_d5_reg[1]_srl3_n_0\
    );
\video_data_d5_reg[2]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => video_data_d2(2),
      Q => \video_data_d5_reg[2]_srl3_n_0\
    );
\video_data_d5_reg[3]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => video_data_d2(3),
      Q => \video_data_d5_reg[3]_srl3_n_0\
    );
\video_data_d5_reg[4]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => video_data_d2(4),
      Q => \video_data_d5_reg[4]_srl3_n_0\
    );
\video_data_d5_reg[5]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => video_data_d2(5),
      Q => \video_data_d5_reg[5]_srl3_n_0\
    );
\video_data_d5_reg[6]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \video_data_d5_reg[6]_srl4_i_1_n_0\,
      Q => \video_data_d5_reg[6]_srl4_n_0\
    );
\video_data_d5_reg[6]_srl4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8AAA8AAAAAAABA"
    )
        port map (
      I0 => video_data_d1(6),
      I1 => \hblank_d_reg_n_0_[5]\,
      I2 => \hblank_d_reg_n_0_[1]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => \hblank_d_reg_n_0_[2]\,
      O => \video_data_d5_reg[6]_srl4_i_1_n_0\
    );
\video_data_d5_reg[7]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => video_data_d2(7),
      Q => \video_data_d5_reg[7]_srl3_n_0\
    );
\video_data_d5_reg[8]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => video_data_d2(8),
      Q => \video_data_d5_reg[8]_srl3_n_0\
    );
\video_data_d5_reg[9]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => video_data_d2(9),
      Q => \video_data_d5_reg[9]_srl3_n_0\
    );
\video_data_d6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d5_reg[0]_srl3_n_0\,
      Q => video_data_d6(0),
      R => '0'
    );
\video_data_d6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d5_reg[10]_srl3_n_0\,
      Q => video_data_d6(10),
      R => '0'
    );
\video_data_d6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d5_reg[11]_srl3_n_0\,
      Q => video_data_d6(11),
      R => '0'
    );
\video_data_d6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d5_reg[12]_srl3_n_0\,
      Q => video_data_d6(12),
      R => '0'
    );
\video_data_d6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d5_reg[13]_srl3_n_0\,
      Q => video_data_d6(13),
      R => '0'
    );
\video_data_d6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d5_reg[14]_srl4_n_0\,
      Q => video_data_d6(14),
      R => '0'
    );
\video_data_d6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d5_reg[15]_srl3_n_0\,
      Q => video_data_d6(15),
      R => '0'
    );
\video_data_d6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d5_reg[1]_srl3_n_0\,
      Q => video_data_d6(1),
      R => '0'
    );
\video_data_d6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d5_reg[2]_srl3_n_0\,
      Q => video_data_d6(2),
      R => '0'
    );
\video_data_d6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d5_reg[3]_srl3_n_0\,
      Q => video_data_d6(3),
      R => '0'
    );
\video_data_d6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d5_reg[4]_srl3_n_0\,
      Q => video_data_d6(4),
      R => '0'
    );
\video_data_d6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d5_reg[5]_srl3_n_0\,
      Q => video_data_d6(5),
      R => '0'
    );
\video_data_d6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d5_reg[6]_srl4_n_0\,
      Q => video_data_d6(6),
      R => '0'
    );
\video_data_d6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d5_reg[7]_srl3_n_0\,
      Q => video_data_d6(7),
      R => '0'
    );
\video_data_d6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d5_reg[8]_srl3_n_0\,
      Q => video_data_d6(8),
      R => '0'
    );
\video_data_d6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d5_reg[9]_srl3_n_0\,
      Q => video_data_d6(9),
      R => '0'
    );
\video_data_df[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFBB00000000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[2]\,
      I1 => \hblank_d_reg_n_0_[6]\,
      I2 => \hblank_d_reg_n_0_[5]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => video_data_d6(0),
      O => \video_data_df[0]_i_1_n_0\
    );
\video_data_df[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFBB00000000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[2]\,
      I1 => \hblank_d_reg_n_0_[6]\,
      I2 => \hblank_d_reg_n_0_[5]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => video_data_d6(10),
      O => \video_data_df[10]_i_1_n_0\
    );
\video_data_df[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFBB00000000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[2]\,
      I1 => \hblank_d_reg_n_0_[6]\,
      I2 => \hblank_d_reg_n_0_[5]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => video_data_d6(11),
      O => \video_data_df[11]_i_1_n_0\
    );
\video_data_df[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFBB00000000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[2]\,
      I1 => \hblank_d_reg_n_0_[6]\,
      I2 => \hblank_d_reg_n_0_[5]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => video_data_d6(12),
      O => \video_data_df[12]_i_1_n_0\
    );
\video_data_df[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000081800000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[5]\,
      I1 => \hblank_d_reg_n_0_[4]\,
      I2 => \hblank_d_reg_n_0_[3]\,
      I3 => vblank_d(1),
      I4 => \hblank_d_reg_n_0_[6]\,
      I5 => \hblank_d_reg_n_0_[2]\,
      O => \video_data_df[13]_i_1_n_0\
    );
\video_data_df[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFBB00000000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[2]\,
      I1 => \hblank_d_reg_n_0_[6]\,
      I2 => \hblank_d_reg_n_0_[5]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => video_data_d6(13),
      O => \video_data_df[13]_i_2_n_0\
    );
\video_data_df[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[4]\,
      I1 => \hblank_d_reg_n_0_[3]\,
      I2 => \hblank_d_reg_n_0_[5]\,
      I3 => \hblank_d_reg_n_0_[2]\,
      I4 => \hblank_d_reg_n_0_[6]\,
      O => \video_data_df[14]_i_1_n_0\
    );
\video_data_df[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFBB00000000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[2]\,
      I1 => \hblank_d_reg_n_0_[6]\,
      I2 => \hblank_d_reg_n_0_[5]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => video_data_d6(14),
      O => \video_data_df[14]_i_2_n_0\
    );
\video_data_df[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFBB00000000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[2]\,
      I1 => \hblank_d_reg_n_0_[6]\,
      I2 => \hblank_d_reg_n_0_[5]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => video_data_d6(1),
      O => \video_data_df[1]_i_1_n_0\
    );
\video_data_df[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFBB00000000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[2]\,
      I1 => \hblank_d_reg_n_0_[6]\,
      I2 => \hblank_d_reg_n_0_[5]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => video_data_d6(2),
      O => \video_data_df[2]_i_1_n_0\
    );
\video_data_df[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFBB00000000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[2]\,
      I1 => \hblank_d_reg_n_0_[6]\,
      I2 => \hblank_d_reg_n_0_[5]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => video_data_d6(3),
      O => \video_data_df[3]_i_1_n_0\
    );
\video_data_df[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFBB00000000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[2]\,
      I1 => \hblank_d_reg_n_0_[6]\,
      I2 => \hblank_d_reg_n_0_[5]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => video_data_d6(4),
      O => \video_data_df[4]_i_1_n_0\
    );
\video_data_df[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFBB00000000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[2]\,
      I1 => \hblank_d_reg_n_0_[6]\,
      I2 => \hblank_d_reg_n_0_[5]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => video_data_d6(5),
      O => \video_data_df[5]_i_1_n_0\
    );
\video_data_df[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFBB00000000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[2]\,
      I1 => \hblank_d_reg_n_0_[6]\,
      I2 => \hblank_d_reg_n_0_[5]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => video_data_d6(6),
      O => \video_data_df[6]_i_1_n_0\
    );
\video_data_df[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFBB00000000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[2]\,
      I1 => \hblank_d_reg_n_0_[6]\,
      I2 => \hblank_d_reg_n_0_[5]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => video_data_d6(8),
      O => \video_data_df[8]_i_1_n_0\
    );
\video_data_df[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFBB00000000"
    )
        port map (
      I0 => \hblank_d_reg_n_0_[2]\,
      I1 => \hblank_d_reg_n_0_[6]\,
      I2 => \hblank_d_reg_n_0_[5]\,
      I3 => \hblank_d_reg_n_0_[4]\,
      I4 => \hblank_d_reg_n_0_[3]\,
      I5 => video_data_d6(9),
      O => \video_data_df[9]_i_1_n_0\
    );
\video_data_df_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_df[0]_i_1_n_0\,
      Q => \VIDEO_PORTS_16BIT_GEN.video_r_reg[14]\(0),
      S => \video_data_df[13]_i_1_n_0\
    );
\video_data_df_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_df[10]_i_1_n_0\,
      Q => \VIDEO_PORTS_16BIT_GEN.video_r_reg[14]\(9),
      S => \video_data_df[14]_i_1_n_0\
    );
\video_data_df_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_df[11]_i_1_n_0\,
      Q => \VIDEO_PORTS_16BIT_GEN.video_r_reg[14]\(10),
      S => \video_data_df[13]_i_1_n_0\
    );
\video_data_df_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_df[12]_i_1_n_0\,
      Q => \VIDEO_PORTS_16BIT_GEN.video_r_reg[14]\(11),
      S => \video_data_df[14]_i_1_n_0\
    );
\video_data_df_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_df[13]_i_2_n_0\,
      Q => \VIDEO_PORTS_16BIT_GEN.video_r_reg[14]\(12),
      S => \video_data_df[13]_i_1_n_0\
    );
\video_data_df_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_df[14]_i_2_n_0\,
      Q => \VIDEO_PORTS_16BIT_GEN.video_r_reg[14]\(13),
      S => \video_data_df[14]_i_1_n_0\
    );
\video_data_df_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_df[1]_i_1_n_0\,
      Q => \VIDEO_PORTS_16BIT_GEN.video_r_reg[14]\(1),
      S => \video_data_df[13]_i_1_n_0\
    );
\video_data_df_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_df[2]_i_1_n_0\,
      Q => \VIDEO_PORTS_16BIT_GEN.video_r_reg[14]\(2),
      S => \video_data_df[14]_i_1_n_0\
    );
\video_data_df_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_df[3]_i_1_n_0\,
      Q => \VIDEO_PORTS_16BIT_GEN.video_r_reg[14]\(3),
      S => \video_data_df[13]_i_1_n_0\
    );
\video_data_df_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_df[4]_i_1_n_0\,
      Q => \VIDEO_PORTS_16BIT_GEN.video_r_reg[14]\(4),
      S => \video_data_df[14]_i_1_n_0\
    );
\video_data_df_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_df[5]_i_1_n_0\,
      Q => \VIDEO_PORTS_16BIT_GEN.video_r_reg[14]\(5),
      S => \video_data_df[13]_i_1_n_0\
    );
\video_data_df_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_df[6]_i_1_n_0\,
      Q => \VIDEO_PORTS_16BIT_GEN.video_r_reg[14]\(6),
      S => \video_data_df[14]_i_1_n_0\
    );
\video_data_df_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_df[8]_i_1_n_0\,
      Q => \VIDEO_PORTS_16BIT_GEN.video_r_reg[14]\(7),
      S => \video_data_df[13]_i_1_n_0\
    );
\video_data_df_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_df[9]_i_1_n_0\,
      Q => \VIDEO_PORTS_16BIT_GEN.video_r_reg[14]\(8),
      S => \video_data_df[13]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_avnet_hdmi_out_0_0_avnet_hdmi_out is
  port (
    io_hdmio_spdif : out STD_LOGIC;
    io_hdmio_clk : out STD_LOGIC;
    io_hdmio_video : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    audio_spdif : in STD_LOGIC;
    video_hblank : in STD_LOGIC;
    video_vblank : in STD_LOGIC;
    video_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    oe : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_avnet_hdmi_out_0_0_avnet_hdmi_out : entity is "avnet_hdmi_out";
end design_1_avnet_hdmi_out_0_0_avnet_hdmi_out;

architecture STRUCTURE of design_1_avnet_hdmi_out_0_0_avnet_hdmi_out is
  signal D1 : STD_LOGIC;
  signal I : STD_LOGIC;
  signal T : STD_LOGIC;
  signal \VIDEO_PORTS_16BIT_GEN.video_r_reg[15]_srl2_n_0\ : STD_LOGIC;
  signal \VIDEO_PORTS_16BIT_GEN.video_r_reg[7]_srl2_n_0\ : STD_LOGIC;
  signal embed_syncs_l_n_14 : STD_LOGIC;
  signal embed_syncs_l_n_15 : STD_LOGIC;
  signal hblank_d : STD_LOGIC;
  signal hdmio_clk_o : STD_LOGIC;
  signal hdmio_clk_t : STD_LOGIC;
  signal hdmio_video_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal vblank_d_reg_n_0 : STD_LOGIC;
  signal video_data_d : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \video_data_d[8]_i_1_n_0\ : STD_LOGIC;
  signal \video_data_d[8]_i_2_n_0\ : STD_LOGIC;
  signal video_data_df : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal video_r : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \NLW_V6_GEN.ODDR_hdmio_clk_o_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_V6_GEN.ODDR_hdmio_clk_o_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_V6_GEN.ODDR_hdmio_clk_t_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_V6_GEN.ODDR_hdmio_clk_t_S_UNCONNECTED\ : STD_LOGIC;
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of \IO1[0].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type : string;
  attribute box_type of \IO1[0].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[10].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[10].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[11].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[11].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[12].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[12].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[13].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[13].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[14].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[14].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[15].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[15].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[1].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[1].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[2].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[2].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[3].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[3].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[4].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[4].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[5].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[5].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[6].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[6].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[7].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[7].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[8].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[8].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[9].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[9].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFT_hdmio_clk : label is "DONT_CARE";
  attribute box_type of OBUFT_hdmio_clk : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFT_hdmio_spdif : label is "DONT_CARE";
  attribute box_type of OBUFT_hdmio_spdif : label is "PRIMITIVE";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of \V6_GEN.ODDR_hdmio_clk_o\ : label is "TRUE";
  attribute box_type of \V6_GEN.ODDR_hdmio_clk_o\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \V6_GEN.ODDR_hdmio_clk_t\ : label is "TRUE";
  attribute box_type of \V6_GEN.ODDR_hdmio_clk_t\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \VIDEO_PORTS_16BIT_GEN.video_r_reg[15]_srl2\ : label is "\U0/VIDEO_PORTS_16BIT_GEN.video_r_reg ";
  attribute srl_name : string;
  attribute srl_name of \VIDEO_PORTS_16BIT_GEN.video_r_reg[15]_srl2\ : label is "\U0/VIDEO_PORTS_16BIT_GEN.video_r_reg[15]_srl2 ";
  attribute srl_bus_name of \VIDEO_PORTS_16BIT_GEN.video_r_reg[7]_srl2\ : label is "\U0/VIDEO_PORTS_16BIT_GEN.video_r_reg ";
  attribute srl_name of \VIDEO_PORTS_16BIT_GEN.video_r_reg[7]_srl2\ : label is "\U0/VIDEO_PORTS_16BIT_GEN.video_r_reg[7]_srl2 ";
  attribute IOB : string;
  attribute IOB of hdmio_spdif_o_reg : label is "TRUE";
  attribute IOB of \hdmio_video_o_reg[0]\ : label is "TRUE";
  attribute IOB of \hdmio_video_o_reg[10]\ : label is "TRUE";
  attribute IOB of \hdmio_video_o_reg[11]\ : label is "TRUE";
  attribute IOB of \hdmio_video_o_reg[12]\ : label is "TRUE";
  attribute IOB of \hdmio_video_o_reg[13]\ : label is "TRUE";
  attribute IOB of \hdmio_video_o_reg[14]\ : label is "TRUE";
  attribute IOB of \hdmio_video_o_reg[15]\ : label is "TRUE";
  attribute IOB of \hdmio_video_o_reg[1]\ : label is "TRUE";
  attribute IOB of \hdmio_video_o_reg[2]\ : label is "TRUE";
  attribute IOB of \hdmio_video_o_reg[3]\ : label is "TRUE";
  attribute IOB of \hdmio_video_o_reg[4]\ : label is "TRUE";
  attribute IOB of \hdmio_video_o_reg[5]\ : label is "TRUE";
  attribute IOB of \hdmio_video_o_reg[6]\ : label is "TRUE";
  attribute IOB of \hdmio_video_o_reg[7]\ : label is "TRUE";
  attribute IOB of \hdmio_video_o_reg[8]\ : label is "TRUE";
  attribute IOB of \hdmio_video_o_reg[9]\ : label is "TRUE";
begin
\IO1[0].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmio_video_o(0),
      O => io_hdmio_video(0),
      T => T
    );
\IO1[10].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmio_video_o(10),
      O => io_hdmio_video(10),
      T => T
    );
\IO1[11].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmio_video_o(11),
      O => io_hdmio_video(11),
      T => T
    );
\IO1[12].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmio_video_o(12),
      O => io_hdmio_video(12),
      T => T
    );
\IO1[13].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmio_video_o(13),
      O => io_hdmio_video(13),
      T => T
    );
\IO1[14].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmio_video_o(14),
      O => io_hdmio_video(14),
      T => T
    );
\IO1[15].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmio_video_o(15),
      O => io_hdmio_video(15),
      T => T
    );
\IO1[1].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmio_video_o(1),
      O => io_hdmio_video(1),
      T => T
    );
\IO1[2].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmio_video_o(2),
      O => io_hdmio_video(2),
      T => T
    );
\IO1[3].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmio_video_o(3),
      O => io_hdmio_video(3),
      T => T
    );
\IO1[4].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmio_video_o(4),
      O => io_hdmio_video(4),
      T => T
    );
\IO1[5].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmio_video_o(5),
      O => io_hdmio_video(5),
      T => T
    );
\IO1[6].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmio_video_o(6),
      O => io_hdmio_video(6),
      T => T
    );
\IO1[7].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmio_video_o(7),
      O => io_hdmio_video(7),
      T => T
    );
\IO1[8].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmio_video_o(8),
      O => io_hdmio_video(8),
      T => T
    );
\IO1[9].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmio_video_o(9),
      O => io_hdmio_video(9),
      T => T
    );
OBUFT_hdmio_clk: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmio_clk_o,
      O => io_hdmio_clk,
      T => hdmio_clk_t
    );
OBUFT_hdmio_spdif: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => I,
      O => io_hdmio_spdif,
      T => T
    );
\V6_GEN.ODDR_hdmio_clk_o\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "ASYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => '0',
      D2 => '1',
      Q => hdmio_clk_o,
      R => \NLW_V6_GEN.ODDR_hdmio_clk_o_R_UNCONNECTED\,
      S => \NLW_V6_GEN.ODDR_hdmio_clk_o_S_UNCONNECTED\
    );
\V6_GEN.ODDR_hdmio_clk_t\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '1',
      IS_D2_INVERTED => '1',
      SRTYPE => "ASYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => oe,
      D2 => oe,
      Q => hdmio_clk_t,
      R => \NLW_V6_GEN.ODDR_hdmio_clk_t_R_UNCONNECTED\,
      S => \NLW_V6_GEN.ODDR_hdmio_clk_t_S_UNCONNECTED\
    );
\V6_GEN.ODDR_hdmio_clk_t_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => oe,
      O => D1
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data_df(0),
      Q => video_r(0),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data_df(10),
      Q => video_r(10),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data_df(11),
      Q => video_r(11),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data_df(12),
      Q => video_r(12),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data_df(13),
      Q => video_r(13),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data_df(14),
      Q => video_r(14),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[15]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => embed_syncs_l_n_15,
      Q => \VIDEO_PORTS_16BIT_GEN.video_r_reg[15]_srl2_n_0\
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data_df(1),
      Q => video_r(1),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data_df(2),
      Q => video_r(2),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data_df(3),
      Q => video_r(3),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data_df(4),
      Q => video_r(4),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data_df(5),
      Q => video_r(5),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data_df(6),
      Q => video_r(6),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[7]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => embed_syncs_l_n_14,
      Q => \VIDEO_PORTS_16BIT_GEN.video_r_reg[7]_srl2_n_0\
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data_df(8),
      Q => video_r(8),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data_df(9),
      Q => video_r(9),
      R => '0'
    );
embed_syncs_l: entity work.design_1_avnet_hdmi_out_0_0_adv7511_embed_syncs
     port map (
      D(0) => hblank_d,
      Q(15 downto 0) => video_data_d(15 downto 0),
      \VIDEO_PORTS_16BIT_GEN.video_r_reg[14]\(13 downto 7) => video_data_df(14 downto 8),
      \VIDEO_PORTS_16BIT_GEN.video_r_reg[14]\(6 downto 0) => video_data_df(6 downto 0),
      clk => clk,
      \hdmio_video_o_reg[15]\ => embed_syncs_l_n_15,
      \hdmio_video_o_reg[7]\ => embed_syncs_l_n_14,
      vblank_d_reg(0) => vblank_d_reg_n_0
    );
hblank_d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_hblank,
      Q => hblank_d,
      R => '0'
    );
hdmio_spdif_o_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => audio_spdif,
      Q => I,
      R => '0'
    );
hdmio_spdif_t_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D1,
      Q => T,
      R => '0'
    );
\hdmio_video_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(0),
      Q => hdmio_video_o(0),
      R => '0'
    );
\hdmio_video_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(10),
      Q => hdmio_video_o(10),
      R => '0'
    );
\hdmio_video_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(11),
      Q => hdmio_video_o(11),
      R => '0'
    );
\hdmio_video_o_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(12),
      Q => hdmio_video_o(12),
      R => '0'
    );
\hdmio_video_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(13),
      Q => hdmio_video_o(13),
      R => '0'
    );
\hdmio_video_o_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(14),
      Q => hdmio_video_o(14),
      R => '0'
    );
\hdmio_video_o_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \VIDEO_PORTS_16BIT_GEN.video_r_reg[15]_srl2_n_0\,
      Q => hdmio_video_o(15),
      R => '0'
    );
\hdmio_video_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(1),
      Q => hdmio_video_o(1),
      R => '0'
    );
\hdmio_video_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(2),
      Q => hdmio_video_o(2),
      R => '0'
    );
\hdmio_video_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(3),
      Q => hdmio_video_o(3),
      R => '0'
    );
\hdmio_video_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(4),
      Q => hdmio_video_o(4),
      R => '0'
    );
\hdmio_video_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(5),
      Q => hdmio_video_o(5),
      R => '0'
    );
\hdmio_video_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(6),
      Q => hdmio_video_o(6),
      R => '0'
    );
\hdmio_video_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \VIDEO_PORTS_16BIT_GEN.video_r_reg[7]_srl2_n_0\,
      Q => hdmio_video_o(7),
      R => '0'
    );
\hdmio_video_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(8),
      Q => hdmio_video_o(8),
      R => '0'
    );
\hdmio_video_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(9),
      Q => hdmio_video_o(9),
      R => '0'
    );
vblank_d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_vblank,
      Q => vblank_d_reg_n_0,
      R => '0'
    );
\video_data_d[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => video_data(15),
      I1 => \video_data_d[8]_i_2_n_0\,
      I2 => video_data(8),
      O => \video_data_d[8]_i_1_n_0\
    );
\video_data_d[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => video_data(13),
      I1 => video_data(10),
      I2 => video_data(9),
      I3 => video_data(11),
      I4 => video_data(12),
      I5 => video_data(14),
      O => \video_data_d[8]_i_2_n_0\
    );
\video_data_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(0),
      Q => video_data_d(0),
      R => '0'
    );
\video_data_d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(10),
      Q => video_data_d(10),
      R => '0'
    );
\video_data_d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(11),
      Q => video_data_d(11),
      R => '0'
    );
\video_data_d_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(12),
      Q => video_data_d(12),
      R => '0'
    );
\video_data_d_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(13),
      Q => video_data_d(13),
      R => '0'
    );
\video_data_d_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(14),
      Q => video_data_d(14),
      R => '0'
    );
\video_data_d_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(15),
      Q => video_data_d(15),
      R => '0'
    );
\video_data_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(1),
      Q => video_data_d(1),
      R => '0'
    );
\video_data_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(2),
      Q => video_data_d(2),
      R => '0'
    );
\video_data_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(3),
      Q => video_data_d(3),
      R => '0'
    );
\video_data_d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(4),
      Q => video_data_d(4),
      R => '0'
    );
\video_data_d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(5),
      Q => video_data_d(5),
      R => '0'
    );
\video_data_d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(6),
      Q => video_data_d(6),
      R => '0'
    );
\video_data_d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(7),
      Q => video_data_d(7),
      R => '0'
    );
\video_data_d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \video_data_d[8]_i_1_n_0\,
      Q => video_data_d(8),
      R => '0'
    );
\video_data_d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(9),
      Q => video_data_d(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_avnet_hdmi_out_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    oe : in STD_LOGIC;
    embed_syncs : in STD_LOGIC;
    audio_spdif : in STD_LOGIC;
    video_vblank : in STD_LOGIC;
    video_hblank : in STD_LOGIC;
    video_de : in STD_LOGIC;
    video_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    io_hdmio_spdif : out STD_LOGIC;
    io_hdmio_video : out STD_LOGIC_VECTOR ( 15 downto 0 );
    io_hdmio_clk : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_avnet_hdmi_out_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_avnet_hdmi_out_0_0 : entity is "design_1_avnet_hdmi_out_0_0,avnet_hdmi_out,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_avnet_hdmi_out_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_avnet_hdmi_out_0_0 : entity is "avnet_hdmi_out,Vivado 2017.1";
end design_1_avnet_hdmi_out_0_0;

architecture STRUCTURE of design_1_avnet_hdmi_out_0_0 is
begin
U0: entity work.design_1_avnet_hdmi_out_0_0_avnet_hdmi_out
     port map (
      audio_spdif => audio_spdif,
      clk => clk,
      io_hdmio_clk => io_hdmio_clk,
      io_hdmio_spdif => io_hdmio_spdif,
      io_hdmio_video(15 downto 0) => io_hdmio_video(15 downto 0),
      oe => oe,
      video_data(15 downto 0) => video_data(15 downto 0),
      video_hblank => video_hblank,
      video_vblank => video_vblank
    );
end STRUCTURE;
