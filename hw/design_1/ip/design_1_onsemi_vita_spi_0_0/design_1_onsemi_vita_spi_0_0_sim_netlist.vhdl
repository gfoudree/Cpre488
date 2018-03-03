-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
-- Date        : Fri Mar  2 11:20:58 2018
-- Host        : CO2041-04 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               u:/Desktop/MP-2/hw/design_1/ip/design_1_onsemi_vita_spi_0_0/design_1_onsemi_vita_spi_0_0_sim_netlist.vhdl
-- Design      : design_1_onsemi_vita_spi_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_spi_lowlevel is
  port (
    \RxWord_reg[25]_0\ : out STD_LOGIC;
    MOSI_reg_0 : out STD_LOGIC;
    SPI_BUSY : out STD_LOGIC;
    vita_spi_sclk_o : out STD_LOGIC;
    vita_spi_ssel_n_o : out STD_LOGIC;
    vita_spi_mosi_o : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 25 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    SPI_START : in STD_LOGIC;
    \host_spi_timing_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \TxIndex_reg[3]_0\ : in STD_LOGIC;
    \SPI_DATA_TX_reg[2]\ : in STD_LOGIC;
    \SPI_DATA_TX_reg[6]\ : in STD_LOGIC;
    \SPI_DATA_TX_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_vita_spi_miso : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    SPI_START_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_spi_lowlevel : entity is "spi_lowlevel";
end design_1_onsemi_vita_spi_0_0_spi_lowlevel;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_spi_lowlevel is
  signal \/i__n_0\ : STD_LOGIC;
  signal BUSY_i_1_n_0 : STD_LOGIC;
  signal CS_i_1_n_0 : STD_LOGIC;
  signal ClockCounter : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \ClockCounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \ClockCounter[10]_i_1_n_0\ : STD_LOGIC;
  signal \ClockCounter[11]_i_1_n_0\ : STD_LOGIC;
  signal \ClockCounter[12]_i_1_n_0\ : STD_LOGIC;
  signal \ClockCounter[13]_i_1_n_0\ : STD_LOGIC;
  signal \ClockCounter[14]_i_1_n_0\ : STD_LOGIC;
  signal \ClockCounter[15]_i_1_n_0\ : STD_LOGIC;
  signal \ClockCounter[1]_i_1_n_0\ : STD_LOGIC;
  signal \ClockCounter[2]_i_1_n_0\ : STD_LOGIC;
  signal \ClockCounter[3]_i_1_n_0\ : STD_LOGIC;
  signal \ClockCounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \ClockCounter[5]_i_1_n_0\ : STD_LOGIC;
  signal \ClockCounter[6]_i_1_n_0\ : STD_LOGIC;
  signal \ClockCounter[7]_i_1_n_0\ : STD_LOGIC;
  signal \ClockCounter[8]_i_1_n_0\ : STD_LOGIC;
  signal \ClockCounter[9]_i_1_n_0\ : STD_LOGIC;
  signal ClockCounter_0 : STD_LOGIC;
  signal ClockOut : STD_LOGIC;
  signal ClockOut2_in : STD_LOGIC;
  signal \Counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \Counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \Counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \Counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \Counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \Counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \Counter[0]_i_8_n_0\ : STD_LOGIC;
  signal \Counter[0]_i_9_n_0\ : STD_LOGIC;
  signal \Counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \Counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \Counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \Counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \Counter[12]_i_6_n_0\ : STD_LOGIC;
  signal \Counter[12]_i_7_n_0\ : STD_LOGIC;
  signal \Counter[12]_i_8_n_0\ : STD_LOGIC;
  signal \Counter[12]_i_9_n_0\ : STD_LOGIC;
  signal \Counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \Counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \Counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \Counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \Counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \Counter[4]_i_6_n_0\ : STD_LOGIC;
  signal \Counter[4]_i_7_n_0\ : STD_LOGIC;
  signal \Counter[4]_i_8_n_0\ : STD_LOGIC;
  signal \Counter[4]_i_9_n_0\ : STD_LOGIC;
  signal \Counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \Counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \Counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \Counter[8]_i_5_n_0\ : STD_LOGIC;
  signal \Counter[8]_i_6_n_0\ : STD_LOGIC;
  signal \Counter[8]_i_7_n_0\ : STD_LOGIC;
  signal \Counter[8]_i_8_n_0\ : STD_LOGIC;
  signal \Counter[8]_i_9_n_0\ : STD_LOGIC;
  signal \Counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \Counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \Counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \Counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \Counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \Counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \Counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \Counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \Counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \Counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \Counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \Counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \Counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \Counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \Counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \Counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \Counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \Counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \Counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \Counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \Counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \Counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \Counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \Counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \Counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \Counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \Counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \Counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \Counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \Counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \Counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \Counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \Counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \Counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \Counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \Counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \Counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \Counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \Counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \Counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \Counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \Counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \Counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \Counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \Counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \Counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \Counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \Counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \Counter_reg_n_0_[9]\ : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \FSM_sequential_clockstate[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_clockstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_clockstate[2]_i_1_n_0\ : STD_LOGIC;
  signal MOSI_i_1_n_0 : STD_LOGIC;
  signal MOSI_i_2_n_0 : STD_LOGIC;
  signal MOSI_i_4_n_0 : STD_LOGIC;
  signal \^mosi_reg_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \RxIndex[0]_i_1_n_0\ : STD_LOGIC;
  signal \RxIndex[1]_i_1_n_0\ : STD_LOGIC;
  signal \RxIndex[2]_i_1_n_0\ : STD_LOGIC;
  signal \RxIndex[3]_i_1_n_0\ : STD_LOGIC;
  signal \RxIndex[4]_i_2_n_0\ : STD_LOGIC;
  signal \RxIndex_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \RxWord[0]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[10]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[11]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[12]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[13]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[14]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[15]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[15]_i_2_n_0\ : STD_LOGIC;
  signal \RxWord[16]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[17]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[18]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[18]_i_2_n_0\ : STD_LOGIC;
  signal \RxWord[19]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[19]_i_2_n_0\ : STD_LOGIC;
  signal \RxWord[1]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[20]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[20]_i_2_n_0\ : STD_LOGIC;
  signal \RxWord[21]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[21]_i_2_n_0\ : STD_LOGIC;
  signal \RxWord[22]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[22]_i_2_n_0\ : STD_LOGIC;
  signal \RxWord[23]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[23]_i_2_n_0\ : STD_LOGIC;
  signal \RxWord[23]_i_3_n_0\ : STD_LOGIC;
  signal \RxWord[24]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[24]_i_2_n_0\ : STD_LOGIC;
  signal \RxWord[25]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[25]_i_2_n_0\ : STD_LOGIC;
  signal \RxWord[25]_i_3_n_0\ : STD_LOGIC;
  signal \RxWord[2]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[3]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[4]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[5]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[6]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[7]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[7]_i_2_n_0\ : STD_LOGIC;
  signal \RxWord[8]_i_1_n_0\ : STD_LOGIC;
  signal \RxWord[9]_i_1_n_0\ : STD_LOGIC;
  signal \^rxword_reg[25]_0\ : STD_LOGIC;
  signal SCLK_i_1_n_0 : STD_LOGIC;
  signal \^spi_busy\ : STD_LOGIC;
  signal SampleIn : STD_LOGIC;
  signal \TxIndex[0]_i_1_n_0\ : STD_LOGIC;
  signal \TxIndex[1]_i_1_n_0\ : STD_LOGIC;
  signal \TxIndex[2]_i_1_n_0\ : STD_LOGIC;
  signal \TxIndex[3]_i_1_n_0\ : STD_LOGIC;
  signal \TxIndex[4]_i_2_n_0\ : STD_LOGIC;
  signal \TxIndex_reg__0\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal clockstate : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of clockstate : signal is "yes";
  signal \minusOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_carry__0_n_4\ : STD_LOGIC;
  signal \minusOp_carry__0_n_5\ : STD_LOGIC;
  signal \minusOp_carry__0_n_6\ : STD_LOGIC;
  signal \minusOp_carry__0_n_7\ : STD_LOGIC;
  signal \minusOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_carry__1_n_4\ : STD_LOGIC;
  signal \minusOp_carry__1_n_5\ : STD_LOGIC;
  signal \minusOp_carry__1_n_6\ : STD_LOGIC;
  signal \minusOp_carry__1_n_7\ : STD_LOGIC;
  signal \minusOp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_carry__2_n_5\ : STD_LOGIC;
  signal \minusOp_carry__2_n_6\ : STD_LOGIC;
  signal \minusOp_carry__2_n_7\ : STD_LOGIC;
  signal minusOp_carry_i_1_n_0 : STD_LOGIC;
  signal minusOp_carry_i_2_n_0 : STD_LOGIC;
  signal minusOp_carry_i_3_n_0 : STD_LOGIC;
  signal minusOp_carry_i_4_n_0 : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal minusOp_carry_n_4 : STD_LOGIC;
  signal minusOp_carry_n_5 : STD_LOGIC;
  signal minusOp_carry_n_6 : STD_LOGIC;
  signal minusOp_carry_n_7 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \^vita_spi_mosi_o\ : STD_LOGIC;
  signal \^vita_spi_sclk_o\ : STD_LOGIC;
  signal \^vita_spi_ssel_n_o\ : STD_LOGIC;
  signal \NLW_Counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Counter_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_minusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_minusOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_clockstate_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_clockstate_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_clockstate_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \RxIndex[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \RxIndex[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \RxIndex[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \RxIndex[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \RxWord[15]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \RxWord[18]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \RxWord[19]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \RxWord[20]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \RxWord[21]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \RxWord[22]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \RxWord[23]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \RxWord[23]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \RxWord[24]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \RxWord[25]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \RxWord[25]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \RxWord[7]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \TxIndex[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \TxIndex[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \TxIndex[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \TxIndex[3]_i_1\ : label is "soft_lutpair0";
begin
  D(25 downto 0) <= \^d\(25 downto 0);
  MOSI_reg_0 <= \^mosi_reg_0\;
  Q(3 downto 0) <= \^q\(3 downto 0);
  \RxWord_reg[25]_0\ <= \^rxword_reg[25]_0\;
  SPI_BUSY <= \^spi_busy\;
  vita_spi_mosi_o <= \^vita_spi_mosi_o\;
  vita_spi_sclk_o <= \^vita_spi_sclk_o\;
  vita_spi_ssel_n_o <= \^vita_spi_ssel_n_o\;
\/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => SPI_START,
      I1 => clockstate(0),
      I2 => clockstate(1),
      I3 => clockstate(2),
      I4 => p_0_in,
      O => \/i__n_0\
    );
\/i_/i_\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_1_in,
      O => ClockOut2_in
    );
\/i___0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010111000100010"
    )
        port map (
      I0 => clockstate(0),
      I1 => clockstate(1),
      I2 => SPI_START,
      I3 => clockstate(2),
      I4 => p_1_in,
      I5 => p_0_in,
      O => ClockCounter_0
    );
\/i___1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00440400"
    )
        port map (
      I0 => clockstate(0),
      I1 => p_0_in,
      I2 => p_1_in,
      I3 => clockstate(2),
      I4 => clockstate(1),
      O => ClockOut
    );
BUSY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => SPI_START,
      I1 => clockstate(1),
      I2 => clockstate(0),
      I3 => clockstate(2),
      I4 => \^spi_busy\,
      O => BUSY_i_1_n_0
    );
BUSY_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => BUSY_i_1_n_0,
      Q => \^spi_busy\
    );
CS_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => clockstate(2),
      I1 => clockstate(1),
      I2 => clockstate(0),
      I3 => p_0_in,
      I4 => \^vita_spi_ssel_n_o\,
      O => CS_i_1_n_0
    );
CS_reg: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => CS_i_1_n_0,
      PRE => AR(0),
      Q => \^vita_spi_ssel_n_o\
    );
\ClockCounter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => clockstate(2),
      I1 => ClockCounter(0),
      I2 => clockstate(1),
      O => \ClockCounter[0]_i_1_n_0\
    );
\ClockCounter[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clockstate(2),
      I1 => \minusOp_carry__1_n_6\,
      I2 => clockstate(1),
      O => \ClockCounter[10]_i_1_n_0\
    );
\ClockCounter[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clockstate(2),
      I1 => \minusOp_carry__1_n_5\,
      I2 => clockstate(1),
      O => \ClockCounter[11]_i_1_n_0\
    );
\ClockCounter[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clockstate(2),
      I1 => \minusOp_carry__1_n_4\,
      I2 => clockstate(1),
      O => \ClockCounter[12]_i_1_n_0\
    );
\ClockCounter[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clockstate(2),
      I1 => \minusOp_carry__2_n_7\,
      I2 => clockstate(1),
      O => \ClockCounter[13]_i_1_n_0\
    );
\ClockCounter[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clockstate(2),
      I1 => \minusOp_carry__2_n_6\,
      I2 => clockstate(1),
      O => \ClockCounter[14]_i_1_n_0\
    );
\ClockCounter[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clockstate(2),
      I1 => \minusOp_carry__2_n_5\,
      I2 => clockstate(1),
      O => \ClockCounter[15]_i_1_n_0\
    );
\ClockCounter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clockstate(2),
      I1 => minusOp_carry_n_7,
      I2 => clockstate(1),
      O => \ClockCounter[1]_i_1_n_0\
    );
\ClockCounter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clockstate(2),
      I1 => minusOp_carry_n_6,
      I2 => clockstate(1),
      O => \ClockCounter[2]_i_1_n_0\
    );
\ClockCounter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => clockstate(2),
      I1 => minusOp_carry_n_5,
      I2 => clockstate(1),
      O => \ClockCounter[3]_i_1_n_0\
    );
\ClockCounter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => clockstate(2),
      I1 => minusOp_carry_n_4,
      I2 => clockstate(1),
      O => \ClockCounter[4]_i_1_n_0\
    );
\ClockCounter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clockstate(2),
      I1 => \minusOp_carry__0_n_7\,
      I2 => clockstate(1),
      O => \ClockCounter[5]_i_1_n_0\
    );
\ClockCounter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clockstate(2),
      I1 => \minusOp_carry__0_n_6\,
      I2 => clockstate(1),
      O => \ClockCounter[6]_i_1_n_0\
    );
\ClockCounter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clockstate(2),
      I1 => \minusOp_carry__0_n_5\,
      I2 => clockstate(1),
      O => \ClockCounter[7]_i_1_n_0\
    );
\ClockCounter[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clockstate(2),
      I1 => \minusOp_carry__0_n_4\,
      I2 => clockstate(1),
      O => \ClockCounter[8]_i_1_n_0\
    );
\ClockCounter[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clockstate(2),
      I1 => \minusOp_carry__1_n_7\,
      I2 => clockstate(1),
      O => \ClockCounter[9]_i_1_n_0\
    );
\ClockCounter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ClockCounter_0,
      CLR => AR(0),
      D => \ClockCounter[0]_i_1_n_0\,
      Q => ClockCounter(0)
    );
\ClockCounter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ClockCounter_0,
      CLR => AR(0),
      D => \ClockCounter[10]_i_1_n_0\,
      Q => ClockCounter(10)
    );
\ClockCounter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ClockCounter_0,
      CLR => AR(0),
      D => \ClockCounter[11]_i_1_n_0\,
      Q => ClockCounter(11)
    );
\ClockCounter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ClockCounter_0,
      CLR => AR(0),
      D => \ClockCounter[12]_i_1_n_0\,
      Q => ClockCounter(12)
    );
\ClockCounter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ClockCounter_0,
      CLR => AR(0),
      D => \ClockCounter[13]_i_1_n_0\,
      Q => ClockCounter(13)
    );
\ClockCounter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ClockCounter_0,
      CLR => AR(0),
      D => \ClockCounter[14]_i_1_n_0\,
      Q => ClockCounter(14)
    );
\ClockCounter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ClockCounter_0,
      CLR => AR(0),
      D => \ClockCounter[15]_i_1_n_0\,
      Q => p_1_in
    );
\ClockCounter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ClockCounter_0,
      CLR => AR(0),
      D => \ClockCounter[1]_i_1_n_0\,
      Q => ClockCounter(1)
    );
\ClockCounter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ClockCounter_0,
      CLR => AR(0),
      D => \ClockCounter[2]_i_1_n_0\,
      Q => ClockCounter(2)
    );
\ClockCounter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ClockCounter_0,
      CLR => AR(0),
      D => \ClockCounter[3]_i_1_n_0\,
      Q => ClockCounter(3)
    );
\ClockCounter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ClockCounter_0,
      CLR => AR(0),
      D => \ClockCounter[4]_i_1_n_0\,
      Q => ClockCounter(4)
    );
\ClockCounter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ClockCounter_0,
      CLR => AR(0),
      D => \ClockCounter[5]_i_1_n_0\,
      Q => ClockCounter(5)
    );
\ClockCounter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ClockCounter_0,
      CLR => AR(0),
      D => \ClockCounter[6]_i_1_n_0\,
      Q => ClockCounter(6)
    );
\ClockCounter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ClockCounter_0,
      CLR => AR(0),
      D => \ClockCounter[7]_i_1_n_0\,
      Q => ClockCounter(7)
    );
\ClockCounter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ClockCounter_0,
      CLR => AR(0),
      D => \ClockCounter[8]_i_1_n_0\,
      Q => ClockCounter(8)
    );
\ClockCounter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ClockCounter_0,
      CLR => AR(0),
      D => \ClockCounter[9]_i_1_n_0\,
      Q => ClockCounter(9)
    );
ClockOut_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => ClockOut,
      Q => \^mosi_reg_0\
    );
\Counter[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \host_spi_timing_reg[15]\(3),
      I1 => p_0_in,
      I2 => \Counter_reg_n_0_[3]\,
      O => \Counter[0]_i_2_n_0\
    );
\Counter[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \host_spi_timing_reg[15]\(2),
      I1 => p_0_in,
      I2 => \Counter_reg_n_0_[2]\,
      O => \Counter[0]_i_3_n_0\
    );
\Counter[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \host_spi_timing_reg[15]\(1),
      I1 => p_0_in,
      I2 => \Counter_reg_n_0_[1]\,
      O => \Counter[0]_i_4_n_0\
    );
\Counter[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \host_spi_timing_reg[15]\(0),
      I1 => p_0_in,
      I2 => \Counter_reg_n_0_[0]\,
      O => \Counter[0]_i_5_n_0\
    );
\Counter[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \Counter_reg_n_0_[3]\,
      I1 => \host_spi_timing_reg[15]\(3),
      I2 => p_0_in,
      O => \Counter[0]_i_6_n_0\
    );
\Counter[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \Counter_reg_n_0_[2]\,
      I1 => \host_spi_timing_reg[15]\(2),
      I2 => p_0_in,
      O => \Counter[0]_i_7_n_0\
    );
\Counter[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \Counter_reg_n_0_[1]\,
      I1 => \host_spi_timing_reg[15]\(1),
      I2 => p_0_in,
      O => \Counter[0]_i_8_n_0\
    );
\Counter[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \Counter_reg_n_0_[0]\,
      I1 => \host_spi_timing_reg[15]\(0),
      I2 => p_0_in,
      O => \Counter[0]_i_9_n_0\
    );
\Counter[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \host_spi_timing_reg[15]\(15),
      I1 => p_0_in,
      I2 => \Counter_reg_n_0_[15]\,
      O => \Counter[12]_i_2_n_0\
    );
\Counter[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \host_spi_timing_reg[15]\(14),
      I1 => p_0_in,
      I2 => \Counter_reg_n_0_[14]\,
      O => \Counter[12]_i_3_n_0\
    );
\Counter[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \host_spi_timing_reg[15]\(13),
      I1 => p_0_in,
      I2 => \Counter_reg_n_0_[13]\,
      O => \Counter[12]_i_4_n_0\
    );
\Counter[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \host_spi_timing_reg[15]\(12),
      I1 => p_0_in,
      I2 => \Counter_reg_n_0_[12]\,
      O => \Counter[12]_i_5_n_0\
    );
\Counter[12]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \Counter_reg_n_0_[15]\,
      I1 => \host_spi_timing_reg[15]\(15),
      I2 => p_0_in,
      O => \Counter[12]_i_6_n_0\
    );
\Counter[12]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \Counter_reg_n_0_[14]\,
      I1 => \host_spi_timing_reg[15]\(14),
      I2 => p_0_in,
      O => \Counter[12]_i_7_n_0\
    );
\Counter[12]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \Counter_reg_n_0_[13]\,
      I1 => \host_spi_timing_reg[15]\(13),
      I2 => p_0_in,
      O => \Counter[12]_i_8_n_0\
    );
\Counter[12]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \Counter_reg_n_0_[12]\,
      I1 => \host_spi_timing_reg[15]\(12),
      I2 => p_0_in,
      O => \Counter[12]_i_9_n_0\
    );
\Counter[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in,
      O => \Counter[16]_i_2_n_0\
    );
\Counter[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \host_spi_timing_reg[15]\(7),
      I1 => p_0_in,
      I2 => \Counter_reg_n_0_[7]\,
      O => \Counter[4]_i_2_n_0\
    );
\Counter[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \host_spi_timing_reg[15]\(6),
      I1 => p_0_in,
      I2 => \Counter_reg_n_0_[6]\,
      O => \Counter[4]_i_3_n_0\
    );
\Counter[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \host_spi_timing_reg[15]\(5),
      I1 => p_0_in,
      I2 => \Counter_reg_n_0_[5]\,
      O => \Counter[4]_i_4_n_0\
    );
\Counter[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \host_spi_timing_reg[15]\(4),
      I1 => p_0_in,
      I2 => \Counter_reg_n_0_[4]\,
      O => \Counter[4]_i_5_n_0\
    );
\Counter[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \Counter_reg_n_0_[7]\,
      I1 => \host_spi_timing_reg[15]\(7),
      I2 => p_0_in,
      O => \Counter[4]_i_6_n_0\
    );
\Counter[4]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \Counter_reg_n_0_[6]\,
      I1 => \host_spi_timing_reg[15]\(6),
      I2 => p_0_in,
      O => \Counter[4]_i_7_n_0\
    );
\Counter[4]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \Counter_reg_n_0_[5]\,
      I1 => \host_spi_timing_reg[15]\(5),
      I2 => p_0_in,
      O => \Counter[4]_i_8_n_0\
    );
\Counter[4]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \Counter_reg_n_0_[4]\,
      I1 => \host_spi_timing_reg[15]\(4),
      I2 => p_0_in,
      O => \Counter[4]_i_9_n_0\
    );
\Counter[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \host_spi_timing_reg[15]\(11),
      I1 => p_0_in,
      I2 => \Counter_reg_n_0_[11]\,
      O => \Counter[8]_i_2_n_0\
    );
\Counter[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \host_spi_timing_reg[15]\(10),
      I1 => p_0_in,
      I2 => \Counter_reg_n_0_[10]\,
      O => \Counter[8]_i_3_n_0\
    );
\Counter[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \host_spi_timing_reg[15]\(9),
      I1 => p_0_in,
      I2 => \Counter_reg_n_0_[9]\,
      O => \Counter[8]_i_4_n_0\
    );
\Counter[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \host_spi_timing_reg[15]\(8),
      I1 => p_0_in,
      I2 => \Counter_reg_n_0_[8]\,
      O => \Counter[8]_i_5_n_0\
    );
\Counter[8]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \Counter_reg_n_0_[11]\,
      I1 => \host_spi_timing_reg[15]\(11),
      I2 => p_0_in,
      O => \Counter[8]_i_6_n_0\
    );
\Counter[8]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \Counter_reg_n_0_[10]\,
      I1 => \host_spi_timing_reg[15]\(10),
      I2 => p_0_in,
      O => \Counter[8]_i_7_n_0\
    );
\Counter[8]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \Counter_reg_n_0_[9]\,
      I1 => \host_spi_timing_reg[15]\(9),
      I2 => p_0_in,
      O => \Counter[8]_i_8_n_0\
    );
\Counter[8]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \Counter_reg_n_0_[8]\,
      I1 => \host_spi_timing_reg[15]\(8),
      I2 => p_0_in,
      O => \Counter[8]_i_9_n_0\
    );
\Counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \Counter_reg[0]_i_1_n_7\,
      Q => \Counter_reg_n_0_[0]\
    );
\Counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Counter_reg[0]_i_1_n_0\,
      CO(2) => \Counter_reg[0]_i_1_n_1\,
      CO(1) => \Counter_reg[0]_i_1_n_2\,
      CO(0) => \Counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Counter[0]_i_2_n_0\,
      DI(2) => \Counter[0]_i_3_n_0\,
      DI(1) => \Counter[0]_i_4_n_0\,
      DI(0) => \Counter[0]_i_5_n_0\,
      O(3) => \Counter_reg[0]_i_1_n_4\,
      O(2) => \Counter_reg[0]_i_1_n_5\,
      O(1) => \Counter_reg[0]_i_1_n_6\,
      O(0) => \Counter_reg[0]_i_1_n_7\,
      S(3) => \Counter[0]_i_6_n_0\,
      S(2) => \Counter[0]_i_7_n_0\,
      S(1) => \Counter[0]_i_8_n_0\,
      S(0) => \Counter[0]_i_9_n_0\
    );
\Counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \Counter_reg[8]_i_1_n_5\,
      Q => \Counter_reg_n_0_[10]\
    );
\Counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \Counter_reg[8]_i_1_n_4\,
      Q => \Counter_reg_n_0_[11]\
    );
\Counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \Counter_reg[12]_i_1_n_7\,
      Q => \Counter_reg_n_0_[12]\
    );
\Counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter_reg[8]_i_1_n_0\,
      CO(3) => \Counter_reg[12]_i_1_n_0\,
      CO(2) => \Counter_reg[12]_i_1_n_1\,
      CO(1) => \Counter_reg[12]_i_1_n_2\,
      CO(0) => \Counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Counter[12]_i_2_n_0\,
      DI(2) => \Counter[12]_i_3_n_0\,
      DI(1) => \Counter[12]_i_4_n_0\,
      DI(0) => \Counter[12]_i_5_n_0\,
      O(3) => \Counter_reg[12]_i_1_n_4\,
      O(2) => \Counter_reg[12]_i_1_n_5\,
      O(1) => \Counter_reg[12]_i_1_n_6\,
      O(0) => \Counter_reg[12]_i_1_n_7\,
      S(3) => \Counter[12]_i_6_n_0\,
      S(2) => \Counter[12]_i_7_n_0\,
      S(1) => \Counter[12]_i_8_n_0\,
      S(0) => \Counter[12]_i_9_n_0\
    );
\Counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \Counter_reg[12]_i_1_n_6\,
      Q => \Counter_reg_n_0_[13]\
    );
\Counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \Counter_reg[12]_i_1_n_5\,
      Q => \Counter_reg_n_0_[14]\
    );
\Counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \Counter_reg[12]_i_1_n_4\,
      Q => \Counter_reg_n_0_[15]\
    );
\Counter_reg[16]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \Counter_reg[16]_i_1_n_7\,
      PRE => AR(0),
      Q => p_0_in
    );
\Counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_Counter_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_Counter_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \Counter_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \Counter[16]_i_2_n_0\
    );
\Counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \Counter_reg[0]_i_1_n_6\,
      Q => \Counter_reg_n_0_[1]\
    );
\Counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \Counter_reg[0]_i_1_n_5\,
      Q => \Counter_reg_n_0_[2]\
    );
\Counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \Counter_reg[0]_i_1_n_4\,
      Q => \Counter_reg_n_0_[3]\
    );
\Counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \Counter_reg[4]_i_1_n_7\,
      Q => \Counter_reg_n_0_[4]\
    );
\Counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter_reg[0]_i_1_n_0\,
      CO(3) => \Counter_reg[4]_i_1_n_0\,
      CO(2) => \Counter_reg[4]_i_1_n_1\,
      CO(1) => \Counter_reg[4]_i_1_n_2\,
      CO(0) => \Counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Counter[4]_i_2_n_0\,
      DI(2) => \Counter[4]_i_3_n_0\,
      DI(1) => \Counter[4]_i_4_n_0\,
      DI(0) => \Counter[4]_i_5_n_0\,
      O(3) => \Counter_reg[4]_i_1_n_4\,
      O(2) => \Counter_reg[4]_i_1_n_5\,
      O(1) => \Counter_reg[4]_i_1_n_6\,
      O(0) => \Counter_reg[4]_i_1_n_7\,
      S(3) => \Counter[4]_i_6_n_0\,
      S(2) => \Counter[4]_i_7_n_0\,
      S(1) => \Counter[4]_i_8_n_0\,
      S(0) => \Counter[4]_i_9_n_0\
    );
\Counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \Counter_reg[4]_i_1_n_6\,
      Q => \Counter_reg_n_0_[5]\
    );
\Counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \Counter_reg[4]_i_1_n_5\,
      Q => \Counter_reg_n_0_[6]\
    );
\Counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \Counter_reg[4]_i_1_n_4\,
      Q => \Counter_reg_n_0_[7]\
    );
\Counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \Counter_reg[8]_i_1_n_7\,
      Q => \Counter_reg_n_0_[8]\
    );
\Counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter_reg[4]_i_1_n_0\,
      CO(3) => \Counter_reg[8]_i_1_n_0\,
      CO(2) => \Counter_reg[8]_i_1_n_1\,
      CO(1) => \Counter_reg[8]_i_1_n_2\,
      CO(0) => \Counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Counter[8]_i_2_n_0\,
      DI(2) => \Counter[8]_i_3_n_0\,
      DI(1) => \Counter[8]_i_4_n_0\,
      DI(0) => \Counter[8]_i_5_n_0\,
      O(3) => \Counter_reg[8]_i_1_n_4\,
      O(2) => \Counter_reg[8]_i_1_n_5\,
      O(1) => \Counter_reg[8]_i_1_n_6\,
      O(0) => \Counter_reg[8]_i_1_n_7\,
      S(3) => \Counter[8]_i_6_n_0\,
      S(2) => \Counter[8]_i_7_n_0\,
      S(1) => \Counter[8]_i_8_n_0\,
      S(0) => \Counter[8]_i_9_n_0\
    );
\Counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \Counter_reg[8]_i_1_n_6\,
      Q => \Counter_reg_n_0_[9]\
    );
\FSM_sequential_clockstate[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1055FFFF10550000"
    )
        port map (
      I0 => clockstate(0),
      I1 => clockstate(1),
      I2 => p_1_in,
      I3 => clockstate(2),
      I4 => \/i__n_0\,
      I5 => clockstate(0),
      O => \FSM_sequential_clockstate[0]_i_1_n_0\
    );
\FSM_sequential_clockstate[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0616FFFF06160000"
    )
        port map (
      I0 => clockstate(0),
      I1 => clockstate(1),
      I2 => clockstate(2),
      I3 => p_1_in,
      I4 => \/i__n_0\,
      I5 => clockstate(1),
      O => \FSM_sequential_clockstate[1]_i_1_n_0\
    );
\FSM_sequential_clockstate[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33C1FFFD33C00000"
    )
        port map (
      I0 => SPI_START,
      I1 => clockstate(0),
      I2 => clockstate(1),
      I3 => clockstate(2),
      I4 => p_0_in,
      I5 => clockstate(2),
      O => \FSM_sequential_clockstate[2]_i_1_n_0\
    );
\FSM_sequential_clockstate_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \FSM_sequential_clockstate[0]_i_1_n_0\,
      Q => clockstate(0)
    );
\FSM_sequential_clockstate_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \FSM_sequential_clockstate[1]_i_1_n_0\,
      Q => clockstate(1)
    );
\FSM_sequential_clockstate_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \FSM_sequential_clockstate[2]_i_1_n_0\,
      Q => clockstate(2)
    );
MOSI_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => MOSI_i_2_n_0,
      I1 => \TxIndex_reg__0\(4),
      I2 => \TxIndex_reg[3]_0\,
      I3 => \^mosi_reg_0\,
      I4 => SPI_START,
      I5 => \^vita_spi_mosi_o\,
      O => MOSI_i_1_n_0
    );
MOSI_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => MOSI_i_4_n_0,
      I1 => \^q\(3),
      I2 => \SPI_DATA_TX_reg[2]\,
      I3 => \^q\(2),
      I4 => \SPI_DATA_TX_reg[6]\,
      O => MOSI_i_2_n_0
    );
MOSI_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11100010"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \SPI_DATA_TX_reg[1]\(1),
      I3 => \^q\(0),
      I4 => \SPI_DATA_TX_reg[1]\(0),
      O => MOSI_i_4_n_0
    );
MOSI_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => MOSI_i_1_n_0,
      Q => \^vita_spi_mosi_o\
    );
\RxIndex[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \RxIndex_reg__0\(0),
      I1 => SPI_START,
      O => \RxIndex[0]_i_1_n_0\
    );
\RxIndex[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \RxIndex_reg__0\(1),
      I1 => \RxIndex_reg__0\(0),
      I2 => SPI_START,
      O => \RxIndex[1]_i_1_n_0\
    );
\RxIndex[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \RxIndex_reg__0\(2),
      I1 => \RxIndex_reg__0\(1),
      I2 => \RxIndex_reg__0\(0),
      I3 => SPI_START,
      O => \RxIndex[2]_i_1_n_0\
    );
\RxIndex[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \RxIndex_reg__0\(3),
      I1 => \RxIndex_reg__0\(1),
      I2 => \RxIndex_reg__0\(0),
      I3 => \RxIndex_reg__0\(2),
      I4 => SPI_START,
      O => \RxIndex[3]_i_1_n_0\
    );
\RxIndex[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => \RxIndex_reg__0\(4),
      I1 => \RxIndex_reg__0\(3),
      I2 => \RxIndex_reg__0\(2),
      I3 => \RxIndex_reg__0\(0),
      I4 => \RxIndex_reg__0\(1),
      I5 => SPI_START,
      O => \RxIndex[4]_i_2_n_0\
    );
\RxIndex_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \RxIndex[0]_i_1_n_0\,
      Q => \RxIndex_reg__0\(0)
    );
\RxIndex_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \RxIndex[1]_i_1_n_0\,
      Q => \RxIndex_reg__0\(1)
    );
\RxIndex_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \RxIndex[2]_i_1_n_0\,
      Q => \RxIndex_reg__0\(2)
    );
\RxIndex_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \RxIndex[3]_i_1_n_0\,
      Q => \RxIndex_reg__0\(3)
    );
\RxIndex_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \RxIndex[4]_i_2_n_0\,
      Q => \RxIndex_reg__0\(4)
    );
\RxWord[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[7]_i_2_n_0\,
      I2 => \RxWord[24]_i_2_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(25),
      O => \RxWord[0]_i_1_n_0\
    );
\RxWord[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[15]_i_2_n_0\,
      I2 => \RxWord[18]_i_2_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(15),
      O => \RxWord[10]_i_1_n_0\
    );
\RxWord[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[15]_i_2_n_0\,
      I2 => \RxWord[19]_i_2_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(14),
      O => \RxWord[11]_i_1_n_0\
    );
\RxWord[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[15]_i_2_n_0\,
      I2 => \RxWord[20]_i_2_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(13),
      O => \RxWord[12]_i_1_n_0\
    );
\RxWord[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[15]_i_2_n_0\,
      I2 => \RxWord[21]_i_2_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(12),
      O => \RxWord[13]_i_1_n_0\
    );
\RxWord[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[15]_i_2_n_0\,
      I2 => \RxWord[22]_i_2_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(11),
      O => \RxWord[14]_i_1_n_0\
    );
\RxWord[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[15]_i_2_n_0\,
      I2 => \RxWord[23]_i_3_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(10),
      O => \RxWord[15]_i_1_n_0\
    );
\RxWord[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \RxIndex_reg__0\(4),
      I1 => \RxIndex_reg__0\(3),
      O => \RxWord[15]_i_2_n_0\
    );
\RxWord[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[23]_i_2_n_0\,
      I2 => \RxWord[24]_i_2_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(9),
      O => \RxWord[16]_i_1_n_0\
    );
\RxWord[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[23]_i_2_n_0\,
      I2 => \RxWord[25]_i_3_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(8),
      O => \RxWord[17]_i_1_n_0\
    );
\RxWord[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[23]_i_2_n_0\,
      I2 => \RxWord[18]_i_2_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(7),
      O => \RxWord[18]_i_1_n_0\
    );
\RxWord[18]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \RxIndex_reg__0\(2),
      I1 => \RxIndex_reg__0\(0),
      I2 => \RxIndex_reg__0\(1),
      O => \RxWord[18]_i_2_n_0\
    );
\RxWord[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[23]_i_2_n_0\,
      I2 => \RxWord[19]_i_2_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(6),
      O => \RxWord[19]_i_1_n_0\
    );
\RxWord[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \RxIndex_reg__0\(2),
      I1 => \RxIndex_reg__0\(0),
      I2 => \RxIndex_reg__0\(1),
      O => \RxWord[19]_i_2_n_0\
    );
\RxWord[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[7]_i_2_n_0\,
      I2 => \RxWord[25]_i_3_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(24),
      O => \RxWord[1]_i_1_n_0\
    );
\RxWord[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[23]_i_2_n_0\,
      I2 => \RxWord[20]_i_2_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(5),
      O => \RxWord[20]_i_1_n_0\
    );
\RxWord[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \RxIndex_reg__0\(2),
      I1 => \RxIndex_reg__0\(0),
      I2 => \RxIndex_reg__0\(1),
      O => \RxWord[20]_i_2_n_0\
    );
\RxWord[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[23]_i_2_n_0\,
      I2 => \RxWord[21]_i_2_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(4),
      O => \RxWord[21]_i_1_n_0\
    );
\RxWord[21]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \RxIndex_reg__0\(2),
      I1 => \RxIndex_reg__0\(1),
      I2 => \RxIndex_reg__0\(0),
      O => \RxWord[21]_i_2_n_0\
    );
\RxWord[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[23]_i_2_n_0\,
      I2 => \RxWord[22]_i_2_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(3),
      O => \RxWord[22]_i_1_n_0\
    );
\RxWord[22]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \RxIndex_reg__0\(2),
      I1 => \RxIndex_reg__0\(0),
      I2 => \RxIndex_reg__0\(1),
      O => \RxWord[22]_i_2_n_0\
    );
\RxWord[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[23]_i_2_n_0\,
      I2 => \RxWord[23]_i_3_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(2),
      O => \RxWord[23]_i_1_n_0\
    );
\RxWord[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \RxIndex_reg__0\(3),
      I1 => \RxIndex_reg__0\(4),
      O => \RxWord[23]_i_2_n_0\
    );
\RxWord[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \RxIndex_reg__0\(2),
      I1 => \RxIndex_reg__0\(0),
      I2 => \RxIndex_reg__0\(1),
      O => \RxWord[23]_i_3_n_0\
    );
\RxWord[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[25]_i_2_n_0\,
      I2 => \RxWord[24]_i_2_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(1),
      O => \RxWord[24]_i_1_n_0\
    );
\RxWord[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \RxIndex_reg__0\(2),
      I1 => \RxIndex_reg__0\(0),
      I2 => \RxIndex_reg__0\(1),
      O => \RxWord[24]_i_2_n_0\
    );
\RxWord[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[25]_i_2_n_0\,
      I2 => \RxWord[25]_i_3_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(0),
      O => \RxWord[25]_i_1_n_0\
    );
\RxWord[25]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \RxIndex_reg__0\(4),
      I1 => \RxIndex_reg__0\(3),
      O => \RxWord[25]_i_2_n_0\
    );
\RxWord[25]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \RxIndex_reg__0\(2),
      I1 => \RxIndex_reg__0\(1),
      I2 => \RxIndex_reg__0\(0),
      O => \RxWord[25]_i_3_n_0\
    );
\RxWord[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[7]_i_2_n_0\,
      I2 => \RxWord[18]_i_2_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(23),
      O => \RxWord[2]_i_1_n_0\
    );
\RxWord[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[7]_i_2_n_0\,
      I2 => \RxWord[19]_i_2_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(22),
      O => \RxWord[3]_i_1_n_0\
    );
\RxWord[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[7]_i_2_n_0\,
      I2 => \RxWord[20]_i_2_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(21),
      O => \RxWord[4]_i_1_n_0\
    );
\RxWord[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[7]_i_2_n_0\,
      I2 => \RxWord[21]_i_2_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(20),
      O => \RxWord[5]_i_1_n_0\
    );
\RxWord[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[7]_i_2_n_0\,
      I2 => \RxWord[22]_i_2_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(19),
      O => \RxWord[6]_i_1_n_0\
    );
\RxWord[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[7]_i_2_n_0\,
      I2 => \RxWord[23]_i_3_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(18),
      O => \RxWord[7]_i_1_n_0\
    );
\RxWord[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \RxIndex_reg__0\(4),
      I1 => \RxIndex_reg__0\(3),
      O => \RxWord[7]_i_2_n_0\
    );
\RxWord[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[15]_i_2_n_0\,
      I2 => \RxWord[24]_i_2_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(17),
      O => \RxWord[8]_i_1_n_0\
    );
\RxWord[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => io_vita_spi_miso,
      I1 => \RxWord[15]_i_2_n_0\,
      I2 => \RxWord[25]_i_3_n_0\,
      I3 => \^rxword_reg[25]_0\,
      I4 => SPI_START,
      I5 => \^d\(16),
      O => \RxWord[9]_i_1_n_0\
    );
\RxWord_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[0]_i_1_n_0\,
      Q => \^d\(25)
    );
\RxWord_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[10]_i_1_n_0\,
      Q => \^d\(15)
    );
\RxWord_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[11]_i_1_n_0\,
      Q => \^d\(14)
    );
\RxWord_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[12]_i_1_n_0\,
      Q => \^d\(13)
    );
\RxWord_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[13]_i_1_n_0\,
      Q => \^d\(12)
    );
\RxWord_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[14]_i_1_n_0\,
      Q => \^d\(11)
    );
\RxWord_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[15]_i_1_n_0\,
      Q => \^d\(10)
    );
\RxWord_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[16]_i_1_n_0\,
      Q => \^d\(9)
    );
\RxWord_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[17]_i_1_n_0\,
      Q => \^d\(8)
    );
\RxWord_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[18]_i_1_n_0\,
      Q => \^d\(7)
    );
\RxWord_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[19]_i_1_n_0\,
      Q => \^d\(6)
    );
\RxWord_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[1]_i_1_n_0\,
      Q => \^d\(24)
    );
\RxWord_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[20]_i_1_n_0\,
      Q => \^d\(5)
    );
\RxWord_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[21]_i_1_n_0\,
      Q => \^d\(4)
    );
\RxWord_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[22]_i_1_n_0\,
      Q => \^d\(3)
    );
\RxWord_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[23]_i_1_n_0\,
      Q => \^d\(2)
    );
\RxWord_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[24]_i_1_n_0\,
      Q => \^d\(1)
    );
\RxWord_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[25]_i_1_n_0\,
      Q => \^d\(0)
    );
\RxWord_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[2]_i_1_n_0\,
      Q => \^d\(23)
    );
\RxWord_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[3]_i_1_n_0\,
      Q => \^d\(22)
    );
\RxWord_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[4]_i_1_n_0\,
      Q => \^d\(21)
    );
\RxWord_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[5]_i_1_n_0\,
      Q => \^d\(20)
    );
\RxWord_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[6]_i_1_n_0\,
      Q => \^d\(19)
    );
\RxWord_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[7]_i_1_n_0\,
      Q => \^d\(18)
    );
\RxWord_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[8]_i_1_n_0\,
      Q => \^d\(17)
    );
\RxWord_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \RxWord[9]_i_1_n_0\,
      Q => \^d\(16)
    );
SCLK_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6BFF6000"
    )
        port map (
      I0 => clockstate(0),
      I1 => clockstate(2),
      I2 => clockstate(1),
      I3 => p_0_in,
      I4 => \^vita_spi_sclk_o\,
      O => SCLK_i_1_n_0
    );
SCLK_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => SCLK_i_1_n_0,
      Q => \^vita_spi_sclk_o\
    );
SampleIn_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => clockstate(1),
      I1 => clockstate(0),
      I2 => p_0_in,
      I3 => clockstate(2),
      O => SampleIn
    );
SampleIn_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => SampleIn,
      Q => \^rxword_reg[25]_0\
    );
\TxIndex[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      I1 => SPI_START,
      O => \TxIndex[0]_i_1_n_0\
    );
\TxIndex[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => SPI_START,
      O => \TxIndex[1]_i_1_n_0\
    );
\TxIndex[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => SPI_START,
      O => \TxIndex[2]_i_1_n_0\
    );
\TxIndex[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => SPI_START,
      O => \TxIndex[3]_i_1_n_0\
    );
\TxIndex[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => \TxIndex_reg__0\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => SPI_START,
      O => \TxIndex[4]_i_2_n_0\
    );
\TxIndex_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_reg(0),
      CLR => AR(0),
      D => \TxIndex[0]_i_1_n_0\,
      Q => \^q\(0)
    );
\TxIndex_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_reg(0),
      CLR => AR(0),
      D => \TxIndex[1]_i_1_n_0\,
      Q => \^q\(1)
    );
\TxIndex_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_reg(0),
      CLR => AR(0),
      D => \TxIndex[2]_i_1_n_0\,
      Q => \^q\(2)
    );
\TxIndex_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_reg(0),
      CLR => AR(0),
      D => \TxIndex[3]_i_1_n_0\,
      Q => \^q\(3)
    );
\TxIndex_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_reg(0),
      CLR => AR(0),
      D => \TxIndex[4]_i_2_n_0\,
      Q => \TxIndex_reg__0\(4)
    );
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => ClockCounter(0),
      DI(3 downto 0) => ClockCounter(4 downto 1),
      O(3) => minusOp_carry_n_4,
      O(2) => minusOp_carry_n_5,
      O(1) => minusOp_carry_n_6,
      O(0) => minusOp_carry_n_7,
      S(3) => minusOp_carry_i_1_n_0,
      S(2) => minusOp_carry_i_2_n_0,
      S(1) => minusOp_carry_i_3_n_0,
      S(0) => minusOp_carry_i_4_n_0
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \minusOp_carry__0_n_0\,
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ClockCounter(8 downto 5),
      O(3) => \minusOp_carry__0_n_4\,
      O(2) => \minusOp_carry__0_n_5\,
      O(1) => \minusOp_carry__0_n_6\,
      O(0) => \minusOp_carry__0_n_7\,
      S(3) => \minusOp_carry__0_i_1_n_0\,
      S(2) => \minusOp_carry__0_i_2_n_0\,
      S(1) => \minusOp_carry__0_i_3_n_0\,
      S(0) => \minusOp_carry__0_i_4_n_0\
    );
\minusOp_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ClockCounter(8),
      O => \minusOp_carry__0_i_1_n_0\
    );
\minusOp_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ClockCounter(7),
      O => \minusOp_carry__0_i_2_n_0\
    );
\minusOp_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ClockCounter(6),
      O => \minusOp_carry__0_i_3_n_0\
    );
\minusOp_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ClockCounter(5),
      O => \minusOp_carry__0_i_4_n_0\
    );
\minusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__0_n_0\,
      CO(3) => \minusOp_carry__1_n_0\,
      CO(2) => \minusOp_carry__1_n_1\,
      CO(1) => \minusOp_carry__1_n_2\,
      CO(0) => \minusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ClockCounter(12 downto 9),
      O(3) => \minusOp_carry__1_n_4\,
      O(2) => \minusOp_carry__1_n_5\,
      O(1) => \minusOp_carry__1_n_6\,
      O(0) => \minusOp_carry__1_n_7\,
      S(3) => \minusOp_carry__1_i_1_n_0\,
      S(2) => \minusOp_carry__1_i_2_n_0\,
      S(1) => \minusOp_carry__1_i_3_n_0\,
      S(0) => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ClockCounter(12),
      O => \minusOp_carry__1_i_1_n_0\
    );
\minusOp_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ClockCounter(11),
      O => \minusOp_carry__1_i_2_n_0\
    );
\minusOp_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ClockCounter(10),
      O => \minusOp_carry__1_i_3_n_0\
    );
\minusOp_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ClockCounter(9),
      O => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__1_n_0\,
      CO(3 downto 2) => \NLW_minusOp_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \minusOp_carry__2_n_2\,
      CO(0) => \minusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => ClockCounter(14 downto 13),
      O(3) => \NLW_minusOp_carry__2_O_UNCONNECTED\(3),
      O(2) => \minusOp_carry__2_n_5\,
      O(1) => \minusOp_carry__2_n_6\,
      O(0) => \minusOp_carry__2_n_7\,
      S(3) => '0',
      S(2) => ClockOut2_in,
      S(1) => \minusOp_carry__2_i_1_n_0\,
      S(0) => \minusOp_carry__2_i_2_n_0\
    );
\minusOp_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ClockCounter(14),
      O => \minusOp_carry__2_i_1_n_0\
    );
\minusOp_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ClockCounter(13),
      O => \minusOp_carry__2_i_2_n_0\
    );
minusOp_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ClockCounter(4),
      O => minusOp_carry_i_1_n_0
    );
minusOp_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ClockCounter(3),
      O => minusOp_carry_i_2_n_0
    );
minusOp_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ClockCounter(2),
      O => minusOp_carry_i_3_n_0
    );
minusOp_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ClockCounter(1),
      O => minusOp_carry_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_spi_seq is
  port (
    SPI_START : out STD_LOGIC;
    wr_en : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \TxIndex_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    MOSI_reg : out STD_LOGIC;
    MOSI_reg_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    MOSI_reg_1 : out STD_LOGIC;
    MOSI_reg_2 : out STD_LOGIC;
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\ : out STD_LOGIC_VECTOR ( 25 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : in STD_LOGIC_VECTOR ( 28 downto 0 );
    full : in STD_LOGIC;
    SampleIn_reg : in STD_LOGIC;
    ClockOut_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \RxWord_reg[0]\ : in STD_LOGIC_VECTOR ( 25 downto 0 );
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    empty : in STD_LOGIC;
    SPI_BUSY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_spi_seq : entity is "spi_seq";
end design_1_onsemi_vita_spi_0_0_spi_seq;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_spi_seq is
  signal APP_RDFIFO_EN_i_1_n_0 : STD_LOGIC;
  signal APP_WRFIFO_EN_i_1_n_0 : STD_LOGIC;
  signal \FSM_sequential_spi_seq[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_spi_seq[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_spi_seq[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_spi_seq[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_spi_seq[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_spi_seq[3]_i_2_n_0\ : STD_LOGIC;
  signal MOSI_i_10_n_0 : STD_LOGIC;
  signal MOSI_i_11_n_0 : STD_LOGIC;
  signal MOSI_i_12_n_0 : STD_LOGIC;
  signal MOSI_i_9_n_0 : STD_LOGIC;
  signal MOSI_reg_i_7_n_0 : STD_LOGIC;
  signal MOSI_reg_i_8_n_0 : STD_LOGIC;
  signal SPI_DATA_TX : STD_LOGIC_VECTOR ( 25 downto 2 );
  signal \^spi_start\ : STD_LOGIC;
  signal SPI_START_i_1_n_0 : STD_LOGIC;
  signal SpiRw : STD_LOGIC;
  signal spi_seq : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of spi_seq : signal is "yes";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_spi_seq_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_spi_seq_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_spi_seq_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_spi_seq_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \RxIndex[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \TxIndex[4]_i_1\ : label is "soft_lutpair10";
begin
  SPI_START <= \^spi_start\;
APP_RDFIFO_EN_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001001"
    )
        port map (
      I0 => spi_seq(0),
      I1 => spi_seq(2),
      I2 => spi_seq(1),
      I3 => spi_seq(3),
      I4 => empty,
      O => APP_RDFIFO_EN_i_1_n_0
    );
APP_RDFIFO_EN_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => APP_RDFIFO_EN_i_1_n_0,
      Q => rd_en
    );
\APP_WRFIFO_DATA_IN_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(0),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(0)
    );
\APP_WRFIFO_DATA_IN_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(10),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(10)
    );
\APP_WRFIFO_DATA_IN_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(11),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(11)
    );
\APP_WRFIFO_DATA_IN_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(12),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(12)
    );
\APP_WRFIFO_DATA_IN_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(13),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(13)
    );
\APP_WRFIFO_DATA_IN_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(14),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(14)
    );
\APP_WRFIFO_DATA_IN_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(15),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(15)
    );
\APP_WRFIFO_DATA_IN_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(16),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(16)
    );
\APP_WRFIFO_DATA_IN_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(17),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(17)
    );
\APP_WRFIFO_DATA_IN_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(18),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(18)
    );
\APP_WRFIFO_DATA_IN_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(19),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(19)
    );
\APP_WRFIFO_DATA_IN_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(1),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(1)
    );
\APP_WRFIFO_DATA_IN_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(20),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(20)
    );
\APP_WRFIFO_DATA_IN_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(21),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(21)
    );
\APP_WRFIFO_DATA_IN_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(22),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(22)
    );
\APP_WRFIFO_DATA_IN_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(23),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(23)
    );
\APP_WRFIFO_DATA_IN_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(24),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(24)
    );
\APP_WRFIFO_DATA_IN_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(25),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(25)
    );
\APP_WRFIFO_DATA_IN_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(2),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(2)
    );
\APP_WRFIFO_DATA_IN_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(3),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(3)
    );
\APP_WRFIFO_DATA_IN_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(4),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(4)
    );
\APP_WRFIFO_DATA_IN_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(5),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(5)
    );
\APP_WRFIFO_DATA_IN_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(6),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(6)
    );
\APP_WRFIFO_DATA_IN_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(7),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(7)
    );
\APP_WRFIFO_DATA_IN_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(8),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(8)
    );
\APP_WRFIFO_DATA_IN_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => \RxWord_reg[0]\(9),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(9)
    );
APP_WRFIFO_EN_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => spi_seq(2),
      I1 => SPI_BUSY,
      I2 => SpiRw,
      I3 => spi_seq(0),
      I4 => spi_seq(1),
      I5 => spi_seq(3),
      O => APP_WRFIFO_EN_i_1_n_0
    );
APP_WRFIFO_EN_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => APP_WRFIFO_EN_i_1_n_0,
      Q => wr_en
    );
ERROR_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => APP_WRFIFO_EN_i_1_n_0,
      CLR => AR(0),
      D => full,
      Q => D(0)
    );
\FSM_sequential_spi_seq[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FF7F"
    )
        port map (
      I0 => spi_seq(3),
      I1 => spi_seq(1),
      I2 => empty,
      I3 => spi_seq(0),
      I4 => spi_seq(2),
      I5 => \FSM_sequential_spi_seq[0]_i_2_n_0\,
      O => \FSM_sequential_spi_seq[0]_i_1_n_0\
    );
\FSM_sequential_spi_seq[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFD00000000"
    )
        port map (
      I0 => spi_seq(1),
      I1 => spi_seq(3),
      I2 => spi_seq(2),
      I3 => dout(27),
      I4 => dout(28),
      I5 => spi_seq(0),
      O => \FSM_sequential_spi_seq[0]_i_2_n_0\
    );
\FSM_sequential_spi_seq[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202333333F3F3030"
    )
        port map (
      I0 => dout(26),
      I1 => spi_seq(3),
      I2 => spi_seq(2),
      I3 => dout(27),
      I4 => spi_seq(0),
      I5 => spi_seq(1),
      O => \FSM_sequential_spi_seq[1]_i_1_n_0\
    );
\FSM_sequential_spi_seq[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => spi_seq(2),
      I1 => spi_seq(0),
      I2 => spi_seq(1),
      I3 => spi_seq(3),
      O => \FSM_sequential_spi_seq[2]_i_1_n_0\
    );
\FSM_sequential_spi_seq[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0555510F555501"
    )
        port map (
      I0 => spi_seq(2),
      I1 => empty,
      I2 => spi_seq(3),
      I3 => spi_seq(1),
      I4 => spi_seq(0),
      I5 => SPI_BUSY,
      O => \FSM_sequential_spi_seq[3]_i_1_n_0\
    );
\FSM_sequential_spi_seq[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4202"
    )
        port map (
      I0 => spi_seq(3),
      I1 => spi_seq(2),
      I2 => spi_seq(1),
      I3 => spi_seq(0),
      O => \FSM_sequential_spi_seq[3]_i_2_n_0\
    );
\FSM_sequential_spi_seq_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_spi_seq[3]_i_1_n_0\,
      CLR => AR(0),
      D => \FSM_sequential_spi_seq[0]_i_1_n_0\,
      Q => spi_seq(0)
    );
\FSM_sequential_spi_seq_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_spi_seq[3]_i_1_n_0\,
      CLR => AR(0),
      D => \FSM_sequential_spi_seq[1]_i_1_n_0\,
      Q => spi_seq(1)
    );
\FSM_sequential_spi_seq_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_spi_seq[3]_i_1_n_0\,
      CLR => AR(0),
      D => \FSM_sequential_spi_seq[2]_i_1_n_0\,
      Q => spi_seq(2)
    );
\FSM_sequential_spi_seq_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_spi_seq[3]_i_1_n_0\,
      CLR => AR(0),
      D => \FSM_sequential_spi_seq[3]_i_2_n_0\,
      Q => spi_seq(3)
    );
MOSI_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => SPI_DATA_TX(18),
      I1 => SPI_DATA_TX(19),
      I2 => Q(1),
      I3 => SPI_DATA_TX(20),
      I4 => Q(0),
      I5 => SPI_DATA_TX(21),
      O => MOSI_i_10_n_0
    );
MOSI_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => SPI_DATA_TX(14),
      I1 => SPI_DATA_TX(15),
      I2 => Q(1),
      I3 => SPI_DATA_TX(16),
      I4 => Q(0),
      I5 => SPI_DATA_TX(17),
      O => MOSI_i_11_n_0
    );
MOSI_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => SPI_DATA_TX(10),
      I1 => SPI_DATA_TX(11),
      I2 => Q(1),
      I3 => SPI_DATA_TX(12),
      I4 => Q(0),
      I5 => SPI_DATA_TX(13),
      O => MOSI_i_12_n_0
    );
MOSI_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => SPI_DATA_TX(2),
      I1 => SPI_DATA_TX(3),
      I2 => Q(1),
      I3 => SPI_DATA_TX(4),
      I4 => Q(0),
      I5 => SPI_DATA_TX(5),
      O => MOSI_reg_2
    );
MOSI_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => SPI_DATA_TX(6),
      I1 => SPI_DATA_TX(7),
      I2 => Q(1),
      I3 => SPI_DATA_TX(8),
      I4 => Q(0),
      I5 => SPI_DATA_TX(9),
      O => MOSI_reg_1
    );
MOSI_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => SPI_DATA_TX(22),
      I1 => SPI_DATA_TX(23),
      I2 => Q(1),
      I3 => SPI_DATA_TX(24),
      I4 => Q(0),
      I5 => SPI_DATA_TX(25),
      O => MOSI_i_9_n_0
    );
MOSI_reg_i_3: unisim.vcomponents.MUXF8
     port map (
      I0 => MOSI_reg_i_7_n_0,
      I1 => MOSI_reg_i_8_n_0,
      O => MOSI_reg,
      S => Q(3)
    );
MOSI_reg_i_7: unisim.vcomponents.MUXF7
     port map (
      I0 => MOSI_i_9_n_0,
      I1 => MOSI_i_10_n_0,
      O => MOSI_reg_i_7_n_0,
      S => Q(2)
    );
MOSI_reg_i_8: unisim.vcomponents.MUXF7
     port map (
      I0 => MOSI_i_11_n_0,
      I1 => MOSI_i_12_n_0,
      O => MOSI_reg_i_8_n_0,
      S => Q(2)
    );
\RxIndex[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^spi_start\,
      I1 => SampleIn_reg,
      O => E(0)
    );
\SPI_DATA_TX_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(0),
      Q => MOSI_reg_0(0)
    );
\SPI_DATA_TX_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(10),
      Q => SPI_DATA_TX(10)
    );
\SPI_DATA_TX_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(11),
      Q => SPI_DATA_TX(11)
    );
\SPI_DATA_TX_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(12),
      Q => SPI_DATA_TX(12)
    );
\SPI_DATA_TX_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(13),
      Q => SPI_DATA_TX(13)
    );
\SPI_DATA_TX_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(14),
      Q => SPI_DATA_TX(14)
    );
\SPI_DATA_TX_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(15),
      Q => SPI_DATA_TX(15)
    );
\SPI_DATA_TX_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28]\(0),
      Q => SPI_DATA_TX(16)
    );
\SPI_DATA_TX_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(16),
      Q => SPI_DATA_TX(17)
    );
\SPI_DATA_TX_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(17),
      Q => SPI_DATA_TX(18)
    );
\SPI_DATA_TX_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(18),
      Q => SPI_DATA_TX(19)
    );
\SPI_DATA_TX_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(1),
      Q => MOSI_reg_0(1)
    );
\SPI_DATA_TX_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(19),
      Q => SPI_DATA_TX(20)
    );
\SPI_DATA_TX_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(20),
      Q => SPI_DATA_TX(21)
    );
\SPI_DATA_TX_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(21),
      Q => SPI_DATA_TX(22)
    );
\SPI_DATA_TX_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(22),
      Q => SPI_DATA_TX(23)
    );
\SPI_DATA_TX_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(23),
      Q => SPI_DATA_TX(24)
    );
\SPI_DATA_TX_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(24),
      Q => SPI_DATA_TX(25)
    );
\SPI_DATA_TX_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(2),
      Q => SPI_DATA_TX(2)
    );
\SPI_DATA_TX_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(3),
      Q => SPI_DATA_TX(3)
    );
\SPI_DATA_TX_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(4),
      Q => SPI_DATA_TX(4)
    );
\SPI_DATA_TX_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(5),
      Q => SPI_DATA_TX(5)
    );
\SPI_DATA_TX_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(6),
      Q => SPI_DATA_TX(6)
    );
\SPI_DATA_TX_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(7),
      Q => SPI_DATA_TX(7)
    );
\SPI_DATA_TX_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(8),
      Q => SPI_DATA_TX(8)
    );
\SPI_DATA_TX_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(9),
      Q => SPI_DATA_TX(9)
    );
SPI_START_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => spi_seq(3),
      I1 => spi_seq(1),
      I2 => spi_seq(0),
      I3 => dout(26),
      I4 => spi_seq(2),
      O => SPI_START_i_1_n_0
    );
SPI_START_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => SPI_START_i_1_n_0,
      Q => \^spi_start\
    );
SpiRw_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => SPI_START_i_1_n_0,
      CLR => AR(0),
      D => dout(25),
      Q => SpiRw
    );
\TxIndex[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^spi_start\,
      I1 => ClockOut_reg,
      O => \TxIndex_reg[4]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of design_1_onsemi_vita_spi_0_0_xpm_cdc_gray : entity is 2;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_cdc_gray : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of design_1_onsemi_vita_spi_0_0_xpm_cdc_gray : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_onsemi_vita_spi_0_0_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of design_1_onsemi_vita_spi_0_0_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of design_1_onsemi_vita_spi_0_0_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of design_1_onsemi_vita_spi_0_0_xpm_cdc_gray : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_onsemi_vita_spi_0_0_xpm_cdc_gray : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of design_1_onsemi_vita_spi_0_0_xpm_cdc_gray : entity is "GRAY";
end design_1_onsemi_vita_spi_0_0_xpm_cdc_gray;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair14";
begin
  dest_out_bin(3) <= \dest_graysync_ff[1]\(3);
  dest_out_bin(2 downto 0) <= \^dest_out_bin\(2 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(0),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(1),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(2)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__2\ : entity is 2;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__2\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__2\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__2\ : entity is "GRAY";
end \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__2\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__2\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair29";
begin
  dest_out_bin(3) <= \dest_graysync_ff[1]\(3);
  dest_out_bin(2 downto 0) <= \^dest_out_bin\(2 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(0),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(1),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(2)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__3\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__3\ : entity is 2;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__3\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__3\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__3\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__3\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__3\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__3\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__3\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__3\ : entity is "GRAY";
end \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__3\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__3\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair32";
begin
  dest_out_bin(3) <= \dest_graysync_ff[1]\(3);
  dest_out_bin(2 downto 0) <= \^dest_out_bin\(2 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(0),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(1),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(2)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__4\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__4\ : entity is 2;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__4\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__4\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__4\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__4\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__4\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__4\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__4\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__4\ : entity is "GRAY";
end \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__4\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__4\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair11";
begin
  dest_out_bin(3) <= \dest_graysync_ff[1]\(3);
  dest_out_bin(2 downto 0) <= \^dest_out_bin\(2 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(0),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(1),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(2)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0\ : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0\ : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0\ : entity is "GRAY";
end \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0\ is
  signal async_path : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal \dest_graysync_ff[3]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[3]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[3]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[3]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[2][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[3][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[3][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[3][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[3][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[3][4]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair13";
begin
  dest_out_bin(4) <= \dest_graysync_ff[3]\(4);
  dest_out_bin(3 downto 0) <= \^dest_out_bin\(3 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(4),
      Q => \dest_graysync_ff[2]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(0),
      Q => \dest_graysync_ff[3]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(1),
      Q => \dest_graysync_ff[3]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(2),
      Q => \dest_graysync_ff[3]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => \dest_graysync_ff[3]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(4),
      Q => \dest_graysync_ff[3]\(4),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(4),
      I1 => \dest_graysync_ff[3]\(1),
      I2 => \dest_graysync_ff[3]\(0),
      I3 => \dest_graysync_ff[3]\(3),
      I4 => \dest_graysync_ff[3]\(2),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(3),
      I1 => \dest_graysync_ff[3]\(4),
      I2 => \dest_graysync_ff[3]\(1),
      I3 => \dest_graysync_ff[3]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(4),
      I1 => \dest_graysync_ff[3]\(2),
      I2 => \dest_graysync_ff[3]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(4),
      I1 => \dest_graysync_ff[3]\(3),
      O => \^dest_out_bin\(3)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(4),
      O => gray_enc(3)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(4),
      Q => async_path(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0__2\ : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0__2\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0__2\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0__2\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0__2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0__2\ : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0__2\ : entity is "GRAY";
end \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0__2\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0__2\ is
  signal async_path : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal \dest_graysync_ff[3]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[3]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[3]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[3]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[2][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[3][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[3][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[3][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[3][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[3][4]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair31";
begin
  dest_out_bin(4) <= \dest_graysync_ff[3]\(4);
  dest_out_bin(3 downto 0) <= \^dest_out_bin\(3 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(4),
      Q => \dest_graysync_ff[2]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(0),
      Q => \dest_graysync_ff[3]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(1),
      Q => \dest_graysync_ff[3]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(2),
      Q => \dest_graysync_ff[3]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => \dest_graysync_ff[3]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(4),
      Q => \dest_graysync_ff[3]\(4),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(4),
      I1 => \dest_graysync_ff[3]\(1),
      I2 => \dest_graysync_ff[3]\(0),
      I3 => \dest_graysync_ff[3]\(3),
      I4 => \dest_graysync_ff[3]\(2),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(3),
      I1 => \dest_graysync_ff[3]\(4),
      I2 => \dest_graysync_ff[3]\(1),
      I3 => \dest_graysync_ff[3]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(4),
      I1 => \dest_graysync_ff[3]\(2),
      I2 => \dest_graysync_ff[3]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(4),
      I1 => \dest_graysync_ff[3]\(3),
      O => \^dest_out_bin\(3)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(4),
      O => gray_enc(3)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(4),
      Q => async_path(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1\ : entity is 2;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1\ : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1\ : entity is "GRAY";
end \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1\ is
  signal async_path : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair16";
begin
  dest_out_bin(4) <= \dest_graysync_ff[1]\(4);
  dest_out_bin(3 downto 0) <= \^dest_out_bin\(3 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(1),
      I2 => \dest_graysync_ff[1]\(0),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(1),
      I3 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(3)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(4),
      O => gray_enc(3)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(4),
      Q => async_path(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1__2\ : entity is 2;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1__2\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1__2\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1__2\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1__2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1__2\ : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1__2\ : entity is "GRAY";
end \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1__2\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1__2\ is
  signal async_path : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair34";
begin
  dest_out_bin(4) <= \dest_graysync_ff[1]\(4);
  dest_out_bin(3 downto 0) <= \^dest_out_bin\(3 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(1),
      I2 => \dest_graysync_ff[1]\(0),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(1),
      I3 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(3)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(4),
      O => gray_enc(3)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(4),
      Q => async_path(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst : entity is 2;
  attribute INIT : string;
  attribute INIT of design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst : entity is "0";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst : entity is "SYNC_RST";
end design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__2\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__2\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__2\ : entity is 2;
  attribute INIT : string;
  attribute INIT of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__2\ : entity is "0";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__2\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__2\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__2\ : entity is "SYNC_RST";
end \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__2\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__2\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__3\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__3\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__3\ : entity is 2;
  attribute INIT : string;
  attribute INIT of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__3\ : entity is "0";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__3\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__3\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__3\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__3\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__3\ : entity is "SYNC_RST";
end \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__3\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__3\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__4\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__4\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__4\ : entity is 2;
  attribute INIT : string;
  attribute INIT of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__4\ : entity is "0";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__4\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__4\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__4\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__4\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__4\ : entity is "SYNC_RST";
end \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__4\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__4\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_counter_updn is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rd_data_count_i_reg[2]\ : out STD_LOGIC;
    count_value_i : out STD_LOGIC_VECTOR ( 1 downto 0 );
    src_in_bin : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_value_i_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_fwft.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_counter_updn : entity is "xpm_counter_updn";
end design_1_onsemi_vita_spi_0_0_xpm_counter_updn;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_counter_updn is
  signal \^count_value_i\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \^rd_data_count_i_reg[2]\ : STD_LOGIC;
begin
  count_value_i(1 downto 0) <= \^count_value_i\(1 downto 0);
  \rd_data_count_i_reg[2]\ <= \^rd_data_count_i_reg[2]\;
\count_value_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005AA98585"
    )
        port map (
      I0 => \^count_value_i\(0),
      I1 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I2 => ram_empty_i,
      I3 => rd_en,
      I4 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I5 => SR(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AA8A"
    )
        port map (
      I0 => \count_value_i[1]_i_2_n_0\,
      I1 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I2 => ram_empty_i,
      I3 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I4 => SR(0),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFDF5F550020A0A"
    )
        port map (
      I0 => \^count_value_i\(0),
      I1 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I2 => ram_empty_i,
      I3 => rd_en,
      I4 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I5 => \^count_value_i\(1),
      O => \count_value_i[1]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^count_value_i\(0),
      R => '0'
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^count_value_i\(1),
      R => '0'
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^count_value_i\(0),
      I1 => \count_value_i_reg[2]\(0),
      I2 => \^count_value_i\(1),
      I3 => \count_value_i_reg[2]\(1),
      O => src_in_bin(0)
    );
\rd_data_count_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696699669966969"
    )
        port map (
      I0 => \^rd_data_count_i_reg[2]\,
      I1 => Q(2),
      I2 => \count_value_i_reg[2]\(2),
      I3 => \count_value_i_reg[2]\(1),
      I4 => \^count_value_i\(1),
      I5 => Q(1),
      O => D(0)
    );
\rd_data_count_i[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69FF696969690069"
    )
        port map (
      I0 => \^count_value_i\(1),
      I1 => \count_value_i_reg[2]\(1),
      I2 => Q(1),
      I3 => \count_value_i_reg[2]\(0),
      I4 => \^count_value_i\(0),
      I5 => Q(0),
      O => \^rd_data_count_i_reg[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_counter_updn_12 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rd_data_count_i_reg[2]\ : out STD_LOGIC;
    count_value_i : out STD_LOGIC_VECTOR ( 1 downto 0 );
    src_in_bin : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_value_i_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_fwft.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_counter_updn_12 : entity is "xpm_counter_updn";
end design_1_onsemi_vita_spi_0_0_xpm_counter_updn_12;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_counter_updn_12 is
  signal \^count_value_i\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \^rd_data_count_i_reg[2]\ : STD_LOGIC;
begin
  count_value_i(1 downto 0) <= \^count_value_i\(1 downto 0);
  \rd_data_count_i_reg[2]\ <= \^rd_data_count_i_reg[2]\;
\count_value_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005AA98585"
    )
        port map (
      I0 => \^count_value_i\(0),
      I1 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I2 => ram_empty_i,
      I3 => rd_en,
      I4 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I5 => SR(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AA8A"
    )
        port map (
      I0 => \count_value_i[1]_i_2_n_0\,
      I1 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I2 => ram_empty_i,
      I3 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I4 => SR(0),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFDF5F550020A0A"
    )
        port map (
      I0 => \^count_value_i\(0),
      I1 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I2 => ram_empty_i,
      I3 => rd_en,
      I4 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I5 => \^count_value_i\(1),
      O => \count_value_i[1]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^count_value_i\(0),
      R => '0'
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^count_value_i\(1),
      R => '0'
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^count_value_i\(0),
      I1 => \count_value_i_reg[2]\(0),
      I2 => \^count_value_i\(1),
      I3 => \count_value_i_reg[2]\(1),
      O => src_in_bin(0)
    );
\rd_data_count_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696699669966969"
    )
        port map (
      I0 => \^rd_data_count_i_reg[2]\,
      I1 => Q(2),
      I2 => \count_value_i_reg[2]\(2),
      I3 => \count_value_i_reg[2]\(1),
      I4 => \^count_value_i\(1),
      I5 => Q(1),
      O => D(0)
    );
\rd_data_count_i[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69FF696969690069"
    )
        port map (
      I0 => \^count_value_i\(1),
      I1 => \count_value_i_reg[2]\(1),
      I2 => Q(1),
      I3 => \count_value_i_reg[2]\(0),
      I4 => \^count_value_i\(0),
      I5 => Q(0),
      O => \^rd_data_count_i_reg[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[0]_0\ : out STD_LOGIC;
    \rd_data_count_i_reg[4]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    src_in_bin : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_out_i_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \gen_fwft.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC;
    \reg_out_i_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_out_i_reg[3]_0\ : in STD_LOGIC;
    count_value_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[0]_0\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.diff_pntr_pe[3]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.diff_pntr_pe[3]_i_3_n_0\ : STD_LOGIC;
  signal \rd_data_count_i[4]_i_3_n_0\ : STD_LOGIC;
  signal \rd_data_count_i[4]_i_6_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \gen_pf_ic_rc.diff_pntr_pe[3]_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rd_data_count_i[4]_i_6\ : label is "soft_lutpair38";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \count_value_i_reg[0]_0\ <= \^count_value_i_reg[0]_0\;
\count_value_i[0]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA4555"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I3 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I4 => \^q\(0),
      O => \count_value_i[0]_i_1__3_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08FFFF00F70000"
    )
        port map (
      I0 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I1 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I2 => rd_en,
      I3 => ram_empty_i,
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^count_value_i_reg[0]_0\,
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^count_value_i_reg[0]_0\,
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^count_value_i_reg[0]_0\,
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \count_value_i_reg_n_0_[4]\,
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i[0]_i_1__3_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => \^q\(1),
      R => SR(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => \^q\(2),
      R => SR(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => \^q\(3),
      R => SR(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \count_value_i_reg_n_0_[4]\,
      R => SR(0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAFE00001501"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\,
      I2 => \^q\(1),
      I3 => count_value_i(1),
      I4 => \^q\(2),
      I5 => \count_value_i_reg_n_0_[4]\,
      O => src_in_bin(3)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBBAFB04044504"
    )
        port map (
      I0 => \^q\(2),
      I1 => count_value_i(1),
      I2 => \^q\(1),
      I3 => count_value_i(0),
      I4 => \^q\(0),
      I5 => \^q\(3),
      O => src_in_bin(2)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0FB4F04"
    )
        port map (
      I0 => \^q\(0),
      I1 => count_value_i(0),
      I2 => \^q\(1),
      I3 => count_value_i(1),
      I4 => \^q\(2),
      O => src_in_bin(1)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => count_value_i(0),
      O => src_in_bin(0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => count_value_i(0),
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\
    );
\gen_pf_ic_rc.diff_pntr_pe[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \gen_pf_ic_rc.diff_pntr_pe[3]_i_2_n_0\,
      I1 => \reg_out_i_reg[3]\(1),
      I2 => \^q\(1),
      I3 => \reg_out_i_reg[3]\(2),
      I4 => \^q\(2),
      O => D(0)
    );
\gen_pf_ic_rc.diff_pntr_pe[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2BFF002BD400FFD4"
    )
        port map (
      I0 => \^q\(1),
      I1 => \reg_out_i_reg[3]\(1),
      I2 => \gen_pf_ic_rc.diff_pntr_pe[3]_i_2_n_0\,
      I3 => \reg_out_i_reg[3]\(2),
      I4 => \^q\(2),
      I5 => \gen_pf_ic_rc.diff_pntr_pe[3]_i_3_n_0\,
      O => D(1)
    );
\gen_pf_ic_rc.diff_pntr_pe[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDDDDDD45444444"
    )
        port map (
      I0 => \^q\(0),
      I1 => ram_empty_i,
      I2 => rd_en,
      I3 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I4 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I5 => \reg_out_i_reg[3]\(0),
      O => \gen_pf_ic_rc.diff_pntr_pe[3]_i_2_n_0\
    );
\gen_pf_ic_rc.diff_pntr_pe[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \reg_out_i_reg[3]\(3),
      O => \gen_pf_ic_rc.diff_pntr_pe[3]_i_3_n_0\
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F7"
    )
        port map (
      I0 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I1 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^count_value_i_reg[0]_0\
    );
\rd_data_count_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1EE1788787781EE1"
    )
        port map (
      I0 => \count_value_i_reg[1]_0\,
      I1 => \rd_data_count_i[4]_i_3_n_0\,
      I2 => \reg_out_i_reg[4]\(2),
      I3 => \^q\(3),
      I4 => \reg_out_i_reg[4]\(1),
      I5 => \^q\(2),
      O => \rd_data_count_i_reg[4]\(0)
    );
\rd_data_count_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1701FF7FE8FE0080"
    )
        port map (
      I0 => \rd_data_count_i[4]_i_3_n_0\,
      I1 => \count_value_i_reg[1]_0\,
      I2 => \reg_out_i_reg[4]\(1),
      I3 => \^q\(2),
      I4 => \reg_out_i_reg[3]_0\,
      I5 => \rd_data_count_i[4]_i_6_n_0\,
      O => \rd_data_count_i_reg[4]\(1)
    );
\rd_data_count_i[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \^q\(1),
      I1 => count_value_i(1),
      I2 => \reg_out_i_reg[4]\(0),
      O => \rd_data_count_i[4]_i_3_n_0\
    );
\rd_data_count_i[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \reg_out_i_reg[4]\(2),
      I2 => \count_value_i_reg_n_0_[4]\,
      I3 => \reg_out_i_reg[4]\(3),
      O => \rd_data_count_i[4]_i_6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized0_13\ is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[0]_0\ : out STD_LOGIC;
    \rd_data_count_i_reg[4]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    src_in_bin : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_out_i_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \gen_fwft.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC;
    \reg_out_i_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_out_i_reg[3]_0\ : in STD_LOGIC;
    count_value_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized0_13\ : entity is "xpm_counter_updn";
end \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized0_13\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized0_13\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[0]_0\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.diff_pntr_pe[3]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.diff_pntr_pe[3]_i_3_n_0\ : STD_LOGIC;
  signal \rd_data_count_i[4]_i_3_n_0\ : STD_LOGIC;
  signal \rd_data_count_i[4]_i_6_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gen_pf_ic_rc.diff_pntr_pe[3]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rd_data_count_i[4]_i_6\ : label is "soft_lutpair20";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \count_value_i_reg[0]_0\ <= \^count_value_i_reg[0]_0\;
\count_value_i[0]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA4555"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I3 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I4 => \^q\(0),
      O => \count_value_i[0]_i_1__3_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08FFFF00F70000"
    )
        port map (
      I0 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I1 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I2 => rd_en,
      I3 => ram_empty_i,
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^count_value_i_reg[0]_0\,
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^count_value_i_reg[0]_0\,
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^count_value_i_reg[0]_0\,
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \count_value_i_reg_n_0_[4]\,
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i[0]_i_1__3_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => \^q\(1),
      R => SR(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => \^q\(2),
      R => SR(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => \^q\(3),
      R => SR(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \count_value_i_reg_n_0_[4]\,
      R => SR(0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAFE00001501"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\,
      I2 => \^q\(1),
      I3 => count_value_i(1),
      I4 => \^q\(2),
      I5 => \count_value_i_reg_n_0_[4]\,
      O => src_in_bin(3)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBBAFB04044504"
    )
        port map (
      I0 => \^q\(2),
      I1 => count_value_i(1),
      I2 => \^q\(1),
      I3 => count_value_i(0),
      I4 => \^q\(0),
      I5 => \^q\(3),
      O => src_in_bin(2)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0FB4F04"
    )
        port map (
      I0 => \^q\(0),
      I1 => count_value_i(0),
      I2 => \^q\(1),
      I3 => count_value_i(1),
      I4 => \^q\(2),
      O => src_in_bin(1)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => count_value_i(0),
      O => src_in_bin(0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => count_value_i(0),
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\
    );
\gen_pf_ic_rc.diff_pntr_pe[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \gen_pf_ic_rc.diff_pntr_pe[3]_i_2_n_0\,
      I1 => \reg_out_i_reg[3]\(1),
      I2 => \^q\(1),
      I3 => \reg_out_i_reg[3]\(2),
      I4 => \^q\(2),
      O => D(0)
    );
\gen_pf_ic_rc.diff_pntr_pe[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2BFF002BD400FFD4"
    )
        port map (
      I0 => \^q\(1),
      I1 => \reg_out_i_reg[3]\(1),
      I2 => \gen_pf_ic_rc.diff_pntr_pe[3]_i_2_n_0\,
      I3 => \reg_out_i_reg[3]\(2),
      I4 => \^q\(2),
      I5 => \gen_pf_ic_rc.diff_pntr_pe[3]_i_3_n_0\,
      O => D(1)
    );
\gen_pf_ic_rc.diff_pntr_pe[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDDDDDD45444444"
    )
        port map (
      I0 => \^q\(0),
      I1 => ram_empty_i,
      I2 => rd_en,
      I3 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I4 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I5 => \reg_out_i_reg[3]\(0),
      O => \gen_pf_ic_rc.diff_pntr_pe[3]_i_2_n_0\
    );
\gen_pf_ic_rc.diff_pntr_pe[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \reg_out_i_reg[3]\(3),
      O => \gen_pf_ic_rc.diff_pntr_pe[3]_i_3_n_0\
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F7"
    )
        port map (
      I0 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I1 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^count_value_i_reg[0]_0\
    );
\rd_data_count_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1EE1788787781EE1"
    )
        port map (
      I0 => \count_value_i_reg[1]_0\,
      I1 => \rd_data_count_i[4]_i_3_n_0\,
      I2 => \reg_out_i_reg[4]\(2),
      I3 => \^q\(3),
      I4 => \reg_out_i_reg[4]\(1),
      I5 => \^q\(2),
      O => \rd_data_count_i_reg[4]\(0)
    );
\rd_data_count_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1701FF7FE8FE0080"
    )
        port map (
      I0 => \rd_data_count_i[4]_i_3_n_0\,
      I1 => \count_value_i_reg[1]_0\,
      I2 => \reg_out_i_reg[4]\(1),
      I3 => \^q\(2),
      I4 => \reg_out_i_reg[3]_0\,
      I5 => \rd_data_count_i[4]_i_6_n_0\,
      O => \rd_data_count_i_reg[4]\(1)
    );
\rd_data_count_i[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \^q\(1),
      I1 => count_value_i(1),
      I2 => \reg_out_i_reg[4]\(0),
      O => \rd_data_count_i[4]_i_3_n_0\
    );
\rd_data_count_i[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \reg_out_i_reg[4]\(2),
      I2 => \count_value_i_reg_n_0_[4]\,
      I3 => \reg_out_i_reg[4]\(3),
      O => \rd_data_count_i[4]_i_6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized0_16\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC;
    \syncstages_ff_reg[1]\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\ : in STD_LOGIC;
    \reg_out_i_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    wr_clk : in STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized0_16\ : entity is "xpm_counter_updn";
end \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized0_16\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized0_16\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00200000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \syncstages_ff_reg[1]\,
      I2 => wr_en,
      I3 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\,
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_1\(0),
      Q => \^q\(0),
      R => \syncstages_ff_reg[1]\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_1\(1),
      Q => \^q\(1),
      R => \syncstages_ff_reg[1]\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => \syncstages_ff_reg[1]\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => \syncstages_ff_reg[1]\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => \count_value_i[4]_i_1_n_0\,
      Q => \^q\(4),
      R => \syncstages_ff_reg[1]\
    );
\wr_data_count_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F04B0FBB0FB4F04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \reg_out_i_reg[2]\(0),
      I2 => \^q\(1),
      I3 => \reg_out_i_reg[2]\(1),
      I4 => \reg_out_i_reg[2]\(2),
      I5 => \^q\(2),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized0_2\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC;
    \syncstages_ff_reg[1]\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\ : in STD_LOGIC;
    \reg_out_i_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    wr_clk : in STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized0_2\ : entity is "xpm_counter_updn";
end \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized0_2\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized0_2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00200000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \syncstages_ff_reg[1]\,
      I2 => wr_en,
      I3 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\,
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_1\(0),
      Q => \^q\(0),
      R => \syncstages_ff_reg[1]\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_1\(1),
      Q => \^q\(1),
      R => \syncstages_ff_reg[1]\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => \syncstages_ff_reg[1]\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => \syncstages_ff_reg[1]\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => \count_value_i[4]_i_1_n_0\,
      Q => \^q\(4),
      R => \syncstages_ff_reg[1]\
    );
\wr_data_count_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F04B0FBB0FB4F04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \reg_out_i_reg[2]\(0),
      I2 => \^q\(1),
      I3 => \reg_out_i_reg[2]\(1),
      I4 => \reg_out_i_reg[2]\(2),
      I5 => \^q\(2),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_fwft.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    \gen_fwft.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized1\ : entity is "xpm_counter_updn";
end \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized1\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__3\ : label is "soft_lutpair39";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA4555"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I3 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I4 => \^q\(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[1]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08FFFF00F70000"
    )
        port map (
      I0 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I1 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I2 => rd_en,
      I3 => ram_empty_i,
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \count_value_i[1]_i_1__3_n_0\
    );
\count_value_i[2]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_fwft.curr_fwft_state_reg[0]\,
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \count_value_i[2]_i_1__3_n_0\
    );
\count_value_i[3]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_fwft.curr_fwft_state_reg[0]\,
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \count_value_i[3]_i_1__3_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => \gen_fwft.curr_fwft_state_reg[0]\,
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => \^q\(0),
      S => SR(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \gen_fwft.curr_fwft_state_reg[0]\,
      D => \count_value_i[1]_i_1__3_n_0\,
      Q => \^q\(1),
      R => SR(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \gen_fwft.curr_fwft_state_reg[0]\,
      D => \count_value_i[2]_i_1__3_n_0\,
      Q => \^q\(2),
      R => SR(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \gen_fwft.curr_fwft_state_reg[0]\,
      D => \count_value_i[3]_i_1__3_n_0\,
      Q => \^q\(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized1_14\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_fwft.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    \gen_fwft.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized1_14\ : entity is "xpm_counter_updn";
end \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized1_14\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized1_14\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__3\ : label is "soft_lutpair21";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA4555"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I3 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I4 => \^q\(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[1]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08FFFF00F70000"
    )
        port map (
      I0 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I1 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I2 => rd_en,
      I3 => ram_empty_i,
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \count_value_i[1]_i_1__3_n_0\
    );
\count_value_i[2]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_fwft.curr_fwft_state_reg[0]\,
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \count_value_i[2]_i_1__3_n_0\
    );
\count_value_i[3]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_fwft.curr_fwft_state_reg[0]\,
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \count_value_i[3]_i_1__3_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => \gen_fwft.curr_fwft_state_reg[0]\,
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => \^q\(0),
      S => SR(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \gen_fwft.curr_fwft_state_reg[0]\,
      D => \count_value_i[1]_i_1__3_n_0\,
      Q => \^q\(1),
      R => SR(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \gen_fwft.curr_fwft_state_reg[0]\,
      D => \count_value_i[2]_i_1__3_n_0\,
      Q => \^q\(2),
      R => SR(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \gen_fwft.curr_fwft_state_reg[0]\,
      D => \count_value_i[3]_i_1__3_n_0\,
      Q => \^q\(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized1_17\ is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_out_i_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_out_i_reg[0]\ : in STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC;
    \syncstages_ff_reg[1]\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\ : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized1_17\ : entity is "xpm_counter_updn";
end \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized1_17\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized1_17\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.diff_pntr_pf_q[4]_i_3_n_0\ : STD_LOGIC;
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00200000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \syncstages_ff_reg[1]\,
      I2 => wr_en,
      I3 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\,
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_1\(0),
      Q => \^q\(0),
      S => \syncstages_ff_reg[1]\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_1\(1),
      Q => \^q\(1),
      R => \syncstages_ff_reg[1]\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => \syncstages_ff_reg[1]\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => \syncstages_ff_reg[1]\
    );
\gen_pf_ic_rc.diff_pntr_pf_q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I1 => \^q\(0),
      I2 => \reg_out_i_reg[3]\(0),
      I3 => \reg_out_i_reg[3]\(1),
      I4 => \^q\(1),
      O => D(0)
    );
\gen_pf_ic_rc.diff_pntr_pf_q[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \reg_out_i_reg[0]\,
      I1 => \^q\(1),
      I2 => \reg_out_i_reg[3]\(1),
      I3 => \reg_out_i_reg[3]\(2),
      I4 => \^q\(2),
      O => D(1)
    );
\gen_pf_ic_rc.diff_pntr_pf_q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2BFF002BD400FFD4"
    )
        port map (
      I0 => \reg_out_i_reg[3]\(1),
      I1 => \^q\(1),
      I2 => \reg_out_i_reg[0]\,
      I3 => \^q\(2),
      I4 => \reg_out_i_reg[3]\(2),
      I5 => \gen_pf_ic_rc.diff_pntr_pf_q[4]_i_3_n_0\,
      O => D(2)
    );
\gen_pf_ic_rc.diff_pntr_pf_q[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \reg_out_i_reg[3]\(3),
      O => \gen_pf_ic_rc.diff_pntr_pf_q[4]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized1_3\ is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_out_i_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_out_i_reg[0]\ : in STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC;
    \syncstages_ff_reg[1]\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\ : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized1_3\ : entity is "xpm_counter_updn";
end \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized1_3\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized1_3\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.diff_pntr_pf_q[4]_i_3_n_0\ : STD_LOGIC;
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00200000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \syncstages_ff_reg[1]\,
      I2 => wr_en,
      I3 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\,
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_1\(0),
      Q => \^q\(0),
      S => \syncstages_ff_reg[1]\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_1\(1),
      Q => \^q\(1),
      R => \syncstages_ff_reg[1]\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => \syncstages_ff_reg[1]\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => \syncstages_ff_reg[1]\
    );
\gen_pf_ic_rc.diff_pntr_pf_q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I1 => \^q\(0),
      I2 => \reg_out_i_reg[3]\(0),
      I3 => \reg_out_i_reg[3]\(1),
      I4 => \^q\(1),
      O => D(0)
    );
\gen_pf_ic_rc.diff_pntr_pf_q[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \reg_out_i_reg[0]\,
      I1 => \^q\(1),
      I2 => \reg_out_i_reg[3]\(1),
      I3 => \reg_out_i_reg[3]\(2),
      I4 => \^q\(2),
      O => D(1)
    );
\gen_pf_ic_rc.diff_pntr_pf_q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2BFF002BD400FFD4"
    )
        port map (
      I0 => \reg_out_i_reg[3]\(1),
      I1 => \^q\(1),
      I2 => \reg_out_i_reg[0]\,
      I3 => \^q\(2),
      I4 => \reg_out_i_reg[3]\(2),
      I5 => \gen_pf_ic_rc.diff_pntr_pf_q[4]_i_3_n_0\,
      O => D(2)
    );
\gen_pf_ic_rc.diff_pntr_pf_q[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \reg_out_i_reg[3]\(3),
      O => \gen_pf_ic_rc.diff_pntr_pf_q[4]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized2\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC;
    \syncstages_ff_reg[1]\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\ : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized2\ : entity is "xpm_counter_updn";
end \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized2\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00200000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \syncstages_ff_reg[1]\,
      I2 => wr_en,
      I3 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\,
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => D(0),
      Q => \^q\(0),
      R => \syncstages_ff_reg[1]\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => D(1),
      Q => \^q\(1),
      S => \syncstages_ff_reg[1]\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => \count_value_i[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \syncstages_ff_reg[1]\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => \count_value_i[3]_i_1_n_0\,
      Q => \^q\(3),
      R => \syncstages_ff_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized2_18\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC;
    \syncstages_ff_reg[1]\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\ : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized2_18\ : entity is "xpm_counter_updn";
end \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized2_18\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized2_18\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00200000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \syncstages_ff_reg[1]\,
      I2 => wr_en,
      I3 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\,
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => D(0),
      Q => \^q\(0),
      R => \syncstages_ff_reg[1]\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => D(1),
      Q => \^q\(1),
      S => \syncstages_ff_reg[1]\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => \count_value_i[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \syncstages_ff_reg[1]\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      D => \count_value_i[3]_i_1_n_0\,
      Q => \^q\(3),
      R => \syncstages_ff_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    \syncstages_ff_reg[1]\ : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit : entity is "xpm_fifo_reg_bit";
end design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit is
begin
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \syncstages_ff_reg[1]\,
      Q => rst_d1,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_15 is
  port (
    rst_d1 : out STD_LOGIC;
    \syncstages_ff_reg[1]\ : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_15 : entity is "xpm_fifo_reg_bit";
end design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_15;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_15 is
begin
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \syncstages_ff_reg[1]\,
      Q => rst_d1,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_21 is
  port (
    d_out : out STD_LOGIC;
    \gen_rst_ic.fifo_wr_rst_i_reg\ : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_21 : entity is "xpm_fifo_reg_bit";
end design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_21;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_21 is
begin
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_wr_rst_i_reg\,
      Q => d_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_22 is
  port (
    fifo_wr_rst_d2 : out STD_LOGIC;
    \gen_rst_ic.fifo_wr_rst_i_reg\ : out STD_LOGIC;
    \gen_rst_ic.fifo_wr_rst_done_reg\ : out STD_LOGIC;
    d_out : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    \gen_rst_ic.fifo_wr_rst_i_reg_0\ : in STD_LOGIC;
    dest_rst : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_wr_rst_done : in STD_LOGIC;
    fifo_rd_rst_done : in STD_LOGIC;
    fifo_wr_rst_d3 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_22 : entity is "xpm_fifo_reg_bit";
end design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_22;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_22 is
  signal \^fifo_wr_rst_d2\ : STD_LOGIC;
begin
  fifo_wr_rst_d2 <= \^fifo_wr_rst_d2\;
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => d_out,
      Q => \^fifo_wr_rst_d2\,
      R => '0'
    );
\gen_rst_ic.fifo_wr_rst_done_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F22"
    )
        port map (
      I0 => fifo_wr_rst_done,
      I1 => fifo_rd_rst_done,
      I2 => fifo_wr_rst_d3,
      I3 => \^fifo_wr_rst_d2\,
      O => \gen_rst_ic.fifo_wr_rst_done_reg\
    );
\gen_rst_ic.fifo_wr_rst_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4447444744474444"
    )
        port map (
      I0 => p_0_in,
      I1 => \gen_rst_ic.fifo_wr_rst_i_reg_0\,
      I2 => dest_rst,
      I3 => \^fifo_wr_rst_d2\,
      I4 => rst,
      I5 => Q(0),
      O => \gen_rst_ic.fifo_wr_rst_i_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_23 is
  port (
    d_out_reg : out STD_LOGIC;
    dest_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_23 : entity is "xpm_fifo_reg_bit";
end design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_23;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_23 is
  attribute srl_bus_name : string;
  attribute srl_bus_name of d_out_reg_srl2 : label is "\U0/onsemi_vita_spi_v3_1_S00_AXI_inst/onsemi_vita_spicore_inst/vita_spi_rxfifo_l/afifo_64i_16o_l/xpm_fifo_base_inst /\xpm_fifo_rst_inst/gen_rst_ic.rrst_rd_inst/gen_pipe_bit ";
  attribute srl_name : string;
  attribute srl_name of d_out_reg_srl2 : label is "\U0/onsemi_vita_spi_v3_1_S00_AXI_inst/onsemi_vita_spicore_inst/vita_spi_rxfifo_l/afifo_64i_16o_l/xpm_fifo_base_inst /\xpm_fifo_rst_inst/gen_rst_ic.rrst_rd_inst/gen_pipe_bit[1].pipe_bit_inst/d_out_reg_srl2 ";
begin
d_out_reg_srl2: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => rd_clk,
      D => dest_rst,
      Q => d_out_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_24 is
  port (
    \syncstages_ff_reg[0]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow_i0 : out STD_LOGIC;
    \count_value_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \syncstages_ff_reg[1]\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    dest_rst : in STD_LOGIC;
    \gen_fwft.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    \gen_fwft.empty_fwft_i_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_24 : entity is "xpm_fifo_reg_bit";
end design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_24;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_24 is
  signal \^syncstages_ff_reg[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rd_data_count_i[4]_i_1\ : label is "soft_lutpair22";
begin
  \syncstages_ff_reg[0]\ <= \^syncstages_ff_reg[0]\;
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \syncstages_ff_reg[1]\,
      Q => \^syncstages_ff_reg[0]\,
      R => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^syncstages_ff_reg[0]\,
      I1 => dest_rst,
      O => \count_value_i_reg[0]\(0)
    );
\rd_data_count_i[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEF"
    )
        port map (
      I0 => dest_rst,
      I1 => \^syncstages_ff_reg[0]\,
      I2 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I3 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      O => SR(0)
    );
underflow_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => rd_en,
      I1 => \gen_fwft.empty_fwft_i_reg\,
      I2 => \^syncstages_ff_reg[0]\,
      I3 => dest_rst,
      O => underflow_i0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_4 is
  port (
    d_out : out STD_LOGIC;
    \gen_rst_ic.fifo_wr_rst_i_reg\ : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_4 : entity is "xpm_fifo_reg_bit";
end design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_4;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_4 is
begin
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_wr_rst_i_reg\,
      Q => d_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_5 is
  port (
    fifo_wr_rst_d2 : out STD_LOGIC;
    \gen_rst_ic.fifo_wr_rst_i_reg\ : out STD_LOGIC;
    \gen_rst_ic.fifo_wr_rst_done_reg\ : out STD_LOGIC;
    d_out : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    \gen_rst_ic.fifo_wr_rst_i_reg_0\ : in STD_LOGIC;
    dest_rst : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_wr_rst_done : in STD_LOGIC;
    fifo_rd_rst_done : in STD_LOGIC;
    fifo_wr_rst_d3 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_5 : entity is "xpm_fifo_reg_bit";
end design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_5;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_5 is
  signal \^fifo_wr_rst_d2\ : STD_LOGIC;
begin
  fifo_wr_rst_d2 <= \^fifo_wr_rst_d2\;
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => d_out,
      Q => \^fifo_wr_rst_d2\,
      R => '0'
    );
\gen_rst_ic.fifo_wr_rst_done_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F22"
    )
        port map (
      I0 => fifo_wr_rst_done,
      I1 => fifo_rd_rst_done,
      I2 => fifo_wr_rst_d3,
      I3 => \^fifo_wr_rst_d2\,
      O => \gen_rst_ic.fifo_wr_rst_done_reg\
    );
\gen_rst_ic.fifo_wr_rst_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4447444744474444"
    )
        port map (
      I0 => p_0_in,
      I1 => \gen_rst_ic.fifo_wr_rst_i_reg_0\,
      I2 => dest_rst,
      I3 => \^fifo_wr_rst_d2\,
      I4 => rst,
      I5 => Q(0),
      O => \gen_rst_ic.fifo_wr_rst_i_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_6 is
  port (
    d_out_reg : out STD_LOGIC;
    dest_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_6 : entity is "xpm_fifo_reg_bit";
end design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_6;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_6 is
  attribute srl_bus_name : string;
  attribute srl_bus_name of d_out_reg_srl2 : label is "\U0/onsemi_vita_spi_v3_1_S00_AXI_inst/onsemi_vita_spicore_inst/vita_spi_txfifo_l/afifo_64i_16o_l/xpm_fifo_base_inst /\xpm_fifo_rst_inst/gen_rst_ic.rrst_rd_inst/gen_pipe_bit ";
  attribute srl_name : string;
  attribute srl_name of d_out_reg_srl2 : label is "\U0/onsemi_vita_spi_v3_1_S00_AXI_inst/onsemi_vita_spicore_inst/vita_spi_txfifo_l/afifo_64i_16o_l/xpm_fifo_base_inst /\xpm_fifo_rst_inst/gen_rst_ic.rrst_rd_inst/gen_pipe_bit[1].pipe_bit_inst/d_out_reg_srl2 ";
begin
d_out_reg_srl2: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => rd_clk,
      D => dest_rst,
      Q => d_out_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_7 is
  port (
    \syncstages_ff_reg[0]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow_i0 : out STD_LOGIC;
    \count_value_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \syncstages_ff_reg[1]\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    dest_rst : in STD_LOGIC;
    \gen_fwft.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    \gen_fwft.empty_fwft_i_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_7 : entity is "xpm_fifo_reg_bit";
end design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_7;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_7 is
  signal \^syncstages_ff_reg[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rd_data_count_i[4]_i_1\ : label is "soft_lutpair40";
begin
  \syncstages_ff_reg[0]\ <= \^syncstages_ff_reg[0]\;
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \syncstages_ff_reg[1]\,
      Q => \^syncstages_ff_reg[0]\,
      R => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^syncstages_ff_reg[0]\,
      I1 => dest_rst,
      O => \count_value_i_reg[0]\(0)
    );
\rd_data_count_i[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEF"
    )
        port map (
      I0 => dest_rst,
      I1 => \^syncstages_ff_reg[0]\,
      I2 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I3 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      O => SR(0)
    );
underflow_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => rd_en,
      I1 => \gen_fwft.empty_fwft_i_reg\,
      I2 => \^syncstages_ff_reg[0]\,
      I3 => dest_rst,
      O => underflow_i0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec is
  port (
    ram_full_i0 : out STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\ : in STD_LOGIC;
    \count_value_i_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \syncstages_ff_reg[1]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec : entity is "xpm_fifo_reg_vec";
end design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec is
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0\ : STD_LOGIC;
  signal \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(3 downto 0) <= \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(3 downto 0);
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F82288F288228822"
    )
        port map (
      I0 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0\,
      I1 => Q(3),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\,
      I3 => \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(3),
      I4 => \count_value_i_reg[3]\(3),
      I5 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0\,
      O => ram_full_i0
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(0),
      I1 => Q(0),
      I2 => Q(2),
      I3 => \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(2),
      I4 => Q(1),
      I5 => \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(1),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(0),
      I1 => \count_value_i_reg[3]\(0),
      I2 => \count_value_i_reg[3]\(2),
      I3 => \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(2),
      I4 => \count_value_i_reg[3]\(1),
      I5 => \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(1),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => D(0),
      Q => \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(0),
      R => \syncstages_ff_reg[1]\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => D(1),
      Q => \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(1),
      R => \syncstages_ff_reg[1]\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => D(2),
      Q => \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(2),
      R => \syncstages_ff_reg[1]\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => D(3),
      Q => \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(3),
      R => \syncstages_ff_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i0 : out STD_LOGIC;
    \gen_fwft.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    \count_value_i_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_fwft.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dest_graysync_ff_reg[1][3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec_0 : entity is "xpm_fifo_reg_vec";
end design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec_0;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_pf_ic_rc.ram_empty_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gen_pf_ic_rc.diff_pntr_pe[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666699996999"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg[3]\(0),
      I2 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I3 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I4 => rd_en,
      I5 => ram_empty_i,
      O => D(0)
    );
\gen_pf_ic_rc.diff_pntr_pe[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D42B2BD4"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_fwft.curr_fwft_state_reg[0]\,
      I2 => \count_value_i_reg[3]\(0),
      I3 => \^q\(1),
      I4 => \count_value_i_reg[3]\(1),
      O => D(1)
    );
\gen_pf_ic_rc.ram_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F82288F288228822"
    )
        port map (
      I0 => \gen_pf_ic_rc.ram_empty_i_i_2_n_0\,
      I1 => \count_value_i_reg[3]\(3),
      I2 => \gen_fwft.curr_fwft_state_reg[0]\,
      I3 => \^q\(3),
      I4 => \count_value_i_reg[3]_0\(3),
      I5 => \gen_pf_ic_rc.ram_empty_i_i_3_n_0\,
      O => ram_empty_i0
    );
\gen_pf_ic_rc.ram_empty_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg[3]\(0),
      I2 => \count_value_i_reg[3]\(2),
      I3 => \^q\(2),
      I4 => \count_value_i_reg[3]\(1),
      I5 => \^q\(1),
      O => \gen_pf_ic_rc.ram_empty_i_i_2_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg[3]_0\(0),
      I2 => \count_value_i_reg[3]_0\(2),
      I3 => \^q\(2),
      I4 => \count_value_i_reg[3]_0\(1),
      I5 => \^q\(1),
      O => \gen_pf_ic_rc.ram_empty_i_i_3_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[1][3]\(0),
      Q => \^q\(0),
      R => SR(0)
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[1][3]\(1),
      Q => \^q\(1),
      R => SR(0)
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[1][3]\(2),
      Q => \^q\(2),
      R => SR(0)
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[1][3]\(3),
      Q => \^q\(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec_10 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i0 : out STD_LOGIC;
    \gen_fwft.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    \count_value_i_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_fwft.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dest_graysync_ff_reg[1][3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec_10 : entity is "xpm_fifo_reg_vec";
end design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec_10;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec_10 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_pf_ic_rc.ram_empty_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gen_pf_ic_rc.diff_pntr_pe[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666699996999"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg[3]\(0),
      I2 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I3 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I4 => rd_en,
      I5 => ram_empty_i,
      O => D(0)
    );
\gen_pf_ic_rc.diff_pntr_pe[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D42B2BD4"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_fwft.curr_fwft_state_reg[0]\,
      I2 => \count_value_i_reg[3]\(0),
      I3 => \^q\(1),
      I4 => \count_value_i_reg[3]\(1),
      O => D(1)
    );
\gen_pf_ic_rc.ram_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F82288F288228822"
    )
        port map (
      I0 => \gen_pf_ic_rc.ram_empty_i_i_2_n_0\,
      I1 => \count_value_i_reg[3]\(3),
      I2 => \gen_fwft.curr_fwft_state_reg[0]\,
      I3 => \^q\(3),
      I4 => \count_value_i_reg[3]_0\(3),
      I5 => \gen_pf_ic_rc.ram_empty_i_i_3_n_0\,
      O => ram_empty_i0
    );
\gen_pf_ic_rc.ram_empty_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg[3]\(0),
      I2 => \count_value_i_reg[3]\(2),
      I3 => \^q\(2),
      I4 => \count_value_i_reg[3]\(1),
      I5 => \^q\(1),
      O => \gen_pf_ic_rc.ram_empty_i_i_2_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg[3]_0\(0),
      I2 => \count_value_i_reg[3]_0\(2),
      I3 => \^q\(2),
      I4 => \count_value_i_reg[3]_0\(1),
      I5 => \^q\(1),
      O => \gen_pf_ic_rc.ram_empty_i_i_3_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[1][3]\(0),
      Q => \^q\(0),
      R => SR(0)
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[1][3]\(1),
      Q => \^q\(1),
      R => SR(0)
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[1][3]\(2),
      Q => \^q\(2),
      R => SR(0)
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[1][3]\(3),
      Q => \^q\(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec_8 is
  port (
    ram_full_i0 : out STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\ : in STD_LOGIC;
    \count_value_i_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \syncstages_ff_reg[1]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec_8 : entity is "xpm_fifo_reg_vec";
end design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec_8;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec_8 is
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0\ : STD_LOGIC;
  signal \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(3 downto 0) <= \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(3 downto 0);
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F82288F288228822"
    )
        port map (
      I0 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0\,
      I1 => Q(3),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\,
      I3 => \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(3),
      I4 => \count_value_i_reg[3]\(3),
      I5 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0\,
      O => ram_full_i0
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(0),
      I1 => Q(0),
      I2 => Q(2),
      I3 => \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(2),
      I4 => Q(1),
      I5 => \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(1),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(0),
      I1 => \count_value_i_reg[3]\(0),
      I2 => \count_value_i_reg[3]\(2),
      I3 => \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(2),
      I4 => \count_value_i_reg[3]\(1),
      I5 => \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(1),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => D(0),
      Q => \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(0),
      R => \syncstages_ff_reg[1]\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => D(1),
      Q => \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(1),
      R => \syncstages_ff_reg[1]\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => D(2),
      Q => \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(2),
      R => \syncstages_ff_reg[1]\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => D(3),
      Q => \^gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(3),
      R => \syncstages_ff_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_value_i_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \syncstages_ff_reg[1]\ : in STD_LOGIC;
    \dest_graysync_ff_reg[1][4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec__parameterized0\ : entity is "xpm_fifo_reg_vec";
end \design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec__parameterized0\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \reg_out_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \wr_data_count_i[4]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \wr_data_count_i[3]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \wr_data_count_i[4]_i_1\ : label is "soft_lutpair35";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[1][4]\(0),
      Q => \^q\(0),
      R => \syncstages_ff_reg[1]\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[1][4]\(1),
      Q => \^q\(1),
      R => \syncstages_ff_reg[1]\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[1][4]\(2),
      Q => \^q\(2),
      R => \syncstages_ff_reg[1]\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[1][4]\(3),
      Q => \reg_out_i_reg_n_0_[3]\,
      R => \syncstages_ff_reg[1]\
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[1][4]\(4),
      Q => \reg_out_i_reg_n_0_[4]\,
      R => \syncstages_ff_reg[1]\
    );
\wr_data_count_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg[4]\(0),
      I2 => \^q\(1),
      I3 => \count_value_i_reg[4]\(1),
      O => D(0)
    );
\wr_data_count_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \wr_data_count_i[4]_i_2_n_0\,
      I1 => \reg_out_i_reg_n_0_[3]\,
      I2 => \count_value_i_reg[4]\(3),
      O => D(1)
    );
\wr_data_count_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \wr_data_count_i[4]_i_2_n_0\,
      I1 => \count_value_i_reg[4]\(3),
      I2 => \reg_out_i_reg_n_0_[3]\,
      I3 => \reg_out_i_reg_n_0_[4]\,
      I4 => \count_value_i_reg[4]\(4),
      O => D(2)
    );
\wr_data_count_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D4DD4444DDDDD4DD"
    )
        port map (
      I0 => \^q\(2),
      I1 => \count_value_i_reg[4]\(2),
      I2 => \count_value_i_reg[4]\(0),
      I3 => \^q\(0),
      I4 => \count_value_i_reg[4]\(1),
      I5 => \^q\(1),
      O => \wr_data_count_i[4]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec__parameterized0_1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \rd_data_count_i_reg[4]\ : out STD_LOGIC;
    \count_value_i_reg[3]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    count_value_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dest_graysync_ff_reg[3][4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec__parameterized0_1\ : entity is "xpm_fifo_reg_vec";
end \design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec__parameterized0_1\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec__parameterized0_1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\rd_data_count_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C33C96696996C33C"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \count_value_i_reg[3]\(1),
      I3 => count_value_i(1),
      I4 => count_value_i(0),
      I5 => \count_value_i_reg[3]\(0),
      O => D(0)
    );
\rd_data_count_i[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i_reg[3]\(2),
      O => \rd_data_count_i_reg[4]\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[3][4]\(0),
      Q => \^q\(0),
      R => SR(0)
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[3][4]\(1),
      Q => \^q\(1),
      R => SR(0)
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[3][4]\(2),
      Q => \^q\(2),
      R => SR(0)
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[3][4]\(3),
      Q => \^q\(3),
      R => SR(0)
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[3][4]\(4),
      Q => \^q\(4),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec__parameterized0_11\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \rd_data_count_i_reg[4]\ : out STD_LOGIC;
    \count_value_i_reg[3]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    count_value_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dest_graysync_ff_reg[3][4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec__parameterized0_11\ : entity is "xpm_fifo_reg_vec";
end \design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec__parameterized0_11\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec__parameterized0_11\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\rd_data_count_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C33C96696996C33C"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \count_value_i_reg[3]\(1),
      I3 => count_value_i(1),
      I4 => count_value_i(0),
      I5 => \count_value_i_reg[3]\(0),
      O => D(0)
    );
\rd_data_count_i[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i_reg[3]\(2),
      O => \rd_data_count_i_reg[4]\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[3][4]\(0),
      Q => \^q\(0),
      R => SR(0)
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[3][4]\(1),
      Q => \^q\(1),
      R => SR(0)
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[3][4]\(2),
      Q => \^q\(2),
      R => SR(0)
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[3][4]\(3),
      Q => \^q\(3),
      R => SR(0)
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[3][4]\(4),
      Q => \^q\(4),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec__parameterized0_9\ is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_value_i_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \syncstages_ff_reg[1]\ : in STD_LOGIC;
    \dest_graysync_ff_reg[1][4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec__parameterized0_9\ : entity is "xpm_fifo_reg_vec";
end \design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec__parameterized0_9\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec__parameterized0_9\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \reg_out_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \wr_data_count_i[4]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \wr_data_count_i[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \wr_data_count_i[4]_i_1\ : label is "soft_lutpair17";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[1][4]\(0),
      Q => \^q\(0),
      R => \syncstages_ff_reg[1]\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[1][4]\(1),
      Q => \^q\(1),
      R => \syncstages_ff_reg[1]\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[1][4]\(2),
      Q => \^q\(2),
      R => \syncstages_ff_reg[1]\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[1][4]\(3),
      Q => \reg_out_i_reg_n_0_[3]\,
      R => \syncstages_ff_reg[1]\
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \dest_graysync_ff_reg[1][4]\(4),
      Q => \reg_out_i_reg_n_0_[4]\,
      R => \syncstages_ff_reg[1]\
    );
\wr_data_count_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg[4]\(0),
      I2 => \^q\(1),
      I3 => \count_value_i_reg[4]\(1),
      O => D(0)
    );
\wr_data_count_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \wr_data_count_i[4]_i_2_n_0\,
      I1 => \reg_out_i_reg_n_0_[3]\,
      I2 => \count_value_i_reg[4]\(3),
      O => D(1)
    );
\wr_data_count_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \wr_data_count_i[4]_i_2_n_0\,
      I1 => \count_value_i_reg[4]\(3),
      I2 => \reg_out_i_reg_n_0_[3]\,
      I3 => \reg_out_i_reg_n_0_[4]\,
      I4 => \count_value_i_reg[4]\(4),
      O => D(2)
    );
\wr_data_count_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D4DD4444DDDDD4DD"
    )
        port map (
      I0 => \^q\(2),
      I1 => \count_value_i_reg[4]\(2),
      I2 => \count_value_i_reg[4]\(0),
      I3 => \^q\(0),
      I4 => \count_value_i_reg[4]\(1),
      I5 => \^q\(1),
      O => \wr_data_count_i[4]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 4;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 4;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 32;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 32;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 1;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : integer;
  attribute MEMORY_OPTIMIZATION of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 1;
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 512;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is "xpm_memory_base";
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 16;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 32;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 32;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 32;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 32;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 32;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 4;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 4;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 4;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 4;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 32;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 32;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 32;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 32;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is "0";
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 32;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 32;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is 2;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_onsemi_vita_spi_0_0_xpm_memory_base : entity is "TRUE";
end design_1_onsemi_vita_spi_0_0_xpm_memory_base;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal doutb_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_12_17_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_18_23_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_24_29_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is "";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_12_17\ : label is "";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_18_23\ : label is "";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_24_29\ : label is "";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31\ : label is "";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11\ : label is "";
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(31) <= \<const0>\;
  douta(30) <= \<const0>\;
  douta(29) <= \<const0>\;
  douta(28) <= \<const0>\;
  douta(27) <= \<const0>\;
  douta(26) <= \<const0>\;
  douta(25) <= \<const0>\;
  douta(24) <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[0]\,
      Q => doutb(0),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[10]\,
      Q => doutb(10),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[11]\,
      Q => doutb(11),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[12]\,
      Q => doutb(12),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[13]\,
      Q => doutb(13),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[14]\,
      Q => doutb(14),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[15]\,
      Q => doutb(15),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[16]\,
      Q => doutb(16),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[17]\,
      Q => doutb(17),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[18]\,
      Q => doutb(18),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[19]\,
      Q => doutb(19),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[1]\,
      Q => doutb(1),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[20]\,
      Q => doutb(20),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[21]\,
      Q => doutb(21),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[22]\,
      Q => doutb(22),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[23]\,
      Q => doutb(23),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[24]\,
      Q => doutb(24),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[25]\,
      Q => doutb(25),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[26]\,
      Q => doutb(26),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[27]\,
      Q => doutb(27),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[28]\,
      Q => doutb(28),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[29]\,
      Q => doutb(29),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[2]\,
      Q => doutb(2),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[30]\,
      Q => doutb(30),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[31]\,
      Q => doutb(31),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[3]\,
      Q => doutb(3),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[4]\,
      Q => doutb(4),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[5]\,
      Q => doutb(5),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[6]\,
      Q => doutb(6),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[7]\,
      Q => doutb(7),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[8]\,
      Q => doutb(8),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[9]\,
      Q => doutb(9),
      R => rstb
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => enb,
      I1 => web(0),
      O => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(0),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[0]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(10),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[10]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(11),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[11]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(12),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[12]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(13),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[13]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(14),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[14]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(15),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[15]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(16),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[16]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(17),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[17]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(18),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[18]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(19),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[19]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(1),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[1]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(20),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[20]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(21),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[21]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(22),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[22]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(23),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[23]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(24),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[24]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(25),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[25]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(26),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[26]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(27),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[27]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(28),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[28]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(29),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[29]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(2),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[2]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(30),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[30]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(31),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[31]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(3),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[3]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(4),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[4]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(5),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[5]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(6),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[6]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(7),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[7]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(8),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[8]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(9),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[9]\,
      R => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(1 downto 0),
      DIB(1 downto 0) => dina(3 downto 2),
      DIC(1 downto 0) => dina(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => doutb_reg0(1 downto 0),
      DOB(1 downto 0) => doutb_reg0(3 downto 2),
      DOC(1 downto 0) => doutb_reg0(5 downto 4),
      DOD(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wea(0),
      I1 => ena,
      O => \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_12_17\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(13 downto 12),
      DIB(1 downto 0) => dina(15 downto 14),
      DIC(1 downto 0) => dina(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => doutb_reg0(13 downto 12),
      DOB(1 downto 0) => doutb_reg0(15 downto 14),
      DOC(1 downto 0) => doutb_reg0(17 downto 16),
      DOD(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_12_17_DOD_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_18_23\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(19 downto 18),
      DIB(1 downto 0) => dina(21 downto 20),
      DIC(1 downto 0) => dina(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => doutb_reg0(19 downto 18),
      DOB(1 downto 0) => doutb_reg0(21 downto 20),
      DOC(1 downto 0) => doutb_reg0(23 downto 22),
      DOD(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_18_23_DOD_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_24_29\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(25 downto 24),
      DIB(1 downto 0) => dina(27 downto 26),
      DIC(1 downto 0) => dina(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => doutb_reg0(25 downto 24),
      DOB(1 downto 0) => doutb_reg0(27 downto 26),
      DOC(1 downto 0) => doutb_reg0(29 downto 28),
      DOD(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_24_29_DOD_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(31 downto 30),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => doutb_reg0(31 downto 30),
      DOB(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOB_UNCONNECTED\(1 downto 0),
      DOC(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOC_UNCONNECTED\(1 downto 0),
      DOD(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOD_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(7 downto 6),
      DIB(1 downto 0) => dina(9 downto 8),
      DIC(1 downto 0) => dina(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => doutb_reg0(7 downto 6),
      DOB(1 downto 0) => doutb_reg0(9 downto 8),
      DOC(1 downto 0) => doutb_reg0(11 downto 10),
      DOD(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11_DOD_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 4;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 4;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 32;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 32;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 1;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is "";
  attribute MEMORY_OPTIMIZATION : integer;
  attribute MEMORY_OPTIMIZATION of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 1;
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 512;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is "xpm_memory_base";
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 16;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 32;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 32;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 32;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 32;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 32;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 4;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 4;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 4;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 4;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 32;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 32;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 32;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 32;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is "0";
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 32;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 32;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is 2;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ : entity is "TRUE";
end \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\ is
  signal \<const0>\ : STD_LOGIC;
  signal doutb_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_12_17_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_18_23_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_24_29_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is "";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_12_17\ : label is "";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_18_23\ : label is "";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_24_29\ : label is "";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31\ : label is "";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11\ : label is "";
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(31) <= \<const0>\;
  douta(30) <= \<const0>\;
  douta(29) <= \<const0>\;
  douta(28) <= \<const0>\;
  douta(27) <= \<const0>\;
  douta(26) <= \<const0>\;
  douta(25) <= \<const0>\;
  douta(24) <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[0]\,
      Q => doutb(0),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[10]\,
      Q => doutb(10),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[11]\,
      Q => doutb(11),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[12]\,
      Q => doutb(12),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[13]\,
      Q => doutb(13),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[14]\,
      Q => doutb(14),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[15]\,
      Q => doutb(15),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[16]\,
      Q => doutb(16),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[17]\,
      Q => doutb(17),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[18]\,
      Q => doutb(18),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[19]\,
      Q => doutb(19),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[1]\,
      Q => doutb(1),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[20]\,
      Q => doutb(20),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[21]\,
      Q => doutb(21),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[22]\,
      Q => doutb(22),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[23]\,
      Q => doutb(23),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[24]\,
      Q => doutb(24),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[25]\,
      Q => doutb(25),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[26]\,
      Q => doutb(26),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[27]\,
      Q => doutb(27),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[28]\,
      Q => doutb(28),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[29]\,
      Q => doutb(29),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[2]\,
      Q => doutb(2),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[30]\,
      Q => doutb(30),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[31]\,
      Q => doutb(31),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[3]\,
      Q => doutb(3),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[4]\,
      Q => doutb(4),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[5]\,
      Q => doutb(5),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[6]\,
      Q => doutb(6),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[7]\,
      Q => doutb(7),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[8]\,
      Q => doutb(8),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[9]\,
      Q => doutb(9),
      R => rstb
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => enb,
      I1 => web(0),
      O => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(0),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[0]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(10),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[10]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(11),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[11]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(12),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[12]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(13),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[13]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(14),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[14]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(15),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[15]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(16),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[16]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(17),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[17]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(18),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[18]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(19),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[19]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(1),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[1]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(20),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[20]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(21),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[21]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(22),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[22]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(23),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[23]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(24),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[24]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(25),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[25]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(26),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[26]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(27),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[27]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(28),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[28]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(29),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[29]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(2),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[2]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(30),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[30]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(31),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[31]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(3),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[3]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(4),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[4]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(5),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[5]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(6),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[6]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(7),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[7]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(8),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[8]\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0\,
      D => doutb_reg0(9),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[9]\,
      R => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(1 downto 0),
      DIB(1 downto 0) => dina(3 downto 2),
      DIC(1 downto 0) => dina(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => doutb_reg0(1 downto 0),
      DOB(1 downto 0) => doutb_reg0(3 downto 2),
      DOC(1 downto 0) => doutb_reg0(5 downto 4),
      DOD(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wea(0),
      I1 => ena,
      O => \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_12_17\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(13 downto 12),
      DIB(1 downto 0) => dina(15 downto 14),
      DIC(1 downto 0) => dina(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => doutb_reg0(13 downto 12),
      DOB(1 downto 0) => doutb_reg0(15 downto 14),
      DOC(1 downto 0) => doutb_reg0(17 downto 16),
      DOD(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_12_17_DOD_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_18_23\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(19 downto 18),
      DIB(1 downto 0) => dina(21 downto 20),
      DIC(1 downto 0) => dina(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => doutb_reg0(19 downto 18),
      DOB(1 downto 0) => doutb_reg0(21 downto 20),
      DOC(1 downto 0) => doutb_reg0(23 downto 22),
      DOD(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_18_23_DOD_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_24_29\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(25 downto 24),
      DIB(1 downto 0) => dina(27 downto 26),
      DIC(1 downto 0) => dina(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => doutb_reg0(25 downto 24),
      DOB(1 downto 0) => doutb_reg0(27 downto 26),
      DOC(1 downto 0) => doutb_reg0(29 downto 28),
      DOD(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_24_29_DOD_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(31 downto 30),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => doutb_reg0(31 downto 30),
      DOB(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOB_UNCONNECTED\(1 downto 0),
      DOC(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOC_UNCONNECTED\(1 downto 0),
      DOD(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOD_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(7 downto 6),
      DIB(1 downto 0) => dina(9 downto 8),
      DIC(1 downto 0) => dina(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => doutb_reg0(7 downto 6),
      DOB(1 downto 0) => doutb_reg0(9 downto 8),
      DOC(1 downto 0) => doutb_reg0(11 downto 10),
      DOD(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11_DOD_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_spi_top is
  port (
    wr_en : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    vita_spi_sclk_o : out STD_LOGIC;
    vita_spi_ssel_n_o : out STD_LOGIC;
    vita_spi_mosi_o : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 25 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : in STD_LOGIC_VECTOR ( 28 downto 0 );
    full : in STD_LOGIC;
    \host_spi_timing_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    io_vita_spi_miso : in STD_LOGIC;
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    empty : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_spi_top : entity is "spi_top";
end design_1_onsemi_vita_spi_0_0_spi_top;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_spi_top is
  signal RxWord : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal SPI_BUSY : STD_LOGIC;
  signal SPI_DATA_TX : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SPI_START : STD_LOGIC;
  signal \TxIndex_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal the_spi_lowlevel_n_0 : STD_LOGIC;
  signal the_spi_lowlevel_n_1 : STD_LOGIC;
  signal the_spi_seq_n_10 : STD_LOGIC;
  signal the_spi_seq_n_4 : STD_LOGIC;
  signal the_spi_seq_n_5 : STD_LOGIC;
  signal the_spi_seq_n_6 : STD_LOGIC;
  signal the_spi_seq_n_9 : STD_LOGIC;
begin
the_spi_lowlevel: entity work.design_1_onsemi_vita_spi_0_0_spi_lowlevel
     port map (
      AR(0) => AR(0),
      D(25) => RxWord(0),
      D(24) => RxWord(1),
      D(23) => RxWord(2),
      D(22) => RxWord(3),
      D(21) => RxWord(4),
      D(20) => RxWord(5),
      D(19) => RxWord(6),
      D(18) => RxWord(7),
      D(17) => RxWord(8),
      D(16) => RxWord(9),
      D(15) => RxWord(10),
      D(14) => RxWord(11),
      D(13) => RxWord(12),
      D(12) => RxWord(13),
      D(11) => RxWord(14),
      D(10) => RxWord(15),
      D(9) => RxWord(16),
      D(8) => RxWord(17),
      D(7) => RxWord(18),
      D(6) => RxWord(19),
      D(5) => RxWord(20),
      D(4) => RxWord(21),
      D(3) => RxWord(22),
      D(2) => RxWord(23),
      D(1) => RxWord(24),
      D(0) => RxWord(25),
      E(0) => the_spi_seq_n_4,
      MOSI_reg_0 => the_spi_lowlevel_n_1,
      Q(3 downto 0) => \TxIndex_reg__0\(3 downto 0),
      \RxWord_reg[25]_0\ => the_spi_lowlevel_n_0,
      SPI_BUSY => SPI_BUSY,
      \SPI_DATA_TX_reg[1]\(1 downto 0) => SPI_DATA_TX(1 downto 0),
      \SPI_DATA_TX_reg[2]\ => the_spi_seq_n_10,
      \SPI_DATA_TX_reg[6]\ => the_spi_seq_n_9,
      SPI_START => SPI_START,
      SPI_START_reg(0) => the_spi_seq_n_5,
      \TxIndex_reg[3]_0\ => the_spi_seq_n_6,
      \host_spi_timing_reg[15]\(15 downto 0) => \host_spi_timing_reg[15]\(15 downto 0),
      io_vita_spi_miso => io_vita_spi_miso,
      s00_axi_aclk => s00_axi_aclk,
      vita_spi_mosi_o => vita_spi_mosi_o,
      vita_spi_sclk_o => vita_spi_sclk_o,
      vita_spi_ssel_n_o => vita_spi_ssel_n_o
    );
the_spi_seq: entity work.design_1_onsemi_vita_spi_0_0_spi_seq
     port map (
      AR(0) => AR(0),
      ClockOut_reg => the_spi_lowlevel_n_1,
      D(0) => D(0),
      E(0) => the_spi_seq_n_4,
      MOSI_reg => the_spi_seq_n_6,
      MOSI_reg_0(1 downto 0) => SPI_DATA_TX(1 downto 0),
      MOSI_reg_1 => the_spi_seq_n_9,
      MOSI_reg_2 => the_spi_seq_n_10,
      Q(3 downto 0) => \TxIndex_reg__0\(3 downto 0),
      \RxWord_reg[0]\(25) => RxWord(0),
      \RxWord_reg[0]\(24) => RxWord(1),
      \RxWord_reg[0]\(23) => RxWord(2),
      \RxWord_reg[0]\(22) => RxWord(3),
      \RxWord_reg[0]\(21) => RxWord(4),
      \RxWord_reg[0]\(20) => RxWord(5),
      \RxWord_reg[0]\(19) => RxWord(6),
      \RxWord_reg[0]\(18) => RxWord(7),
      \RxWord_reg[0]\(17) => RxWord(8),
      \RxWord_reg[0]\(16) => RxWord(9),
      \RxWord_reg[0]\(15) => RxWord(10),
      \RxWord_reg[0]\(14) => RxWord(11),
      \RxWord_reg[0]\(13) => RxWord(12),
      \RxWord_reg[0]\(12) => RxWord(13),
      \RxWord_reg[0]\(11) => RxWord(14),
      \RxWord_reg[0]\(10) => RxWord(15),
      \RxWord_reg[0]\(9) => RxWord(16),
      \RxWord_reg[0]\(8) => RxWord(17),
      \RxWord_reg[0]\(7) => RxWord(18),
      \RxWord_reg[0]\(6) => RxWord(19),
      \RxWord_reg[0]\(5) => RxWord(20),
      \RxWord_reg[0]\(4) => RxWord(21),
      \RxWord_reg[0]\(3) => RxWord(22),
      \RxWord_reg[0]\(2) => RxWord(23),
      \RxWord_reg[0]\(1) => RxWord(24),
      \RxWord_reg[0]\(0) => RxWord(25),
      SPI_BUSY => SPI_BUSY,
      SPI_START => SPI_START,
      SampleIn_reg => the_spi_lowlevel_n_0,
      \TxIndex_reg[4]\(0) => the_spi_seq_n_5,
      dout(28 downto 0) => dout(28 downto 0),
      empty => empty,
      full => full,
      \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28]\(0) => \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28]\(0),
      \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\(25 downto 0) => Q(25 downto 0),
      rd_en => rd_en,
      s00_axi_aclk => s00_axi_aclk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_reg_pipe_bit is
  port (
    fifo_wr_rst_d2 : out STD_LOGIC;
    \gen_rst_ic.fifo_wr_rst_i_reg\ : out STD_LOGIC;
    \gen_rst_ic.fifo_wr_rst_done_reg\ : out STD_LOGIC;
    \gen_rst_ic.fifo_wr_rst_i_reg_0\ : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    dest_rst : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_wr_rst_done : in STD_LOGIC;
    fifo_rd_rst_done : in STD_LOGIC;
    fifo_wr_rst_d3 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_reg_pipe_bit : entity is "xpm_reg_pipe_bit";
end design_1_onsemi_vita_spi_0_0_xpm_reg_pipe_bit;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_reg_pipe_bit is
  signal d_out : STD_LOGIC;
begin
\gen_pipe_bit[0].pipe_bit_inst\: entity work.design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_4
     port map (
      d_out => d_out,
      \gen_rst_ic.fifo_wr_rst_i_reg\ => \gen_rst_ic.fifo_wr_rst_i_reg_0\,
      wr_clk => wr_clk
    );
\gen_pipe_bit[1].pipe_bit_inst\: entity work.design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_5
     port map (
      Q(0) => Q(0),
      d_out => d_out,
      dest_rst => dest_rst,
      fifo_rd_rst_done => fifo_rd_rst_done,
      fifo_wr_rst_d2 => fifo_wr_rst_d2,
      fifo_wr_rst_d3 => fifo_wr_rst_d3,
      fifo_wr_rst_done => fifo_wr_rst_done,
      \gen_rst_ic.fifo_wr_rst_done_reg\ => \gen_rst_ic.fifo_wr_rst_done_reg\,
      \gen_rst_ic.fifo_wr_rst_i_reg\ => \gen_rst_ic.fifo_wr_rst_i_reg\,
      \gen_rst_ic.fifo_wr_rst_i_reg_0\ => \gen_rst_ic.fifo_wr_rst_i_reg_0\,
      p_0_in => p_0_in,
      rst => rst,
      wr_clk => wr_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_reg_pipe_bit_20 is
  port (
    fifo_wr_rst_d2 : out STD_LOGIC;
    \gen_rst_ic.fifo_wr_rst_i_reg\ : out STD_LOGIC;
    \gen_rst_ic.fifo_wr_rst_done_reg\ : out STD_LOGIC;
    \gen_rst_ic.fifo_wr_rst_i_reg_0\ : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    dest_rst : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_wr_rst_done : in STD_LOGIC;
    fifo_rd_rst_done : in STD_LOGIC;
    fifo_wr_rst_d3 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_reg_pipe_bit_20 : entity is "xpm_reg_pipe_bit";
end design_1_onsemi_vita_spi_0_0_xpm_reg_pipe_bit_20;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_reg_pipe_bit_20 is
  signal d_out : STD_LOGIC;
begin
\gen_pipe_bit[0].pipe_bit_inst\: entity work.design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_21
     port map (
      d_out => d_out,
      \gen_rst_ic.fifo_wr_rst_i_reg\ => \gen_rst_ic.fifo_wr_rst_i_reg_0\,
      wr_clk => wr_clk
    );
\gen_pipe_bit[1].pipe_bit_inst\: entity work.design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_22
     port map (
      Q(0) => Q(0),
      d_out => d_out,
      dest_rst => dest_rst,
      fifo_rd_rst_done => fifo_rd_rst_done,
      fifo_wr_rst_d2 => fifo_wr_rst_d2,
      fifo_wr_rst_d3 => fifo_wr_rst_d3,
      fifo_wr_rst_done => fifo_wr_rst_done,
      \gen_rst_ic.fifo_wr_rst_done_reg\ => \gen_rst_ic.fifo_wr_rst_done_reg\,
      \gen_rst_ic.fifo_wr_rst_i_reg\ => \gen_rst_ic.fifo_wr_rst_i_reg\,
      \gen_rst_ic.fifo_wr_rst_i_reg_0\ => \gen_rst_ic.fifo_wr_rst_i_reg_0\,
      p_0_in => p_0_in,
      rst => rst,
      wr_clk => wr_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_reg_pipe_bit__parameterized0\ is
  port (
    fifo_rd_rst_d3 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow_i0 : out STD_LOGIC;
    \count_value_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    dest_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    \gen_fwft.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    \gen_fwft.empty_fwft_i_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_reg_pipe_bit__parameterized0\ : entity is "xpm_reg_pipe_bit";
end \design_1_onsemi_vita_spi_0_0_xpm_reg_pipe_bit__parameterized0\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_reg_pipe_bit__parameterized0\ is
  signal \gen_pipe_bit[1].pipe_bit_inst_n_0\ : STD_LOGIC;
begin
\gen_pipe_bit[1].pipe_bit_inst\: entity work.design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_6
     port map (
      d_out_reg => \gen_pipe_bit[1].pipe_bit_inst_n_0\,
      dest_rst => dest_rst,
      rd_clk => rd_clk
    );
\gen_pipe_bit[2].pipe_bit_inst\: entity work.design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_7
     port map (
      SR(0) => SR(0),
      \count_value_i_reg[0]\(0) => \count_value_i_reg[0]\(0),
      dest_rst => dest_rst,
      \gen_fwft.curr_fwft_state_reg[1]\(1 downto 0) => \gen_fwft.curr_fwft_state_reg[1]\(1 downto 0),
      \gen_fwft.empty_fwft_i_reg\ => \gen_fwft.empty_fwft_i_reg\,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \syncstages_ff_reg[0]\ => fifo_rd_rst_d3,
      \syncstages_ff_reg[1]\ => \gen_pipe_bit[1].pipe_bit_inst_n_0\,
      underflow_i0 => underflow_i0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_reg_pipe_bit__parameterized0_19\ is
  port (
    fifo_rd_rst_d3 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow_i0 : out STD_LOGIC;
    \count_value_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    dest_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    \gen_fwft.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    \gen_fwft.empty_fwft_i_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_reg_pipe_bit__parameterized0_19\ : entity is "xpm_reg_pipe_bit";
end \design_1_onsemi_vita_spi_0_0_xpm_reg_pipe_bit__parameterized0_19\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_reg_pipe_bit__parameterized0_19\ is
  signal \gen_pipe_bit[1].pipe_bit_inst_n_0\ : STD_LOGIC;
begin
\gen_pipe_bit[1].pipe_bit_inst\: entity work.design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_23
     port map (
      d_out_reg => \gen_pipe_bit[1].pipe_bit_inst_n_0\,
      dest_rst => dest_rst,
      rd_clk => rd_clk
    );
\gen_pipe_bit[2].pipe_bit_inst\: entity work.design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_24
     port map (
      SR(0) => SR(0),
      \count_value_i_reg[0]\(0) => \count_value_i_reg[0]\(0),
      dest_rst => dest_rst,
      \gen_fwft.curr_fwft_state_reg[1]\(1 downto 0) => \gen_fwft.curr_fwft_state_reg[1]\(1 downto 0),
      \gen_fwft.empty_fwft_i_reg\ => \gen_fwft.empty_fwft_i_reg\,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \syncstages_ff_reg[0]\ => fifo_rd_rst_d3,
      \syncstages_ff_reg[1]\ => \gen_pipe_bit[1].pipe_bit_inst_n_0\,
      underflow_i0 => underflow_i0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_fifo_rst is
  port (
    dest_rst : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    overflow_i0 : out STD_LOGIC;
    \count_value_i_reg[0]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow_i0 : out STD_LOGIC;
    \count_value_i_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pf_ic_rc.prog_full_i_reg\ : out STD_LOGIC;
    \gen_pf_ic_rc.diff_pntr_pf_q_reg[4]\ : out STD_LOGIC;
    \count_value_i_reg[0]_1\ : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[1]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_fwft.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    \gen_fwft.empty_fwft_i_reg\ : in STD_LOGIC;
    \gen_pf_ic_rc.prog_full_i_reg_0\ : in STD_LOGIC;
    rst : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \reg_out_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_fifo_rst : entity is "xpm_fifo_rst";
end design_1_onsemi_vita_spi_0_0_xpm_fifo_rst;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_fifo_rst is
  signal \^dest_rst\ : STD_LOGIC;
  signal fifo_rd_rst_d3 : STD_LOGIC;
  signal fifo_rd_rst_d3_wr_d2 : STD_LOGIC;
  signal fifo_rd_rst_done : STD_LOGIC;
  signal fifo_rd_rst_wr_i : STD_LOGIC;
  signal fifo_wr_rst_d2 : STD_LOGIC;
  signal fifo_wr_rst_d3 : STD_LOGIC;
  signal fifo_wr_rst_done : STD_LOGIC;
  signal \gen_rst_ic.fifo_rd_rst_done_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_i_reg_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wrst_wr_inst_n_1\ : STD_LOGIC;
  signal \gen_rst_ic.wrst_wr_inst_n_2\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal power_on_rst : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \gen_rst_ic.fifo_rd_rst_done_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \gen_rst_ic.fifo_wr_rst_i_i_2\ : label is "soft_lutpair44";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gen_rst_ic.rrst_wr_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 2;
  attribute INIT : string;
  attribute INIT of \gen_rst_ic.rrst_wr_inst\ : label is "0";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.rrst_wr_inst\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_rst_ic.rrst_wr_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gen_rst_ic.rrst_wr_inst\ : label is "TRUE";
  attribute DEF_VAL of \gen_rst_ic.wrst_rd_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 2;
  attribute INIT of \gen_rst_ic.wrst_rd_inst\ : label is "0";
  attribute SIM_ASSERT_CHK of \gen_rst_ic.wrst_rd_inst\ : label is 1;
  attribute VERSION of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute XPM_CDC of \gen_rst_ic.wrst_rd_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gen_rst_ic.wrst_rd_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of overflow_i_i_1 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of wr_rst_busy_INST_0 : label is "soft_lutpair43";
begin
  dest_rst <= \^dest_rst\;
\count_value_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0010"
    )
        port map (
      I0 => fifo_rd_rst_wr_i,
      I1 => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      I2 => wr_en,
      I3 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I4 => Q(0),
      O => D(0)
    );
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0010"
    )
        port map (
      I0 => fifo_rd_rst_wr_i,
      I1 => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      I2 => wr_en,
      I3 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I4 => \count_value_i_reg[1]_1\(0),
      O => \count_value_i_reg[1]\(0)
    );
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0010"
    )
        port map (
      I0 => fifo_rd_rst_wr_i,
      I1 => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      I2 => wr_en,
      I3 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I4 => \count_value_i_reg[1]_2\(0),
      O => \count_value_i_reg[1]_0\(0)
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00040000"
    )
        port map (
      I0 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I1 => wr_en,
      I2 => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      I3 => fifo_rd_rst_wr_i,
      I4 => Q(0),
      I5 => Q(1),
      O => D(1)
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00040000"
    )
        port map (
      I0 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I1 => wr_en,
      I2 => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      I3 => fifo_rd_rst_wr_i,
      I4 => \count_value_i_reg[1]_1\(0),
      I5 => \count_value_i_reg[1]_1\(1),
      O => \count_value_i_reg[1]\(1)
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00040000"
    )
        port map (
      I0 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I1 => wr_en,
      I2 => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      I3 => fifo_rd_rst_wr_i,
      I4 => \count_value_i_reg[1]_2\(0),
      I5 => \count_value_i_reg[1]_2\(1),
      O => \count_value_i_reg[1]_0\(1)
    );
\gen_pf_ic_rc.diff_pntr_pf_q[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444444D4444"
    )
        port map (
      I0 => \reg_out_i_reg[0]\(0),
      I1 => \count_value_i_reg[1]_1\(0),
      I2 => fifo_rd_rst_wr_i,
      I3 => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      I4 => wr_en,
      I5 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      O => \gen_pf_ic_rc.diff_pntr_pf_q_reg[4]\
    );
\gen_pf_ic_rc.prog_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000008A"
    )
        port map (
      I0 => \gen_pf_ic_rc.prog_full_i_reg_0\,
      I1 => rst,
      I2 => rst_d1,
      I3 => fifo_rd_rst_wr_i,
      I4 => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      O => \gen_pf_ic_rc.prog_full_i_reg\
    );
\gen_rst_ic.fifo_rd_rst_d3_wr_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => fifo_rd_rst_wr_i,
      Q => fifo_rd_rst_d3_wr_d2,
      R => '0'
    );
\gen_rst_ic.fifo_rd_rst_done_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => fifo_wr_rst_done,
      I1 => fifo_rd_rst_done,
      I2 => fifo_rd_rst_d3_wr_d2,
      I3 => fifo_rd_rst_wr_i,
      O => \gen_rst_ic.fifo_rd_rst_done_i_1_n_0\
    );
\gen_rst_ic.fifo_rd_rst_done_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_rd_rst_done_i_1_n_0\,
      Q => fifo_rd_rst_done,
      R => '0'
    );
\gen_rst_ic.fifo_wr_rst_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => fifo_wr_rst_d2,
      Q => fifo_wr_rst_d3,
      R => '0'
    );
\gen_rst_ic.fifo_wr_rst_done_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.wrst_wr_inst_n_2\,
      Q => fifo_wr_rst_done,
      R => '0'
    );
\gen_rst_ic.fifo_wr_rst_i_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_wr_rst_done,
      I1 => fifo_rd_rst_done,
      O => p_0_in
    );
\gen_rst_ic.fifo_wr_rst_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.wrst_wr_inst_n_1\,
      Q => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      R => '0'
    );
\gen_rst_ic.rrst_rd_inst\: entity work.\design_1_onsemi_vita_spi_0_0_xpm_reg_pipe_bit__parameterized0\
     port map (
      SR(0) => SR(0),
      \count_value_i_reg[0]\(0) => \count_value_i_reg[0]_0\(0),
      dest_rst => \^dest_rst\,
      fifo_rd_rst_d3 => fifo_rd_rst_d3,
      \gen_fwft.curr_fwft_state_reg[1]\(1 downto 0) => \gen_fwft.curr_fwft_state_reg[1]\(1 downto 0),
      \gen_fwft.empty_fwft_i_reg\ => \gen_fwft.empty_fwft_i_reg\,
      rd_clk => rd_clk,
      rd_en => rd_en,
      underflow_i0 => underflow_i0
    );
\gen_rst_ic.rrst_wr_inst\: entity work.\design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__3\
     port map (
      dest_clk => wr_clk,
      dest_rst => fifo_rd_rst_wr_i,
      src_rst => fifo_rd_rst_d3
    );
\gen_rst_ic.wrst_rd_inst\: entity work.\design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__2\
     port map (
      dest_clk => rd_clk,
      dest_rst => \^dest_rst\,
      src_rst => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\
    );
\gen_rst_ic.wrst_wr_inst\: entity work.design_1_onsemi_vita_spi_0_0_xpm_reg_pipe_bit
     port map (
      Q(0) => power_on_rst(1),
      dest_rst => fifo_rd_rst_wr_i,
      fifo_rd_rst_done => fifo_rd_rst_done,
      fifo_wr_rst_d2 => fifo_wr_rst_d2,
      fifo_wr_rst_d3 => fifo_wr_rst_d3,
      fifo_wr_rst_done => fifo_wr_rst_done,
      \gen_rst_ic.fifo_wr_rst_done_reg\ => \gen_rst_ic.wrst_wr_inst_n_2\,
      \gen_rst_ic.fifo_wr_rst_i_reg\ => \gen_rst_ic.wrst_wr_inst_n_1\,
      \gen_rst_ic.fifo_wr_rst_i_reg_0\ => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      p_0_in => p_0_in,
      rst => rst,
      wr_clk => wr_clk
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I1 => wr_en,
      I2 => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      I3 => fifo_rd_rst_wr_i,
      O => \count_value_i_reg[0]_1\
    );
overflow_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => wr_en,
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I2 => fifo_rd_rst_wr_i,
      I3 => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      O => overflow_i0
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => power_on_rst(1),
      R => '0'
    );
wr_rst_busy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fifo_rd_rst_wr_i,
      I1 => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      O => \count_value_i_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_fifo_rst__xdcDup__1\ is
  port (
    dest_rst : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    overflow_i0 : out STD_LOGIC;
    \count_value_i_reg[0]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow_i0 : out STD_LOGIC;
    \count_value_i_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pf_ic_rc.prog_full_i_reg\ : out STD_LOGIC;
    \gen_pf_ic_rc.diff_pntr_pf_q_reg[4]\ : out STD_LOGIC;
    \count_value_i_reg[0]_1\ : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[1]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_fwft.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    \gen_fwft.empty_fwft_i_reg\ : in STD_LOGIC;
    \gen_pf_ic_rc.prog_full_i_reg_0\ : in STD_LOGIC;
    rst : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \reg_out_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_fifo_rst__xdcDup__1\ : entity is "xpm_fifo_rst";
end \design_1_onsemi_vita_spi_0_0_xpm_fifo_rst__xdcDup__1\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_fifo_rst__xdcDup__1\ is
  signal \^dest_rst\ : STD_LOGIC;
  signal fifo_rd_rst_d3 : STD_LOGIC;
  signal fifo_rd_rst_d3_wr_d2 : STD_LOGIC;
  signal fifo_rd_rst_done : STD_LOGIC;
  signal fifo_rd_rst_wr_i : STD_LOGIC;
  signal fifo_wr_rst_d2 : STD_LOGIC;
  signal fifo_wr_rst_d3 : STD_LOGIC;
  signal fifo_wr_rst_done : STD_LOGIC;
  signal \gen_rst_ic.fifo_rd_rst_done_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_i_reg_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wrst_wr_inst_n_1\ : STD_LOGIC;
  signal \gen_rst_ic.wrst_wr_inst_n_2\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal power_on_rst : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gen_rst_ic.fifo_rd_rst_done_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gen_rst_ic.fifo_wr_rst_i_i_2\ : label is "soft_lutpair26";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gen_rst_ic.rrst_wr_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 2;
  attribute INIT : string;
  attribute INIT of \gen_rst_ic.rrst_wr_inst\ : label is "0";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.rrst_wr_inst\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_rst_ic.rrst_wr_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gen_rst_ic.rrst_wr_inst\ : label is "TRUE";
  attribute DEF_VAL of \gen_rst_ic.wrst_rd_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 2;
  attribute INIT of \gen_rst_ic.wrst_rd_inst\ : label is "0";
  attribute SIM_ASSERT_CHK of \gen_rst_ic.wrst_rd_inst\ : label is 1;
  attribute VERSION of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute XPM_CDC of \gen_rst_ic.wrst_rd_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gen_rst_ic.wrst_rd_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of overflow_i_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of wr_rst_busy_INST_0 : label is "soft_lutpair25";
begin
  dest_rst <= \^dest_rst\;
\count_value_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0010"
    )
        port map (
      I0 => fifo_rd_rst_wr_i,
      I1 => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      I2 => wr_en,
      I3 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I4 => Q(0),
      O => D(0)
    );
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0010"
    )
        port map (
      I0 => fifo_rd_rst_wr_i,
      I1 => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      I2 => wr_en,
      I3 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I4 => \count_value_i_reg[1]_1\(0),
      O => \count_value_i_reg[1]\(0)
    );
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0010"
    )
        port map (
      I0 => fifo_rd_rst_wr_i,
      I1 => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      I2 => wr_en,
      I3 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I4 => \count_value_i_reg[1]_2\(0),
      O => \count_value_i_reg[1]_0\(0)
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00040000"
    )
        port map (
      I0 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I1 => wr_en,
      I2 => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      I3 => fifo_rd_rst_wr_i,
      I4 => Q(0),
      I5 => Q(1),
      O => D(1)
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00040000"
    )
        port map (
      I0 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I1 => wr_en,
      I2 => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      I3 => fifo_rd_rst_wr_i,
      I4 => \count_value_i_reg[1]_1\(0),
      I5 => \count_value_i_reg[1]_1\(1),
      O => \count_value_i_reg[1]\(1)
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00040000"
    )
        port map (
      I0 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I1 => wr_en,
      I2 => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      I3 => fifo_rd_rst_wr_i,
      I4 => \count_value_i_reg[1]_2\(0),
      I5 => \count_value_i_reg[1]_2\(1),
      O => \count_value_i_reg[1]_0\(1)
    );
\gen_pf_ic_rc.diff_pntr_pf_q[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444444D4444"
    )
        port map (
      I0 => \reg_out_i_reg[0]\(0),
      I1 => \count_value_i_reg[1]_1\(0),
      I2 => fifo_rd_rst_wr_i,
      I3 => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      I4 => wr_en,
      I5 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      O => \gen_pf_ic_rc.diff_pntr_pf_q_reg[4]\
    );
\gen_pf_ic_rc.prog_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000008A"
    )
        port map (
      I0 => \gen_pf_ic_rc.prog_full_i_reg_0\,
      I1 => rst,
      I2 => rst_d1,
      I3 => fifo_rd_rst_wr_i,
      I4 => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      O => \gen_pf_ic_rc.prog_full_i_reg\
    );
\gen_rst_ic.fifo_rd_rst_d3_wr_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => fifo_rd_rst_wr_i,
      Q => fifo_rd_rst_d3_wr_d2,
      R => '0'
    );
\gen_rst_ic.fifo_rd_rst_done_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => fifo_wr_rst_done,
      I1 => fifo_rd_rst_done,
      I2 => fifo_rd_rst_d3_wr_d2,
      I3 => fifo_rd_rst_wr_i,
      O => \gen_rst_ic.fifo_rd_rst_done_i_1_n_0\
    );
\gen_rst_ic.fifo_rd_rst_done_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_rd_rst_done_i_1_n_0\,
      Q => fifo_rd_rst_done,
      R => '0'
    );
\gen_rst_ic.fifo_wr_rst_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => fifo_wr_rst_d2,
      Q => fifo_wr_rst_d3,
      R => '0'
    );
\gen_rst_ic.fifo_wr_rst_done_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.wrst_wr_inst_n_2\,
      Q => fifo_wr_rst_done,
      R => '0'
    );
\gen_rst_ic.fifo_wr_rst_i_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_wr_rst_done,
      I1 => fifo_rd_rst_done,
      O => p_0_in
    );
\gen_rst_ic.fifo_wr_rst_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.wrst_wr_inst_n_1\,
      Q => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      R => '0'
    );
\gen_rst_ic.rrst_rd_inst\: entity work.\design_1_onsemi_vita_spi_0_0_xpm_reg_pipe_bit__parameterized0_19\
     port map (
      SR(0) => SR(0),
      \count_value_i_reg[0]\(0) => \count_value_i_reg[0]_0\(0),
      dest_rst => \^dest_rst\,
      fifo_rd_rst_d3 => fifo_rd_rst_d3,
      \gen_fwft.curr_fwft_state_reg[1]\(1 downto 0) => \gen_fwft.curr_fwft_state_reg[1]\(1 downto 0),
      \gen_fwft.empty_fwft_i_reg\ => \gen_fwft.empty_fwft_i_reg\,
      rd_clk => rd_clk,
      rd_en => rd_en,
      underflow_i0 => underflow_i0
    );
\gen_rst_ic.rrst_wr_inst\: entity work.design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst
     port map (
      dest_clk => wr_clk,
      dest_rst => fifo_rd_rst_wr_i,
      src_rst => fifo_rd_rst_d3
    );
\gen_rst_ic.wrst_rd_inst\: entity work.\design_1_onsemi_vita_spi_0_0_xpm_cdc_sync_rst__4\
     port map (
      dest_clk => rd_clk,
      dest_rst => \^dest_rst\,
      src_rst => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\
    );
\gen_rst_ic.wrst_wr_inst\: entity work.design_1_onsemi_vita_spi_0_0_xpm_reg_pipe_bit_20
     port map (
      Q(0) => power_on_rst(1),
      dest_rst => fifo_rd_rst_wr_i,
      fifo_rd_rst_done => fifo_rd_rst_done,
      fifo_wr_rst_d2 => fifo_wr_rst_d2,
      fifo_wr_rst_d3 => fifo_wr_rst_d3,
      fifo_wr_rst_done => fifo_wr_rst_done,
      \gen_rst_ic.fifo_wr_rst_done_reg\ => \gen_rst_ic.wrst_wr_inst_n_2\,
      \gen_rst_ic.fifo_wr_rst_i_reg\ => \gen_rst_ic.wrst_wr_inst_n_1\,
      \gen_rst_ic.fifo_wr_rst_i_reg_0\ => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      p_0_in => p_0_in,
      rst => rst,
      wr_clk => wr_clk
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I1 => wr_en,
      I2 => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      I3 => fifo_rd_rst_wr_i,
      O => \count_value_i_reg[0]_1\
    );
overflow_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => wr_en,
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I2 => fifo_rd_rst_wr_i,
      I3 => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      O => overflow_i0
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => power_on_rst(1),
      R => '0'
    );
wr_rst_busy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fifo_rd_rst_wr_i,
      I1 => \gen_rst_ic.fifo_wr_rst_i_reg_n_0\,
      O => \count_value_i_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 0;
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 16;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 1;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 512;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is "1'b0";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is "xpm_fifo_base";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 6;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 11;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 6;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 11;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 7;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 8;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 8;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 4;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 5;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 4;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 32;
  attribute READ_MODE : integer;
  attribute READ_MODE of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 32;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 4;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 5;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 4;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_onsemi_vita_spi_0_0_xpm_fifo_base : entity is "TRUE";
end design_1_onsemi_vita_spi_0_0_xpm_fifo_base;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_fifo_base is
  signal count_value_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal diff_pntr_pe : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal diff_pntr_pf_q : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal diff_pntr_pf_q0 : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal diff_wr_rd_pntr1_out : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal diff_wr_rd_pntr_rdc : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^empty\ : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_6\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_5\ : STD_LOGIC;
  signal \gen_fwft.empty_fwft_i_reg0\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.prog_empty_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.prog_full_i_i_2_n_0\ : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal overflow_i0 : STD_LOGIC;
  signal \^prog_empty\ : STD_LOGIC;
  signal \^prog_full\ : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_full_i0 : STD_LOGIC;
  signal ram_regout_en : STD_LOGIC;
  signal rd_data_count_i0 : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_pntr_wr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_pntr_wr_cdc : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_pntr_wr_cdc_dc : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rd_rst_i : STD_LOGIC;
  signal rdp_inst_n_10 : STD_LOGIC;
  signal rdp_inst_n_11 : STD_LOGIC;
  signal rdp_inst_n_12 : STD_LOGIC;
  signal rdp_inst_n_6 : STD_LOGIC;
  signal rdp_inst_n_9 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal src_in_bin00_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal underflow_i0 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wr_pntr_plus1_pf : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal wr_pntr_rd_cdc : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_pntr_rd_cdc_dc : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^wr_rst_busy\ : STD_LOGIC;
  signal wrpp2_inst_n_0 : STD_LOGIC;
  signal wrpp2_inst_n_1 : STD_LOGIC;
  signal wrpp2_inst_n_2 : STD_LOGIC;
  signal wrpp2_inst_n_3 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_1 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_12 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_13 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_14 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_2 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_3 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_4 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_5 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_6 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 2;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 5;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 2;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 4;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 4;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 5;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 2;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 4;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \gen_fwft.curr_fwft_state[1]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \gen_fwft.empty_fwft_i_i_1\ : label is "soft_lutpair45";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of \gen_sdpram.xpm_memory_base_inst\ : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of \gen_sdpram.xpm_memory_base_inst\ : label is 2147483647;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 2147483647;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is -1;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of \gen_sdpram.xpm_memory_base_inst\ : label is -1;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of \gen_sdpram.xpm_memory_base_inst\ : label is -2147483647;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : integer;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 512;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 16;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_4\ : label is "soft_lutpair45";
begin
  empty <= \^empty\;
  full <= \^full\;
  prog_empty <= \^prog_empty\;
  prog_full <= \^prog_full\;
  wr_rst_busy <= \^wr_rst_busy\;
\gen_cdc_pntr.rd_pntr_cdc_dc_inst\: entity work.\design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1__2\
     port map (
      dest_clk => wr_clk,
      dest_out_bin(4 downto 0) => rd_pntr_wr_cdc_dc(4 downto 0),
      src_clk => rd_clk,
      src_in_bin(4) => rdp_inst_n_9,
      src_in_bin(3) => rdp_inst_n_10,
      src_in_bin(2) => rdp_inst_n_11,
      src_in_bin(1) => src_in_bin00_out(1),
      src_in_bin(0) => rdp_inst_n_12
    );
\gen_cdc_pntr.rd_pntr_cdc_inst\: entity work.\design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__3\
     port map (
      dest_clk => wr_clk,
      dest_out_bin(3 downto 0) => rd_pntr_wr_cdc(3 downto 0),
      src_clk => rd_clk,
      src_in_bin(3 downto 0) => rd_pntr_ext(3 downto 0)
    );
\gen_cdc_pntr.rpw_gray_reg\: entity work.design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec
     port map (
      D(3 downto 0) => rd_pntr_wr_cdc(3 downto 0),
      Q(3 downto 0) => wr_pntr_plus1_pf(4 downto 1),
      \count_value_i_reg[3]\(3) => wrpp2_inst_n_0,
      \count_value_i_reg[3]\(2) => wrpp2_inst_n_1,
      \count_value_i_reg[3]\(1) => wrpp2_inst_n_2,
      \count_value_i_reg[3]\(0) => wrpp2_inst_n_3,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(3 downto 0) => rd_pntr_wr(3 downto 0),
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\ => xpm_fifo_rst_inst_n_14,
      ram_full_i0 => ram_full_i0,
      \syncstages_ff_reg[1]\ => \^wr_rst_busy\,
      wr_clk => wr_clk
    );
\gen_cdc_pntr.rpw_gray_reg_dc\: entity work.\design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec__parameterized0\
     port map (
      D(2 downto 1) => diff_wr_rd_pntr1_out(4 downto 3),
      D(0) => diff_wr_rd_pntr1_out(1),
      Q(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      Q(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      Q(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      \count_value_i_reg[4]\(4 downto 0) => wr_pntr_ext(4 downto 0),
      \dest_graysync_ff_reg[1][4]\(4 downto 0) => rd_pntr_wr_cdc_dc(4 downto 0),
      \syncstages_ff_reg[1]\ => \^wr_rst_busy\,
      wr_clk => wr_clk
    );
\gen_cdc_pntr.wpr_gray_reg\: entity work.design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec_0
     port map (
      D(1 downto 0) => diff_pntr_pe(1 downto 0),
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      SR(0) => rd_rst_i,
      \count_value_i_reg[3]\(3 downto 0) => rd_pntr_ext(3 downto 0),
      \count_value_i_reg[3]_0\(3) => rdpp1_inst_n_0,
      \count_value_i_reg[3]_0\(2) => rdpp1_inst_n_1,
      \count_value_i_reg[3]_0\(1) => rdpp1_inst_n_2,
      \count_value_i_reg[3]_0\(0) => rdpp1_inst_n_3,
      \dest_graysync_ff_reg[1][3]\(3 downto 0) => wr_pntr_rd_cdc(3 downto 0),
      \gen_fwft.curr_fwft_state_reg[0]\ => rdp_inst_n_6,
      \gen_fwft.curr_fwft_state_reg[1]\(1 downto 0) => curr_fwft_state(1 downto 0),
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
\gen_cdc_pntr.wpr_gray_reg_dc\: entity work.\design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec__parameterized0_1\
     port map (
      D(0) => diff_wr_rd_pntr_rdc(1),
      Q(4) => \gen_cdc_pntr.wpr_gray_reg_dc_n_1\,
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_2\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      SR(0) => rd_rst_i,
      count_value_i(1 downto 0) => count_value_i(1 downto 0),
      \count_value_i_reg[3]\(2) => rd_pntr_ext(3),
      \count_value_i_reg[3]\(1 downto 0) => rd_pntr_ext(1 downto 0),
      \dest_graysync_ff_reg[3][4]\(4 downto 0) => wr_pntr_rd_cdc_dc(4 downto 0),
      rd_clk => rd_clk,
      \rd_data_count_i_reg[4]\ => \gen_cdc_pntr.wpr_gray_reg_dc_n_6\
    );
\gen_cdc_pntr.wr_pntr_cdc_dc_inst\: entity work.\design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0__2\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(4 downto 0) => wr_pntr_rd_cdc_dc(4 downto 0),
      src_clk => wr_clk,
      src_in_bin(4 downto 0) => wr_pntr_ext(4 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_inst\: entity work.\design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__2\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(3 downto 0) => wr_pntr_rd_cdc(3 downto 0),
      src_clk => wr_clk,
      src_in_bin(3 downto 0) => wr_pntr_ext(3 downto 0)
    );
\gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      O => next_fwft_state(0)
    );
\gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => ram_empty_i,
      O => next_fwft_state(1)
    );
\gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => next_fwft_state(0),
      Q => curr_fwft_state(0),
      R => rd_rst_i
    );
\gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => next_fwft_state(1),
      Q => curr_fwft_state(1),
      R => rd_rst_i
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F320"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => \^empty\,
      O => \gen_fwft.empty_fwft_i_reg0\
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_fwft.empty_fwft_i_reg0\,
      Q => \^empty\,
      S => rd_rst_i
    );
\gen_fwft.rdpp1_inst\: entity work.design_1_onsemi_vita_spi_0_0_xpm_counter_updn
     port map (
      D(0) => diff_wr_rd_pntr_rdc(2),
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      SR(0) => rd_rst_i,
      count_value_i(1 downto 0) => count_value_i(1 downto 0),
      \count_value_i_reg[2]\(2 downto 0) => rd_pntr_ext(2 downto 0),
      \gen_fwft.curr_fwft_state_reg[1]\(1 downto 0) => curr_fwft_state(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      \rd_data_count_i_reg[2]\ => \gen_fwft.rdpp1_inst_n_1\,
      rd_en => rd_en,
      src_in_bin(0) => src_in_bin00_out(1)
    );
\gen_pf_ic_rc.diff_pntr_pe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(0),
      Q => \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[0]\,
      R => rd_rst_i
    );
\gen_pf_ic_rc.diff_pntr_pe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(1),
      Q => \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[1]\,
      R => rd_rst_i
    );
\gen_pf_ic_rc.diff_pntr_pe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(2),
      Q => \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[2]\,
      R => rd_rst_i
    );
\gen_pf_ic_rc.diff_pntr_pe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(3),
      Q => \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[3]\,
      R => rd_rst_i
    );
\gen_pf_ic_rc.diff_pntr_pf_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(2),
      Q => diff_pntr_pf_q(2),
      R => \^wr_rst_busy\
    );
\gen_pf_ic_rc.diff_pntr_pf_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(3),
      Q => diff_pntr_pf_q(3),
      R => \^wr_rst_busy\
    );
\gen_pf_ic_rc.diff_pntr_pf_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(4),
      Q => diff_pntr_pf_q(4),
      R => \^wr_rst_busy\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_full_i0,
      Q => \^full\,
      R => \^wr_rst_busy\
    );
\gen_pf_ic_rc.prog_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888BBBBBBB"
    )
        port map (
      I0 => \^prog_empty\,
      I1 => \^empty\,
      I2 => \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[1]\,
      I3 => \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[0]\,
      I4 => \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[2]\,
      I5 => \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[3]\,
      O => \gen_pf_ic_rc.prog_empty_i_i_1_n_0\
    );
\gen_pf_ic_rc.prog_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_pf_ic_rc.prog_empty_i_i_1_n_0\,
      Q => \^prog_empty\,
      S => rd_rst_i
    );
\gen_pf_ic_rc.prog_full_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => \^prog_full\,
      I1 => \^full\,
      I2 => diff_pntr_pf_q(4),
      I3 => diff_pntr_pf_q(2),
      I4 => diff_pntr_pf_q(3),
      O => \gen_pf_ic_rc.prog_full_i_i_2_n_0\
    );
\gen_pf_ic_rc.prog_full_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => xpm_fifo_rst_inst_n_12,
      Q => \^prog_full\,
      R => '0'
    );
\gen_pf_ic_rc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => rd_rst_i
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.\design_1_onsemi_vita_spi_0_0_xpm_memory_base__2\
     port map (
      addra(3 downto 0) => wr_pntr_ext(3 downto 0),
      addrb(3 downto 0) => rd_pntr_ext(3 downto 0),
      clka => wr_clk,
      clkb => rd_clk,
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => dbiterr,
      dina(31 downto 0) => din(31 downto 0),
      dinb(31 downto 0) => B"00000000000000000000000000000000",
      douta(31 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(31 downto 0),
      doutb(31 downto 0) => dout(31 downto 0),
      ena => xpm_fifo_rst_inst_n_14,
      enb => rdp_inst_n_6,
      injectdbiterra => injectdbiterr,
      injectdbiterrb => '0',
      injectsbiterra => injectsbiterr,
      injectsbiterrb => '0',
      regcea => '0',
      regceb => ram_regout_en,
      rsta => '0',
      rstb => rd_rst_i,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => sbiterr,
      sleep => sleep,
      wea(0) => xpm_fifo_rst_inst_n_14,
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => rd_en,
      O => ram_regout_en
    );
overflow_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => overflow_i0,
      Q => overflow,
      R => '0'
    );
\rd_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => diff_wr_rd_pntr_rdc(1),
      Q => rd_data_count(0),
      R => rd_data_count_i0
    );
\rd_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => diff_wr_rd_pntr_rdc(2),
      Q => rd_data_count(1),
      R => rd_data_count_i0
    );
\rd_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => diff_wr_rd_pntr_rdc(3),
      Q => rd_data_count(2),
      R => rd_data_count_i0
    );
\rd_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => diff_wr_rd_pntr_rdc(4),
      Q => rd_data_count(3),
      R => rd_data_count_i0
    );
rdp_inst: entity work.\design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized0\
     port map (
      D(1 downto 0) => diff_pntr_pe(3 downto 2),
      Q(3 downto 0) => rd_pntr_ext(3 downto 0),
      SR(0) => rd_rst_i,
      count_value_i(1 downto 0) => count_value_i(1 downto 0),
      \count_value_i_reg[0]_0\ => rdp_inst_n_6,
      \count_value_i_reg[1]_0\ => \gen_fwft.rdpp1_inst_n_1\,
      \gen_fwft.curr_fwft_state_reg[1]\(1 downto 0) => curr_fwft_state(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      \rd_data_count_i_reg[4]\(1 downto 0) => diff_wr_rd_pntr_rdc(4 downto 3),
      rd_en => rd_en,
      \reg_out_i_reg[3]\(3) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      \reg_out_i_reg[3]\(2) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      \reg_out_i_reg[3]\(1) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      \reg_out_i_reg[3]\(0) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      \reg_out_i_reg[3]_0\ => \gen_cdc_pntr.wpr_gray_reg_dc_n_6\,
      \reg_out_i_reg[4]\(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_1\,
      \reg_out_i_reg[4]\(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_2\,
      \reg_out_i_reg[4]\(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      \reg_out_i_reg[4]\(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      src_in_bin(3) => rdp_inst_n_9,
      src_in_bin(2) => rdp_inst_n_10,
      src_in_bin(1) => rdp_inst_n_11,
      src_in_bin(0) => rdp_inst_n_12
    );
rdpp1_inst: entity work.\design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized1\
     port map (
      Q(3) => rdpp1_inst_n_0,
      Q(2) => rdpp1_inst_n_1,
      Q(1) => rdpp1_inst_n_2,
      Q(0) => rdpp1_inst_n_3,
      SR(0) => rd_rst_i,
      \gen_fwft.curr_fwft_state_reg[0]\ => rdp_inst_n_6,
      \gen_fwft.curr_fwft_state_reg[1]\(1 downto 0) => curr_fwft_state(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
rst_d1_inst: entity work.design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit
     port map (
      rst_d1 => rst_d1,
      \syncstages_ff_reg[1]\ => \^wr_rst_busy\,
      wr_clk => wr_clk
    );
underflow_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => underflow_i0,
      Q => underflow,
      R => '0'
    );
\wr_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => diff_wr_rd_pntr1_out(1),
      Q => wr_data_count(0),
      R => \^wr_rst_busy\
    );
\wr_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => diff_wr_rd_pntr1_out(2),
      Q => wr_data_count(1),
      R => \^wr_rst_busy\
    );
\wr_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => diff_wr_rd_pntr1_out(3),
      Q => wr_data_count(2),
      R => \^wr_rst_busy\
    );
\wr_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => diff_wr_rd_pntr1_out(4),
      Q => wr_data_count(3),
      R => \^wr_rst_busy\
    );
wrp_inst: entity work.\design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized0_2\
     port map (
      D(0) => diff_wr_rd_pntr1_out(2),
      Q(4 downto 0) => wr_pntr_ext(4 downto 0),
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ => xpm_fifo_rst_inst_n_14,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\ => \^full\,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_1\(1) => xpm_fifo_rst_inst_n_5,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_1\(0) => xpm_fifo_rst_inst_n_6,
      \reg_out_i_reg[2]\(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      \reg_out_i_reg[2]\(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      \reg_out_i_reg[2]\(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      \syncstages_ff_reg[1]\ => \^wr_rst_busy\,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
wrpp1_inst: entity work.\design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized1_3\
     port map (
      D(2 downto 0) => diff_pntr_pf_q0(4 downto 2),
      Q(3 downto 0) => wr_pntr_plus1_pf(4 downto 1),
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ => xpm_fifo_rst_inst_n_14,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\ => \^full\,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_1\(1) => xpm_fifo_rst_inst_n_3,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_1\(0) => xpm_fifo_rst_inst_n_4,
      \reg_out_i_reg[0]\ => xpm_fifo_rst_inst_n_13,
      \reg_out_i_reg[3]\(3 downto 0) => rd_pntr_wr(3 downto 0),
      \syncstages_ff_reg[1]\ => \^wr_rst_busy\,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
wrpp2_inst: entity work.\design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized2\
     port map (
      D(1) => xpm_fifo_rst_inst_n_1,
      D(0) => xpm_fifo_rst_inst_n_2,
      Q(3) => wrpp2_inst_n_0,
      Q(2) => wrpp2_inst_n_1,
      Q(1) => wrpp2_inst_n_2,
      Q(0) => wrpp2_inst_n_3,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ => xpm_fifo_rst_inst_n_14,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\ => \^full\,
      \syncstages_ff_reg[1]\ => \^wr_rst_busy\,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
xpm_fifo_rst_inst: entity work.design_1_onsemi_vita_spi_0_0_xpm_fifo_rst
     port map (
      D(1) => xpm_fifo_rst_inst_n_1,
      D(0) => xpm_fifo_rst_inst_n_2,
      Q(1) => wrpp2_inst_n_2,
      Q(0) => wrpp2_inst_n_3,
      SR(0) => rd_data_count_i0,
      \count_value_i_reg[0]\ => \^wr_rst_busy\,
      \count_value_i_reg[0]_0\(0) => rd_rst_i,
      \count_value_i_reg[0]_1\ => xpm_fifo_rst_inst_n_14,
      \count_value_i_reg[1]\(1) => xpm_fifo_rst_inst_n_3,
      \count_value_i_reg[1]\(0) => xpm_fifo_rst_inst_n_4,
      \count_value_i_reg[1]_0\(1) => xpm_fifo_rst_inst_n_5,
      \count_value_i_reg[1]_0\(0) => xpm_fifo_rst_inst_n_6,
      \count_value_i_reg[1]_1\(1 downto 0) => wr_pntr_plus1_pf(2 downto 1),
      \count_value_i_reg[1]_2\(1 downto 0) => wr_pntr_ext(1 downto 0),
      dest_rst => rd_rst_busy,
      \gen_fwft.curr_fwft_state_reg[1]\(1 downto 0) => curr_fwft_state(1 downto 0),
      \gen_fwft.empty_fwft_i_reg\ => \^empty\,
      \gen_pf_ic_rc.diff_pntr_pf_q_reg[4]\ => xpm_fifo_rst_inst_n_13,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ => \^full\,
      \gen_pf_ic_rc.prog_full_i_reg\ => xpm_fifo_rst_inst_n_12,
      \gen_pf_ic_rc.prog_full_i_reg_0\ => \gen_pf_ic_rc.prog_full_i_i_2_n_0\,
      overflow_i0 => overflow_i0,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \reg_out_i_reg[0]\(0) => rd_pntr_wr(0),
      rst => rst,
      rst_d1 => rst_d1,
      underflow_i0 => underflow_i0,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 16;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 1;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 512;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is "1'b0";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is "xpm_fifo_base";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 6;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 11;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 6;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 11;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 7;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 8;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 8;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 4;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 5;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 4;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 32;
  attribute READ_MODE : integer;
  attribute READ_MODE of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 32;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 4;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 5;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 4;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ : entity is "TRUE";
end \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\ is
  signal count_value_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal diff_pntr_pe : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal diff_pntr_pf_q : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal diff_pntr_pf_q0 : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal diff_wr_rd_pntr1_out : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal diff_wr_rd_pntr_rdc : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^empty\ : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_6\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_5\ : STD_LOGIC;
  signal \gen_fwft.empty_fwft_i_reg0\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.prog_empty_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.prog_full_i_i_2_n_0\ : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal overflow_i0 : STD_LOGIC;
  signal \^prog_empty\ : STD_LOGIC;
  signal \^prog_full\ : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_full_i0 : STD_LOGIC;
  signal ram_regout_en : STD_LOGIC;
  signal rd_data_count_i0 : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_pntr_wr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_pntr_wr_cdc : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_pntr_wr_cdc_dc : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rd_rst_i : STD_LOGIC;
  signal rdp_inst_n_10 : STD_LOGIC;
  signal rdp_inst_n_11 : STD_LOGIC;
  signal rdp_inst_n_12 : STD_LOGIC;
  signal rdp_inst_n_6 : STD_LOGIC;
  signal rdp_inst_n_9 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal src_in_bin00_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal underflow_i0 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wr_pntr_plus1_pf : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal wr_pntr_rd_cdc : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_pntr_rd_cdc_dc : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^wr_rst_busy\ : STD_LOGIC;
  signal wrpp2_inst_n_0 : STD_LOGIC;
  signal wrpp2_inst_n_1 : STD_LOGIC;
  signal wrpp2_inst_n_2 : STD_LOGIC;
  signal wrpp2_inst_n_3 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_1 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_12 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_13 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_14 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_2 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_3 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_4 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_5 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_6 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 2;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 5;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 2;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 4;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 4;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 5;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 2;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 4;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \gen_fwft.curr_fwft_state[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \gen_fwft.empty_fwft_i_i_1\ : label is "soft_lutpair27";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of \gen_sdpram.xpm_memory_base_inst\ : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of \gen_sdpram.xpm_memory_base_inst\ : label is 2147483647;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 2147483647;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is -1;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of \gen_sdpram.xpm_memory_base_inst\ : label is -1;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of \gen_sdpram.xpm_memory_base_inst\ : label is -2147483647;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : integer;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 512;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 16;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_4\ : label is "soft_lutpair27";
begin
  empty <= \^empty\;
  full <= \^full\;
  prog_empty <= \^prog_empty\;
  prog_full <= \^prog_full\;
  wr_rst_busy <= \^wr_rst_busy\;
\gen_cdc_pntr.rd_pntr_cdc_dc_inst\: entity work.\design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized1\
     port map (
      dest_clk => wr_clk,
      dest_out_bin(4 downto 0) => rd_pntr_wr_cdc_dc(4 downto 0),
      src_clk => rd_clk,
      src_in_bin(4) => rdp_inst_n_9,
      src_in_bin(3) => rdp_inst_n_10,
      src_in_bin(2) => rdp_inst_n_11,
      src_in_bin(1) => src_in_bin00_out(1),
      src_in_bin(0) => rdp_inst_n_12
    );
\gen_cdc_pntr.rd_pntr_cdc_inst\: entity work.design_1_onsemi_vita_spi_0_0_xpm_cdc_gray
     port map (
      dest_clk => wr_clk,
      dest_out_bin(3 downto 0) => rd_pntr_wr_cdc(3 downto 0),
      src_clk => rd_clk,
      src_in_bin(3 downto 0) => rd_pntr_ext(3 downto 0)
    );
\gen_cdc_pntr.rpw_gray_reg\: entity work.design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec_8
     port map (
      D(3 downto 0) => rd_pntr_wr_cdc(3 downto 0),
      Q(3 downto 0) => wr_pntr_plus1_pf(4 downto 1),
      \count_value_i_reg[3]\(3) => wrpp2_inst_n_0,
      \count_value_i_reg[3]\(2) => wrpp2_inst_n_1,
      \count_value_i_reg[3]\(1) => wrpp2_inst_n_2,
      \count_value_i_reg[3]\(0) => wrpp2_inst_n_3,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(3 downto 0) => rd_pntr_wr(3 downto 0),
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\ => xpm_fifo_rst_inst_n_14,
      ram_full_i0 => ram_full_i0,
      \syncstages_ff_reg[1]\ => \^wr_rst_busy\,
      wr_clk => wr_clk
    );
\gen_cdc_pntr.rpw_gray_reg_dc\: entity work.\design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec__parameterized0_9\
     port map (
      D(2 downto 1) => diff_wr_rd_pntr1_out(4 downto 3),
      D(0) => diff_wr_rd_pntr1_out(1),
      Q(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      Q(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      Q(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      \count_value_i_reg[4]\(4 downto 0) => wr_pntr_ext(4 downto 0),
      \dest_graysync_ff_reg[1][4]\(4 downto 0) => rd_pntr_wr_cdc_dc(4 downto 0),
      \syncstages_ff_reg[1]\ => \^wr_rst_busy\,
      wr_clk => wr_clk
    );
\gen_cdc_pntr.wpr_gray_reg\: entity work.design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec_10
     port map (
      D(1 downto 0) => diff_pntr_pe(1 downto 0),
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      SR(0) => rd_rst_i,
      \count_value_i_reg[3]\(3 downto 0) => rd_pntr_ext(3 downto 0),
      \count_value_i_reg[3]_0\(3) => rdpp1_inst_n_0,
      \count_value_i_reg[3]_0\(2) => rdpp1_inst_n_1,
      \count_value_i_reg[3]_0\(1) => rdpp1_inst_n_2,
      \count_value_i_reg[3]_0\(0) => rdpp1_inst_n_3,
      \dest_graysync_ff_reg[1][3]\(3 downto 0) => wr_pntr_rd_cdc(3 downto 0),
      \gen_fwft.curr_fwft_state_reg[0]\ => rdp_inst_n_6,
      \gen_fwft.curr_fwft_state_reg[1]\(1 downto 0) => curr_fwft_state(1 downto 0),
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
\gen_cdc_pntr.wpr_gray_reg_dc\: entity work.\design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_vec__parameterized0_11\
     port map (
      D(0) => diff_wr_rd_pntr_rdc(1),
      Q(4) => \gen_cdc_pntr.wpr_gray_reg_dc_n_1\,
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_2\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      SR(0) => rd_rst_i,
      count_value_i(1 downto 0) => count_value_i(1 downto 0),
      \count_value_i_reg[3]\(2) => rd_pntr_ext(3),
      \count_value_i_reg[3]\(1 downto 0) => rd_pntr_ext(1 downto 0),
      \dest_graysync_ff_reg[3][4]\(4 downto 0) => wr_pntr_rd_cdc_dc(4 downto 0),
      rd_clk => rd_clk,
      \rd_data_count_i_reg[4]\ => \gen_cdc_pntr.wpr_gray_reg_dc_n_6\
    );
\gen_cdc_pntr.wr_pntr_cdc_dc_inst\: entity work.\design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__parameterized0\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(4 downto 0) => wr_pntr_rd_cdc_dc(4 downto 0),
      src_clk => wr_clk,
      src_in_bin(4 downto 0) => wr_pntr_ext(4 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_inst\: entity work.\design_1_onsemi_vita_spi_0_0_xpm_cdc_gray__4\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(3 downto 0) => wr_pntr_rd_cdc(3 downto 0),
      src_clk => wr_clk,
      src_in_bin(3 downto 0) => wr_pntr_ext(3 downto 0)
    );
\gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      O => next_fwft_state(0)
    );
\gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => ram_empty_i,
      O => next_fwft_state(1)
    );
\gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => next_fwft_state(0),
      Q => curr_fwft_state(0),
      R => rd_rst_i
    );
\gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => next_fwft_state(1),
      Q => curr_fwft_state(1),
      R => rd_rst_i
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F320"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => \^empty\,
      O => \gen_fwft.empty_fwft_i_reg0\
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_fwft.empty_fwft_i_reg0\,
      Q => \^empty\,
      S => rd_rst_i
    );
\gen_fwft.rdpp1_inst\: entity work.design_1_onsemi_vita_spi_0_0_xpm_counter_updn_12
     port map (
      D(0) => diff_wr_rd_pntr_rdc(2),
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      SR(0) => rd_rst_i,
      count_value_i(1 downto 0) => count_value_i(1 downto 0),
      \count_value_i_reg[2]\(2 downto 0) => rd_pntr_ext(2 downto 0),
      \gen_fwft.curr_fwft_state_reg[1]\(1 downto 0) => curr_fwft_state(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      \rd_data_count_i_reg[2]\ => \gen_fwft.rdpp1_inst_n_1\,
      rd_en => rd_en,
      src_in_bin(0) => src_in_bin00_out(1)
    );
\gen_pf_ic_rc.diff_pntr_pe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(0),
      Q => \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[0]\,
      R => rd_rst_i
    );
\gen_pf_ic_rc.diff_pntr_pe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(1),
      Q => \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[1]\,
      R => rd_rst_i
    );
\gen_pf_ic_rc.diff_pntr_pe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(2),
      Q => \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[2]\,
      R => rd_rst_i
    );
\gen_pf_ic_rc.diff_pntr_pe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(3),
      Q => \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[3]\,
      R => rd_rst_i
    );
\gen_pf_ic_rc.diff_pntr_pf_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(2),
      Q => diff_pntr_pf_q(2),
      R => \^wr_rst_busy\
    );
\gen_pf_ic_rc.diff_pntr_pf_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(3),
      Q => diff_pntr_pf_q(3),
      R => \^wr_rst_busy\
    );
\gen_pf_ic_rc.diff_pntr_pf_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(4),
      Q => diff_pntr_pf_q(4),
      R => \^wr_rst_busy\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_full_i0,
      Q => \^full\,
      R => \^wr_rst_busy\
    );
\gen_pf_ic_rc.prog_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888BBBBBBB"
    )
        port map (
      I0 => \^prog_empty\,
      I1 => \^empty\,
      I2 => \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[1]\,
      I3 => \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[0]\,
      I4 => \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[2]\,
      I5 => \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[3]\,
      O => \gen_pf_ic_rc.prog_empty_i_i_1_n_0\
    );
\gen_pf_ic_rc.prog_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_pf_ic_rc.prog_empty_i_i_1_n_0\,
      Q => \^prog_empty\,
      S => rd_rst_i
    );
\gen_pf_ic_rc.prog_full_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => \^prog_full\,
      I1 => \^full\,
      I2 => diff_pntr_pf_q(4),
      I3 => diff_pntr_pf_q(2),
      I4 => diff_pntr_pf_q(3),
      O => \gen_pf_ic_rc.prog_full_i_i_2_n_0\
    );
\gen_pf_ic_rc.prog_full_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => xpm_fifo_rst_inst_n_12,
      Q => \^prog_full\,
      R => '0'
    );
\gen_pf_ic_rc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => rd_rst_i
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.design_1_onsemi_vita_spi_0_0_xpm_memory_base
     port map (
      addra(3 downto 0) => wr_pntr_ext(3 downto 0),
      addrb(3 downto 0) => rd_pntr_ext(3 downto 0),
      clka => wr_clk,
      clkb => rd_clk,
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => dbiterr,
      dina(31 downto 0) => din(31 downto 0),
      dinb(31 downto 0) => B"00000000000000000000000000000000",
      douta(31 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(31 downto 0),
      doutb(31 downto 0) => dout(31 downto 0),
      ena => xpm_fifo_rst_inst_n_14,
      enb => rdp_inst_n_6,
      injectdbiterra => injectdbiterr,
      injectdbiterrb => '0',
      injectsbiterra => injectsbiterr,
      injectsbiterrb => '0',
      regcea => '0',
      regceb => ram_regout_en,
      rsta => '0',
      rstb => rd_rst_i,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => sbiterr,
      sleep => sleep,
      wea(0) => xpm_fifo_rst_inst_n_14,
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => rd_en,
      O => ram_regout_en
    );
overflow_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => overflow_i0,
      Q => overflow,
      R => '0'
    );
\rd_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => diff_wr_rd_pntr_rdc(1),
      Q => rd_data_count(0),
      R => rd_data_count_i0
    );
\rd_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => diff_wr_rd_pntr_rdc(2),
      Q => rd_data_count(1),
      R => rd_data_count_i0
    );
\rd_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => diff_wr_rd_pntr_rdc(3),
      Q => rd_data_count(2),
      R => rd_data_count_i0
    );
\rd_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => diff_wr_rd_pntr_rdc(4),
      Q => rd_data_count(3),
      R => rd_data_count_i0
    );
rdp_inst: entity work.\design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized0_13\
     port map (
      D(1 downto 0) => diff_pntr_pe(3 downto 2),
      Q(3 downto 0) => rd_pntr_ext(3 downto 0),
      SR(0) => rd_rst_i,
      count_value_i(1 downto 0) => count_value_i(1 downto 0),
      \count_value_i_reg[0]_0\ => rdp_inst_n_6,
      \count_value_i_reg[1]_0\ => \gen_fwft.rdpp1_inst_n_1\,
      \gen_fwft.curr_fwft_state_reg[1]\(1 downto 0) => curr_fwft_state(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      \rd_data_count_i_reg[4]\(1 downto 0) => diff_wr_rd_pntr_rdc(4 downto 3),
      rd_en => rd_en,
      \reg_out_i_reg[3]\(3) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      \reg_out_i_reg[3]\(2) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      \reg_out_i_reg[3]\(1) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      \reg_out_i_reg[3]\(0) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      \reg_out_i_reg[3]_0\ => \gen_cdc_pntr.wpr_gray_reg_dc_n_6\,
      \reg_out_i_reg[4]\(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_1\,
      \reg_out_i_reg[4]\(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_2\,
      \reg_out_i_reg[4]\(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      \reg_out_i_reg[4]\(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      src_in_bin(3) => rdp_inst_n_9,
      src_in_bin(2) => rdp_inst_n_10,
      src_in_bin(1) => rdp_inst_n_11,
      src_in_bin(0) => rdp_inst_n_12
    );
rdpp1_inst: entity work.\design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized1_14\
     port map (
      Q(3) => rdpp1_inst_n_0,
      Q(2) => rdpp1_inst_n_1,
      Q(1) => rdpp1_inst_n_2,
      Q(0) => rdpp1_inst_n_3,
      SR(0) => rd_rst_i,
      \gen_fwft.curr_fwft_state_reg[0]\ => rdp_inst_n_6,
      \gen_fwft.curr_fwft_state_reg[1]\(1 downto 0) => curr_fwft_state(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
rst_d1_inst: entity work.design_1_onsemi_vita_spi_0_0_xpm_fifo_reg_bit_15
     port map (
      rst_d1 => rst_d1,
      \syncstages_ff_reg[1]\ => \^wr_rst_busy\,
      wr_clk => wr_clk
    );
underflow_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => underflow_i0,
      Q => underflow,
      R => '0'
    );
\wr_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => diff_wr_rd_pntr1_out(1),
      Q => wr_data_count(0),
      R => \^wr_rst_busy\
    );
\wr_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => diff_wr_rd_pntr1_out(2),
      Q => wr_data_count(1),
      R => \^wr_rst_busy\
    );
\wr_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => diff_wr_rd_pntr1_out(3),
      Q => wr_data_count(2),
      R => \^wr_rst_busy\
    );
\wr_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => diff_wr_rd_pntr1_out(4),
      Q => wr_data_count(3),
      R => \^wr_rst_busy\
    );
wrp_inst: entity work.\design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized0_16\
     port map (
      D(0) => diff_wr_rd_pntr1_out(2),
      Q(4 downto 0) => wr_pntr_ext(4 downto 0),
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ => xpm_fifo_rst_inst_n_14,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\ => \^full\,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_1\(1) => xpm_fifo_rst_inst_n_5,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_1\(0) => xpm_fifo_rst_inst_n_6,
      \reg_out_i_reg[2]\(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      \reg_out_i_reg[2]\(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      \reg_out_i_reg[2]\(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      \syncstages_ff_reg[1]\ => \^wr_rst_busy\,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
wrpp1_inst: entity work.\design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized1_17\
     port map (
      D(2 downto 0) => diff_pntr_pf_q0(4 downto 2),
      Q(3 downto 0) => wr_pntr_plus1_pf(4 downto 1),
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ => xpm_fifo_rst_inst_n_14,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\ => \^full\,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_1\(1) => xpm_fifo_rst_inst_n_3,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_1\(0) => xpm_fifo_rst_inst_n_4,
      \reg_out_i_reg[0]\ => xpm_fifo_rst_inst_n_13,
      \reg_out_i_reg[3]\(3 downto 0) => rd_pntr_wr(3 downto 0),
      \syncstages_ff_reg[1]\ => \^wr_rst_busy\,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
wrpp2_inst: entity work.\design_1_onsemi_vita_spi_0_0_xpm_counter_updn__parameterized2_18\
     port map (
      D(1) => xpm_fifo_rst_inst_n_1,
      D(0) => xpm_fifo_rst_inst_n_2,
      Q(3) => wrpp2_inst_n_0,
      Q(2) => wrpp2_inst_n_1,
      Q(1) => wrpp2_inst_n_2,
      Q(0) => wrpp2_inst_n_3,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ => xpm_fifo_rst_inst_n_14,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\ => \^full\,
      \syncstages_ff_reg[1]\ => \^wr_rst_busy\,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
xpm_fifo_rst_inst: entity work.\design_1_onsemi_vita_spi_0_0_xpm_fifo_rst__xdcDup__1\
     port map (
      D(1) => xpm_fifo_rst_inst_n_1,
      D(0) => xpm_fifo_rst_inst_n_2,
      Q(1) => wrpp2_inst_n_2,
      Q(0) => wrpp2_inst_n_3,
      SR(0) => rd_data_count_i0,
      \count_value_i_reg[0]\ => \^wr_rst_busy\,
      \count_value_i_reg[0]_0\(0) => rd_rst_i,
      \count_value_i_reg[0]_1\ => xpm_fifo_rst_inst_n_14,
      \count_value_i_reg[1]\(1) => xpm_fifo_rst_inst_n_3,
      \count_value_i_reg[1]\(0) => xpm_fifo_rst_inst_n_4,
      \count_value_i_reg[1]_0\(1) => xpm_fifo_rst_inst_n_5,
      \count_value_i_reg[1]_0\(0) => xpm_fifo_rst_inst_n_6,
      \count_value_i_reg[1]_1\(1 downto 0) => wr_pntr_plus1_pf(2 downto 1),
      \count_value_i_reg[1]_2\(1 downto 0) => wr_pntr_ext(1 downto 0),
      dest_rst => rd_rst_busy,
      \gen_fwft.curr_fwft_state_reg[1]\(1 downto 0) => curr_fwft_state(1 downto 0),
      \gen_fwft.empty_fwft_i_reg\ => \^empty\,
      \gen_pf_ic_rc.diff_pntr_pf_q_reg[4]\ => xpm_fifo_rst_inst_n_13,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ => \^full\,
      \gen_pf_ic_rc.prog_full_i_reg\ => xpm_fifo_rst_inst_n_12,
      \gen_pf_ic_rc.prog_full_i_reg_0\ => \gen_pf_ic_rc.prog_full_i_i_2_n_0\,
      overflow_i0 => overflow_i0,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \reg_out_i_reg[0]\(0) => rd_pntr_wr(0),
      rst => rst,
      rst_d1 => rst_d1,
      underflow_i0 => underflow_i0,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_xpm_fifo_async is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 28 downto 0 );
    empty : out STD_LOGIC;
    \SPI_DATA_TX_reg[16]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_xpm_fifo_async : entity is "xpm_fifo_async";
end design_1_onsemi_vita_spi_0_0_xpm_fifo_async;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_xpm_fifo_async is
  signal \^dout\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal vita_spi_txfifo_dout : STD_LOGIC_VECTOR ( 27 downto 25 );
  signal xpm_fifo_base_inst_n_1 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_2 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_3 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_4 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_41 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_42 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_43 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_44 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_45 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_46 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_47 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_48 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_49 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_5 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_6 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_7 : STD_LOGIC;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of xpm_fifo_base_inst : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of xpm_fifo_base_inst : label is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of xpm_fifo_base_inst : label is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of xpm_fifo_base_inst : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of xpm_fifo_base_inst : label is 0;
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of xpm_fifo_base_inst : label is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of xpm_fifo_base_inst : label is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of xpm_fifo_base_inst : label is 16;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of xpm_fifo_base_inst : label is 1;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of xpm_fifo_base_inst : label is 512;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of xpm_fifo_base_inst : label is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of xpm_fifo_base_inst : label is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of xpm_fifo_base_inst : label is "1'b0";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of xpm_fifo_base_inst : label is 6;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of xpm_fifo_base_inst : label is 11;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of xpm_fifo_base_inst : label is 6;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of xpm_fifo_base_inst : label is 11;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of xpm_fifo_base_inst : label is 7;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of xpm_fifo_base_inst : label is 8;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of xpm_fifo_base_inst : label is 8;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 4;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 5;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of xpm_fifo_base_inst : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of xpm_fifo_base_inst : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of xpm_fifo_base_inst : label is 4;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of xpm_fifo_base_inst : label is 32;
  attribute READ_MODE : integer;
  attribute READ_MODE of xpm_fifo_base_inst : label is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of xpm_fifo_base_inst : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of xpm_fifo_base_inst : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xpm_fifo_base_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of xpm_fifo_base_inst : label is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_fifo_base_inst : label is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of xpm_fifo_base_inst : label is 32;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 4;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 5;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of xpm_fifo_base_inst : label is 4;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of xpm_fifo_base_inst : label is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_fifo_base_inst : label is "TRUE";
begin
  dout(28 downto 0) <= \^dout\(28 downto 0);
\SPI_DATA_TX[16]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dout\(25),
      O => \SPI_DATA_TX_reg[16]\(0)
    );
xpm_fifo_base_inst: entity work.design_1_onsemi_vita_spi_0_0_xpm_fifo_base
     port map (
      dbiterr => xpm_fifo_base_inst_n_49,
      din(31 downto 0) => Q(31 downto 0),
      dout(31 downto 28) => \^dout\(28 downto 25),
      dout(27 downto 25) => vita_spi_txfifo_dout(27 downto 25),
      dout(24 downto 0) => \^dout\(24 downto 0),
      empty => empty,
      full => D(0),
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => xpm_fifo_base_inst_n_6,
      prog_empty => xpm_fifo_base_inst_n_41,
      prog_full => xpm_fifo_base_inst_n_1,
      rd_clk => s00_axi_aclk,
      rd_data_count(3) => xpm_fifo_base_inst_n_42,
      rd_data_count(2) => xpm_fifo_base_inst_n_43,
      rd_data_count(1) => xpm_fifo_base_inst_n_44,
      rd_data_count(0) => xpm_fifo_base_inst_n_45,
      rd_en => rd_en,
      rd_rst_busy => xpm_fifo_base_inst_n_47,
      rst => AR(0),
      sbiterr => xpm_fifo_base_inst_n_48,
      sleep => '0',
      underflow => xpm_fifo_base_inst_n_46,
      wr_clk => s00_axi_aclk,
      wr_data_count(3) => xpm_fifo_base_inst_n_2,
      wr_data_count(2) => xpm_fifo_base_inst_n_3,
      wr_data_count(1) => xpm_fifo_base_inst_n_4,
      wr_data_count(0) => xpm_fifo_base_inst_n_5,
      wr_en => wr_en,
      wr_rst_busy => xpm_fifo_base_inst_n_7
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_xpm_fifo_async__xdcDup__1\ is
  port (
    full : out STD_LOGIC;
    \slv_reg7_r1_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 25 downto 0 );
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_xpm_fifo_async__xdcDup__1\ : entity is "xpm_fifo_async";
end \design_1_onsemi_vita_spi_0_0_xpm_fifo_async__xdcDup__1\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_xpm_fifo_async__xdcDup__1\ is
  signal xpm_fifo_base_inst_n_1 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_2 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_3 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_4 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_41 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_42 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_43 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_44 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_45 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_46 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_47 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_48 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_49 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_5 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_6 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_7 : STD_LOGIC;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of xpm_fifo_base_inst : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of xpm_fifo_base_inst : label is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of xpm_fifo_base_inst : label is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of xpm_fifo_base_inst : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of xpm_fifo_base_inst : label is 0;
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of xpm_fifo_base_inst : label is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of xpm_fifo_base_inst : label is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of xpm_fifo_base_inst : label is 16;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of xpm_fifo_base_inst : label is 1;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of xpm_fifo_base_inst : label is 512;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of xpm_fifo_base_inst : label is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of xpm_fifo_base_inst : label is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of xpm_fifo_base_inst : label is "1'b0";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of xpm_fifo_base_inst : label is 6;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of xpm_fifo_base_inst : label is 11;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of xpm_fifo_base_inst : label is 6;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of xpm_fifo_base_inst : label is 11;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of xpm_fifo_base_inst : label is 7;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of xpm_fifo_base_inst : label is 8;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of xpm_fifo_base_inst : label is 8;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 4;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 5;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of xpm_fifo_base_inst : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of xpm_fifo_base_inst : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of xpm_fifo_base_inst : label is 4;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of xpm_fifo_base_inst : label is 32;
  attribute READ_MODE : integer;
  attribute READ_MODE of xpm_fifo_base_inst : label is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of xpm_fifo_base_inst : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of xpm_fifo_base_inst : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xpm_fifo_base_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of xpm_fifo_base_inst : label is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_fifo_base_inst : label is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of xpm_fifo_base_inst : label is 32;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 4;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 5;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of xpm_fifo_base_inst : label is 4;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of xpm_fifo_base_inst : label is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_fifo_base_inst : label is "TRUE";
begin
xpm_fifo_base_inst: entity work.\design_1_onsemi_vita_spi_0_0_xpm_fifo_base__xdcDup__1\
     port map (
      dbiterr => xpm_fifo_base_inst_n_49,
      din(31 downto 26) => B"000000",
      din(25 downto 0) => Q(25 downto 0),
      dout(31 downto 0) => \slv_reg7_r1_reg[31]\(31 downto 0),
      empty => D(0),
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => xpm_fifo_base_inst_n_6,
      prog_empty => xpm_fifo_base_inst_n_41,
      prog_full => xpm_fifo_base_inst_n_1,
      rd_clk => s00_axi_aclk,
      rd_data_count(3) => xpm_fifo_base_inst_n_42,
      rd_data_count(2) => xpm_fifo_base_inst_n_43,
      rd_data_count(1) => xpm_fifo_base_inst_n_44,
      rd_data_count(0) => xpm_fifo_base_inst_n_45,
      rd_en => rd_en,
      rd_rst_busy => xpm_fifo_base_inst_n_47,
      rst => AR(0),
      sbiterr => xpm_fifo_base_inst_n_48,
      sleep => '0',
      underflow => xpm_fifo_base_inst_n_46,
      wr_clk => s00_axi_aclk,
      wr_data_count(3) => xpm_fifo_base_inst_n_2,
      wr_data_count(2) => xpm_fifo_base_inst_n_3,
      wr_data_count(1) => xpm_fifo_base_inst_n_4,
      wr_data_count(0) => xpm_fifo_base_inst_n_5,
      wr_en => wr_en,
      wr_rst_busy => xpm_fifo_base_inst_n_7
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_afifo_32 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 28 downto 0 );
    empty : out STD_LOGIC;
    \SPI_DATA_TX_reg[16]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_afifo_32 : entity is "afifo_32";
end design_1_onsemi_vita_spi_0_0_afifo_32;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_afifo_32 is
begin
afifo_64i_16o_l: entity work.design_1_onsemi_vita_spi_0_0_xpm_fifo_async
     port map (
      AR(0) => AR(0),
      D(0) => D(0),
      Q(31 downto 0) => Q(31 downto 0),
      \SPI_DATA_TX_reg[16]\(0) => \SPI_DATA_TX_reg[16]\(0),
      dout(28 downto 0) => dout(28 downto 0),
      empty => empty,
      rd_en => rd_en,
      s00_axi_aclk => s00_axi_aclk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_onsemi_vita_spi_0_0_afifo_32__xdcDup__1\ is
  port (
    full : out STD_LOGIC;
    \slv_reg7_r1_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 25 downto 0 );
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_onsemi_vita_spi_0_0_afifo_32__xdcDup__1\ : entity is "afifo_32";
end \design_1_onsemi_vita_spi_0_0_afifo_32__xdcDup__1\;

architecture STRUCTURE of \design_1_onsemi_vita_spi_0_0_afifo_32__xdcDup__1\ is
begin
afifo_64i_16o_l: entity work.\design_1_onsemi_vita_spi_0_0_xpm_fifo_async__xdcDup__1\
     port map (
      AR(0) => AR(0),
      D(0) => D(0),
      Q(25 downto 0) => Q(25 downto 0),
      full => full,
      rd_en => rd_en,
      s00_axi_aclk => s00_axi_aclk,
      \slv_reg7_r1_reg[31]\(31 downto 0) => \slv_reg7_r1_reg[31]\(31 downto 0),
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_onsemi_vita_spi_core is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg7_r1_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    io_vita_spi_sclk : out STD_LOGIC;
    io_vita_spi_ssel_n : out STD_LOGIC;
    io_vita_spi_mosi : out STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rd_en : in STD_LOGIC;
    \host_spi_timing_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    oe : in STD_LOGIC;
    io_vita_spi_miso : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_onsemi_vita_spi_core : entity is "onsemi_vita_spi_core";
end design_1_onsemi_vita_spi_0_0_onsemi_vita_spi_core;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_onsemi_vita_spi_core is
  signal T : STD_LOGIC;
  signal \the_spi_seq/p_2_out\ : STD_LOGIC_VECTOR ( 16 to 16 );
  signal vita_spi_mosi_o : STD_LOGIC;
  signal vita_spi_rxfifo_din : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal vita_spi_rxfifo_full : STD_LOGIC;
  signal vita_spi_rxfifo_wen : STD_LOGIC;
  signal vita_spi_sclk_o : STD_LOGIC;
  signal vita_spi_ssel_n_o : STD_LOGIC;
  signal vita_spi_txfifo_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal vita_spi_txfifo_empty : STD_LOGIC;
  signal vita_spi_txfifo_ren : STD_LOGIC;
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OBUFT_vita_spi_mosi : label is "DONT_CARE";
  attribute box_type : string;
  attribute box_type of OBUFT_vita_spi_mosi : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFT_vita_spi_sclk : label is "DONT_CARE";
  attribute box_type of OBUFT_vita_spi_sclk : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFT_vita_spi_ssel_n : label is "DONT_CARE";
  attribute box_type of OBUFT_vita_spi_ssel_n : label is "PRIMITIVE";
begin
OBUFT_vita_spi_mosi: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => vita_spi_mosi_o,
      O => io_vita_spi_mosi,
      T => T
    );
OBUFT_vita_spi_sclk: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => vita_spi_sclk_o,
      O => io_vita_spi_sclk,
      T => T
    );
OBUFT_vita_spi_sclk_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => oe,
      O => T
    );
OBUFT_vita_spi_ssel_n: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => vita_spi_ssel_n_o,
      O => io_vita_spi_ssel_n,
      T => T
    );
vita_spi: entity work.design_1_onsemi_vita_spi_0_0_spi_top
     port map (
      AR(0) => AR(0),
      D(0) => D(0),
      Q(25 downto 0) => vita_spi_rxfifo_din(25 downto 0),
      dout(28 downto 25) => vita_spi_txfifo_dout(31 downto 28),
      dout(24 downto 0) => vita_spi_txfifo_dout(24 downto 0),
      empty => vita_spi_txfifo_empty,
      full => vita_spi_rxfifo_full,
      \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28]\(0) => \the_spi_seq/p_2_out\(16),
      \host_spi_timing_reg[15]\(15 downto 0) => \host_spi_timing_reg[15]\(15 downto 0),
      io_vita_spi_miso => io_vita_spi_miso,
      rd_en => vita_spi_txfifo_ren,
      s00_axi_aclk => s00_axi_aclk,
      vita_spi_mosi_o => vita_spi_mosi_o,
      vita_spi_sclk_o => vita_spi_sclk_o,
      vita_spi_ssel_n_o => vita_spi_ssel_n_o,
      wr_en => vita_spi_rxfifo_wen
    );
vita_spi_rxfifo_l: entity work.\design_1_onsemi_vita_spi_0_0_afifo_32__xdcDup__1\
     port map (
      AR(0) => AR(0),
      D(0) => D(2),
      Q(25 downto 0) => vita_spi_rxfifo_din(25 downto 0),
      full => vita_spi_rxfifo_full,
      rd_en => rd_en,
      s00_axi_aclk => s00_axi_aclk,
      \slv_reg7_r1_reg[31]\(31 downto 0) => \slv_reg7_r1_reg[31]\(31 downto 0),
      wr_en => vita_spi_rxfifo_wen
    );
vita_spi_txfifo_l: entity work.design_1_onsemi_vita_spi_0_0_afifo_32
     port map (
      AR(0) => AR(0),
      D(0) => D(1),
      Q(31 downto 0) => Q(31 downto 0),
      \SPI_DATA_TX_reg[16]\(0) => \the_spi_seq/p_2_out\(16),
      dout(28 downto 25) => vita_spi_txfifo_dout(31 downto 28),
      dout(24 downto 0) => vita_spi_txfifo_dout(24 downto 0),
      empty => vita_spi_txfifo_empty,
      rd_en => vita_spi_txfifo_ren,
      s00_axi_aclk => s00_axi_aclk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_onsemi_vita_spi_v3_1_S00_AXI is
  port (
    s00_axi_rvalid : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    io_vita_spi_sclk : out STD_LOGIC;
    io_vita_spi_ssel_n : out STD_LOGIC;
    io_vita_spi_mosi : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    io_vita_spi_miso : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    oe : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_onsemi_vita_spi_v3_1_S00_AXI : entity is "onsemi_vita_spi_v3_1_S00_AXI";
end design_1_onsemi_vita_spi_0_0_onsemi_vita_spi_v3_1_S00_AXI;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_onsemi_vita_spi_v3_1_S00_AXI is
  signal ERROR : STD_LOGIC;
  signal L : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[7]\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal host_spi_reset : STD_LOGIC;
  signal host_spi_rxfifo_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal host_spi_rxfifo_empty : STD_LOGIC;
  signal host_spi_rxfifo_ren : STD_LOGIC;
  signal host_spi_rxfifo_ren0 : STD_LOGIC;
  signal host_spi_rxfifo_ren_i_2_n_0 : STD_LOGIC;
  signal host_spi_timing : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal host_spi_txfifo_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal host_spi_txfifo_full : STD_LOGIC;
  signal host_spi_txfifo_wen : STD_LOGIC;
  signal host_spi_txfifo_wen_a1 : STD_LOGIC;
  signal host_spi_txfifo_wen_a10 : STD_LOGIC;
  signal host_spi_txfifo_wen_a1_i_2_n_0 : STD_LOGIC;
  signal host_spi_txfifo_wen_a1_i_3_n_0 : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg4 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \slv_reg4[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4_r1_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg4_r1_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg4_r1_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg4_r1_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg5[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg6 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg6[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg7_r1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_rdata[16]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \axi_rdata[25]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \axi_rdata[2]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \axi_rdata[30]_i_4\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \axi_rdata[31]_i_4\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of host_spi_txfifo_wen_a1_i_1 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of host_spi_txfifo_wen_a1_i_3 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \slv_reg4[1]_i_1\ : label is "soft_lutpair47";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_i_1_n_0,
      D => s00_axi_araddr(0),
      Q => sel0(0),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_i_1_n_0,
      D => s00_axi_araddr(1),
      Q => sel0(1),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_i_1_n_0,
      D => s00_axi_araddr(2),
      Q => sel0(2),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_i_1_n_0,
      D => s00_axi_araddr(3),
      Q => \axi_araddr_reg_n_0_[5]\,
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_i_1_n_0,
      D => s00_axi_araddr(4),
      Q => \axi_araddr_reg_n_0_[6]\,
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_i_1_n_0,
      D => s00_axi_araddr(5),
      Q => \axi_araddr_reg_n_0_[7]\,
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(0),
      Q => L(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(1),
      Q => L(1),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(2),
      Q => L(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(3),
      Q => L(3),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(4),
      Q => L(4),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(5),
      Q => L(5),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => \^s00_axi_bvalid\,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_awvalid,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAA02"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \axi_rdata[0]_i_2_n_0\,
      I4 => \axi_rdata[30]_i_4_n_0\,
      O => \axi_rdata[0]_i_1_n_0\
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(0),
      I1 => \slv_reg5_reg_n_0_[0]\,
      I2 => slv_reg7_r1(0),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAA02"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \axi_rdata[10]_i_2_n_0\,
      I4 => \axi_rdata[30]_i_4_n_0\,
      O => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(10),
      I1 => \slv_reg5_reg_n_0_[10]\,
      I2 => slv_reg7_r1(10),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888F888888"
    )
        port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => \axi_rdata[31]_i_4_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \^s_axi_arready\,
      I4 => s00_axi_arvalid,
      I5 => \^s00_axi_rvalid\,
      O => \axi_rdata[11]_i_1_n_0\
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(11),
      I1 => \slv_reg5_reg_n_0_[11]\,
      I2 => slv_reg7_r1(11),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAA02"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \axi_rdata[12]_i_2_n_0\,
      I4 => \axi_rdata[30]_i_4_n_0\,
      O => \axi_rdata[12]_i_1_n_0\
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(12),
      I1 => \slv_reg5_reg_n_0_[12]\,
      I2 => slv_reg7_r1(12),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888F888888"
    )
        port map (
      I0 => \axi_rdata[13]_i_2_n_0\,
      I1 => \axi_rdata[31]_i_4_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \^s_axi_arready\,
      I4 => s00_axi_arvalid,
      I5 => \^s00_axi_rvalid\,
      O => \axi_rdata[13]_i_1_n_0\
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(13),
      I1 => \slv_reg5_reg_n_0_[13]\,
      I2 => slv_reg7_r1(13),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAA02"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \axi_rdata[14]_i_2_n_0\,
      I4 => \axi_rdata[30]_i_4_n_0\,
      O => \axi_rdata[14]_i_1_n_0\
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(14),
      I1 => \slv_reg5_reg_n_0_[14]\,
      I2 => slv_reg7_r1(14),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888F888888"
    )
        port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => \axi_rdata[31]_i_4_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \^s_axi_arready\,
      I4 => s00_axi_arvalid,
      I5 => \^s00_axi_rvalid\,
      O => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(15),
      I1 => \slv_reg5_reg_n_0_[15]\,
      I2 => slv_reg7_r1(15),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF020202"
    )
        port map (
      I0 => \axi_rdata[25]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata[16]_i_2_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => \axi_rdata[16]_i_3_n_0\,
      I5 => \axi_rdata[30]_i_4_n_0\,
      O => \axi_rdata[16]_i_1_n_0\
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[16]\,
      I1 => slv_reg7_r1(16),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg4_r1_reg_n_0_[16]\,
      I5 => slv_reg6(16),
      O => \axi_rdata[16]_i_3_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEFEEEEEE"
    )
        port map (
      I0 => \axi_rdata[25]_i_2_n_0\,
      I1 => \axi_rdata[17]_i_2_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \^s_axi_arready\,
      I4 => s00_axi_arvalid,
      I5 => \^s00_axi_rvalid\,
      O => \axi_rdata[17]_i_1_n_0\
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A828A02088088000"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => slv_reg7_r1(17),
      I4 => \slv_reg5_reg_n_0_[17]\,
      I5 => slv_reg6(17),
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAA02"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \axi_rdata[18]_i_2_n_0\,
      I4 => \axi_rdata[30]_i_4_n_0\,
      O => \axi_rdata[18]_i_1_n_0\
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(18),
      I1 => \slv_reg5_reg_n_0_[18]\,
      I2 => slv_reg7_r1(18),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAA02"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \axi_rdata[19]_i_2_n_0\,
      I4 => \axi_rdata[30]_i_4_n_0\,
      O => \axi_rdata[19]_i_1_n_0\
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(19),
      I1 => \slv_reg5_reg_n_0_[19]\,
      I2 => slv_reg7_r1(19),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAA02"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \axi_rdata[1]_i_2_n_0\,
      I4 => \axi_rdata[30]_i_4_n_0\,
      O => \axi_rdata[1]_i_1_n_0\
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[1]\,
      I1 => slv_reg7_r1(1),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg4_r1_reg_n_0_[1]\,
      I5 => slv_reg6(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888F888888"
    )
        port map (
      I0 => \axi_rdata[20]_i_2_n_0\,
      I1 => \axi_rdata[31]_i_4_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \^s_axi_arready\,
      I4 => s00_axi_arvalid,
      I5 => \^s00_axi_rvalid\,
      O => \axi_rdata[20]_i_1_n_0\
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(20),
      I1 => \slv_reg5_reg_n_0_[20]\,
      I2 => slv_reg7_r1(20),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888F888888"
    )
        port map (
      I0 => \axi_rdata[21]_i_2_n_0\,
      I1 => \axi_rdata[31]_i_4_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \^s_axi_arready\,
      I4 => s00_axi_arvalid,
      I5 => \^s00_axi_rvalid\,
      O => \axi_rdata[21]_i_1_n_0\
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(21),
      I1 => \slv_reg5_reg_n_0_[21]\,
      I2 => slv_reg7_r1(21),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAA02"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \axi_rdata[22]_i_2_n_0\,
      I4 => \axi_rdata[30]_i_4_n_0\,
      O => \axi_rdata[22]_i_1_n_0\
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(22),
      I1 => \slv_reg5_reg_n_0_[22]\,
      I2 => slv_reg7_r1(22),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888F888888"
    )
        port map (
      I0 => \axi_rdata[23]_i_2_n_0\,
      I1 => \axi_rdata[31]_i_4_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \^s_axi_arready\,
      I4 => s00_axi_arvalid,
      I5 => \^s00_axi_rvalid\,
      O => \axi_rdata[23]_i_1_n_0\
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(23),
      I1 => \slv_reg5_reg_n_0_[23]\,
      I2 => slv_reg7_r1(23),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \axi_rdata[25]_i_2_n_0\,
      I1 => \axi_rdata[30]_i_2_n_0\,
      I2 => \axi_rdata[24]_i_2_n_0\,
      I3 => \axi_rdata[30]_i_4_n_0\,
      O => \axi_rdata[24]_i_1_n_0\
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[24]\,
      I1 => slv_reg7_r1(24),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg4_r1_reg_n_0_[24]\,
      I5 => slv_reg6(24),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEFEEEEEE"
    )
        port map (
      I0 => \axi_rdata[25]_i_2_n_0\,
      I1 => \axi_rdata[25]_i_3_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \^s_axi_arready\,
      I4 => s00_axi_arvalid,
      I5 => \^s00_axi_rvalid\,
      O => \axi_rdata[25]_i_1_n_0\
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[6]\,
      I1 => \axi_araddr_reg_n_0_[7]\,
      I2 => \axi_araddr_reg_n_0_[5]\,
      I3 => sel0(2),
      I4 => sel0(1),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A828A02088088000"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => slv_reg7_r1(25),
      I4 => \slv_reg5_reg_n_0_[25]\,
      I5 => slv_reg6(25),
      O => \axi_rdata[25]_i_3_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAA02"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \axi_rdata[26]_i_2_n_0\,
      I4 => \axi_rdata[30]_i_4_n_0\,
      O => \axi_rdata[26]_i_1_n_0\
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(26),
      I1 => \slv_reg5_reg_n_0_[26]\,
      I2 => slv_reg7_r1(26),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAA02"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \axi_rdata[27]_i_2_n_0\,
      I4 => \axi_rdata[30]_i_4_n_0\,
      O => \axi_rdata[27]_i_1_n_0\
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(27),
      I1 => \slv_reg5_reg_n_0_[27]\,
      I2 => slv_reg7_r1(27),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888F888888"
    )
        port map (
      I0 => \axi_rdata[28]_i_2_n_0\,
      I1 => \axi_rdata[31]_i_4_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \^s_axi_arready\,
      I4 => s00_axi_arvalid,
      I5 => \^s00_axi_rvalid\,
      O => \axi_rdata[28]_i_1_n_0\
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(28),
      I1 => \slv_reg5_reg_n_0_[28]\,
      I2 => slv_reg7_r1(28),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888F888888"
    )
        port map (
      I0 => \axi_rdata[29]_i_2_n_0\,
      I1 => \axi_rdata[31]_i_4_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \^s_axi_arready\,
      I4 => s00_axi_arvalid,
      I5 => \^s00_axi_rvalid\,
      O => \axi_rdata[29]_i_1_n_0\
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(29),
      I1 => \slv_reg5_reg_n_0_[29]\,
      I2 => slv_reg7_r1(29),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888F888888"
    )
        port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => \axi_rdata[31]_i_4_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \^s_axi_arready\,
      I4 => s00_axi_arvalid,
      I5 => \^s00_axi_rvalid\,
      O => \axi_rdata[2]_i_1_n_0\
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(2),
      I1 => \slv_reg5_reg_n_0_[2]\,
      I2 => slv_reg7_r1(2),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAA02"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \axi_rdata[30]_i_3_n_0\,
      I4 => \axi_rdata[30]_i_4_n_0\,
      O => \axi_rdata[30]_i_1_n_0\
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000AE"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_araddr_reg_n_0_[7]\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(30),
      I1 => \slv_reg5_reg_n_0_[30]\,
      I2 => slv_reg7_r1(30),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[30]_i_3_n_0\
    );
\axi_rdata[30]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_aresetn,
      O => \axi_rdata[30]_i_4_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888F888888"
    )
        port map (
      I0 => \axi_rdata[31]_i_3_n_0\,
      I1 => \axi_rdata[31]_i_4_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \^s_axi_arready\,
      I4 => s00_axi_arvalid,
      I5 => \^s00_axi_rvalid\,
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(31),
      I1 => \slv_reg5_reg_n_0_[31]\,
      I2 => slv_reg7_r1(31),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[31]_i_3_n_0\
    );
\axi_rdata[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[5]\,
      I1 => \axi_araddr_reg_n_0_[7]\,
      I2 => \axi_araddr_reg_n_0_[6]\,
      I3 => sel0(2),
      O => \axi_rdata[31]_i_4_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888F888888"
    )
        port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => \axi_rdata[31]_i_4_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \^s_axi_arready\,
      I4 => s00_axi_arvalid,
      I5 => \^s00_axi_rvalid\,
      O => \axi_rdata[3]_i_1_n_0\
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(3),
      I1 => \slv_reg5_reg_n_0_[3]\,
      I2 => slv_reg7_r1(3),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAA02"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \axi_rdata[4]_i_2_n_0\,
      I4 => \axi_rdata[30]_i_4_n_0\,
      O => \axi_rdata[4]_i_1_n_0\
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(4),
      I1 => \slv_reg5_reg_n_0_[4]\,
      I2 => slv_reg7_r1(4),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888F888888"
    )
        port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => \axi_rdata[31]_i_4_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \^s_axi_arready\,
      I4 => s00_axi_arvalid,
      I5 => \^s00_axi_rvalid\,
      O => \axi_rdata[5]_i_1_n_0\
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(5),
      I1 => \slv_reg5_reg_n_0_[5]\,
      I2 => slv_reg7_r1(5),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAA02"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \axi_rdata[6]_i_2_n_0\,
      I4 => \axi_rdata[30]_i_4_n_0\,
      O => \axi_rdata[6]_i_1_n_0\
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(6),
      I1 => \slv_reg5_reg_n_0_[6]\,
      I2 => slv_reg7_r1(6),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888F888888"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => \axi_rdata[31]_i_4_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \^s_axi_arready\,
      I4 => s00_axi_arvalid,
      I5 => \^s00_axi_rvalid\,
      O => \axi_rdata[7]_i_1_n_0\
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(7),
      I1 => \slv_reg5_reg_n_0_[7]\,
      I2 => slv_reg7_r1(7),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888F888888"
    )
        port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => \axi_rdata[31]_i_4_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \^s_axi_arready\,
      I4 => s00_axi_arvalid,
      I5 => \^s00_axi_rvalid\,
      O => \axi_rdata[8]_i_1_n_0\
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg6(8),
      I1 => \slv_reg5_reg_n_0_[8]\,
      I2 => slv_reg7_r1(8),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAA02"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \axi_rdata[9]_i_2_n_0\,
      I4 => \axi_rdata[30]_i_4_n_0\,
      O => \axi_rdata[9]_i_1_n_0\
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[9]\,
      I1 => slv_reg7_r1(9),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg4_r1_reg_n_0_[9]\,
      I5 => slv_reg6(9),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[0]_i_1_n_0\,
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[10]_i_1_n_0\,
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[11]_i_1_n_0\,
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[12]_i_1_n_0\,
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[13]_i_1_n_0\,
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[14]_i_1_n_0\,
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[15]_i_1_n_0\,
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[16]_i_1_n_0\,
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[17]_i_1_n_0\,
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[18]_i_1_n_0\,
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[19]_i_1_n_0\,
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[1]_i_1_n_0\,
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[20]_i_1_n_0\,
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[21]_i_1_n_0\,
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[22]_i_1_n_0\,
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[23]_i_1_n_0\,
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[24]_i_1_n_0\,
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[25]_i_1_n_0\,
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[26]_i_1_n_0\,
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[27]_i_1_n_0\,
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[28]_i_1_n_0\,
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[29]_i_1_n_0\,
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[2]_i_1_n_0\,
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[30]_i_1_n_0\,
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[31]_i_2_n_0\,
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[3]_i_1_n_0\,
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[4]_i_1_n_0\,
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[5]_i_1_n_0\,
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[6]_i_1_n_0\,
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[7]_i_1_n_0\,
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[8]_i_1_n_0\,
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[9]_i_1_n_0\,
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
host_spi_reset_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg4(1),
      Q => host_spi_reset,
      R => axi_awready_i_1_n_0
    );
host_spi_rxfifo_ren_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => host_spi_rxfifo_ren_i_2_n_0,
      I1 => L(1),
      O => host_spi_rxfifo_ren0
    );
host_spi_rxfifo_ren_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => host_spi_txfifo_wen_a1_i_3_n_0,
      I1 => L(5),
      I2 => L(4),
      I3 => L(3),
      I4 => L(2),
      I5 => L(0),
      O => host_spi_rxfifo_ren_i_2_n_0
    );
host_spi_rxfifo_ren_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_ren0,
      Q => host_spi_rxfifo_ren,
      R => axi_awready_i_1_n_0
    );
\host_spi_timing_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg_n_0_[0]\,
      Q => host_spi_timing(0),
      R => axi_awready_i_1_n_0
    );
\host_spi_timing_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg_n_0_[10]\,
      Q => host_spi_timing(10),
      R => axi_awready_i_1_n_0
    );
\host_spi_timing_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg_n_0_[11]\,
      Q => host_spi_timing(11),
      R => axi_awready_i_1_n_0
    );
\host_spi_timing_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg_n_0_[12]\,
      Q => host_spi_timing(12),
      R => axi_awready_i_1_n_0
    );
\host_spi_timing_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg_n_0_[13]\,
      Q => host_spi_timing(13),
      R => axi_awready_i_1_n_0
    );
\host_spi_timing_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg_n_0_[14]\,
      Q => host_spi_timing(14),
      R => axi_awready_i_1_n_0
    );
\host_spi_timing_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg_n_0_[15]\,
      Q => host_spi_timing(15),
      R => axi_awready_i_1_n_0
    );
\host_spi_timing_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg_n_0_[1]\,
      Q => host_spi_timing(1),
      R => axi_awready_i_1_n_0
    );
\host_spi_timing_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg_n_0_[2]\,
      Q => host_spi_timing(2),
      R => axi_awready_i_1_n_0
    );
\host_spi_timing_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg_n_0_[3]\,
      Q => host_spi_timing(3),
      R => axi_awready_i_1_n_0
    );
\host_spi_timing_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg_n_0_[4]\,
      Q => host_spi_timing(4),
      R => axi_awready_i_1_n_0
    );
\host_spi_timing_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg_n_0_[5]\,
      Q => host_spi_timing(5),
      R => axi_awready_i_1_n_0
    );
\host_spi_timing_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg_n_0_[6]\,
      Q => host_spi_timing(6),
      R => axi_awready_i_1_n_0
    );
\host_spi_timing_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg_n_0_[7]\,
      Q => host_spi_timing(7),
      R => axi_awready_i_1_n_0
    );
\host_spi_timing_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg_n_0_[8]\,
      Q => host_spi_timing(8),
      R => axi_awready_i_1_n_0
    );
\host_spi_timing_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg_n_0_[9]\,
      Q => host_spi_timing(9),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(0),
      Q => host_spi_txfifo_din(0),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(10),
      Q => host_spi_txfifo_din(10),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(11),
      Q => host_spi_txfifo_din(11),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(12),
      Q => host_spi_txfifo_din(12),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(13),
      Q => host_spi_txfifo_din(13),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(14),
      Q => host_spi_txfifo_din(14),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(15),
      Q => host_spi_txfifo_din(15),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(16),
      Q => host_spi_txfifo_din(16),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(17),
      Q => host_spi_txfifo_din(17),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(18),
      Q => host_spi_txfifo_din(18),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(19),
      Q => host_spi_txfifo_din(19),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(1),
      Q => host_spi_txfifo_din(1),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(20),
      Q => host_spi_txfifo_din(20),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(21),
      Q => host_spi_txfifo_din(21),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(22),
      Q => host_spi_txfifo_din(22),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(23),
      Q => host_spi_txfifo_din(23),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(24),
      Q => host_spi_txfifo_din(24),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(25),
      Q => host_spi_txfifo_din(25),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(26),
      Q => host_spi_txfifo_din(26),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(27),
      Q => host_spi_txfifo_din(27),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(28),
      Q => host_spi_txfifo_din(28),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(29),
      Q => host_spi_txfifo_din(29),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(2),
      Q => host_spi_txfifo_din(2),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(30),
      Q => host_spi_txfifo_din(30),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(31),
      Q => host_spi_txfifo_din(31),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(3),
      Q => host_spi_txfifo_din(3),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(4),
      Q => host_spi_txfifo_din(4),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(5),
      Q => host_spi_txfifo_din(5),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(6),
      Q => host_spi_txfifo_din(6),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(7),
      Q => host_spi_txfifo_din(7),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(8),
      Q => host_spi_txfifo_din(8),
      R => axi_awready_i_1_n_0
    );
\host_spi_txfifo_din_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg6(9),
      Q => host_spi_txfifo_din(9),
      R => axi_awready_i_1_n_0
    );
host_spi_txfifo_wen_a1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => host_spi_txfifo_wen_a1_i_2_n_0,
      I1 => L(1),
      O => host_spi_txfifo_wen_a10
    );
host_spi_txfifo_wen_a1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => host_spi_txfifo_wen_a1_i_3_n_0,
      I1 => L(5),
      I2 => L(4),
      I3 => L(3),
      I4 => L(2),
      I5 => L(0),
      O => host_spi_txfifo_wen_a1_i_2_n_0
    );
host_spi_txfifo_wen_a1_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => \^s_axi_wready\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      O => host_spi_txfifo_wen_a1_i_3_n_0
    );
host_spi_txfifo_wen_a1_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_txfifo_wen_a10,
      Q => host_spi_txfifo_wen_a1,
      R => axi_awready_i_1_n_0
    );
host_spi_txfifo_wen_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_txfifo_wen_a1,
      Q => host_spi_txfifo_wen,
      R => axi_awready_i_1_n_0
    );
onsemi_vita_spicore_inst: entity work.design_1_onsemi_vita_spi_0_0_onsemi_vita_spi_core
     port map (
      AR(0) => host_spi_reset,
      D(2) => host_spi_rxfifo_empty,
      D(1) => host_spi_txfifo_full,
      D(0) => ERROR,
      Q(31 downto 0) => host_spi_txfifo_din(31 downto 0),
      \host_spi_timing_reg[15]\(15 downto 0) => host_spi_timing(15 downto 0),
      io_vita_spi_miso => io_vita_spi_miso,
      io_vita_spi_mosi => io_vita_spi_mosi,
      io_vita_spi_sclk => io_vita_spi_sclk,
      io_vita_spi_ssel_n => io_vita_spi_ssel_n,
      oe => oe,
      rd_en => host_spi_rxfifo_ren,
      s00_axi_aclk => s00_axi_aclk,
      \slv_reg7_r1_reg[31]\(31 downto 0) => host_spi_rxfifo_dout(31 downto 0),
      wr_en => host_spi_txfifo_wen
    );
\slv_reg4[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => L(1),
      I2 => s00_axi_wstrb(0),
      I3 => host_spi_txfifo_wen_a1_i_2_n_0,
      I4 => slv_reg4(1),
      O => \slv_reg4[1]_i_1_n_0\
    );
\slv_reg4_r1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_txfifo_full,
      Q => \slv_reg4_r1_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_r1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_reset,
      Q => \slv_reg4_r1_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_r1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_empty,
      Q => \slv_reg4_r1_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_r1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => ERROR,
      Q => \slv_reg4_r1_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg4[1]_i_1_n_0\,
      Q => slv_reg4(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg5[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => L(1),
      I1 => host_spi_rxfifo_ren_i_2_n_0,
      I2 => s00_axi_wstrb(1),
      O => \slv_reg5[15]_i_1_n_0\
    );
\slv_reg5[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => L(1),
      I1 => host_spi_rxfifo_ren_i_2_n_0,
      I2 => s00_axi_wstrb(2),
      O => \slv_reg5[23]_i_1_n_0\
    );
\slv_reg5[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => L(1),
      I1 => host_spi_rxfifo_ren_i_2_n_0,
      I2 => s00_axi_wstrb(3),
      O => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => L(1),
      I1 => host_spi_rxfifo_ren_i_2_n_0,
      I2 => s00_axi_wstrb(0),
      O => \slv_reg5[7]_i_1_n_0\
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg5_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg5_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg5_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg5_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg5_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg5_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg5_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg5_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg5_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg5_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg5_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg5_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg5_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg5_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg5_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg5_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg5_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg5_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg5_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg5_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg5_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg5_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg5_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg5_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg5_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg5_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg5_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg5_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg5_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg5_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg5_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg5_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg6[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => L(1),
      I1 => host_spi_txfifo_wen_a1_i_2_n_0,
      I2 => s00_axi_wstrb(1),
      O => \slv_reg6[15]_i_1_n_0\
    );
\slv_reg6[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => L(1),
      I1 => host_spi_txfifo_wen_a1_i_2_n_0,
      I2 => s00_axi_wstrb(2),
      O => \slv_reg6[23]_i_1_n_0\
    );
\slv_reg6[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => L(1),
      I1 => host_spi_txfifo_wen_a1_i_2_n_0,
      I2 => s00_axi_wstrb(3),
      O => \slv_reg6[31]_i_1_n_0\
    );
\slv_reg6[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => L(1),
      I1 => host_spi_txfifo_wen_a1_i_2_n_0,
      I2 => s00_axi_wstrb(0),
      O => \slv_reg6[7]_i_1_n_0\
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg6(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg6(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg6(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg6(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg6(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg6(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg6(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg6(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg6(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg6(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg6(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg6(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg6(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg6(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg6(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg6(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg6(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg6(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg6(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg6(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg6(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg6(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg6(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg6(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg6(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg6(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg6(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg6(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg6(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg6(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg6(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg6(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(0),
      Q => slv_reg7_r1(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(10),
      Q => slv_reg7_r1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(11),
      Q => slv_reg7_r1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(12),
      Q => slv_reg7_r1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(13),
      Q => slv_reg7_r1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(14),
      Q => slv_reg7_r1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(15),
      Q => slv_reg7_r1(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(16),
      Q => slv_reg7_r1(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(17),
      Q => slv_reg7_r1(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(18),
      Q => slv_reg7_r1(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(19),
      Q => slv_reg7_r1(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(1),
      Q => slv_reg7_r1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(20),
      Q => slv_reg7_r1(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(21),
      Q => slv_reg7_r1(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(22),
      Q => slv_reg7_r1(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(23),
      Q => slv_reg7_r1(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(24),
      Q => slv_reg7_r1(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(25),
      Q => slv_reg7_r1(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(26),
      Q => slv_reg7_r1(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(27),
      Q => slv_reg7_r1(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(28),
      Q => slv_reg7_r1(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(29),
      Q => slv_reg7_r1(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(2),
      Q => slv_reg7_r1(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(30),
      Q => slv_reg7_r1(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(31),
      Q => slv_reg7_r1(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(3),
      Q => slv_reg7_r1(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(4),
      Q => slv_reg7_r1(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(5),
      Q => slv_reg7_r1(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(6),
      Q => slv_reg7_r1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(7),
      Q => slv_reg7_r1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(8),
      Q => slv_reg7_r1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_r1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => host_spi_rxfifo_dout(9),
      Q => slv_reg7_r1(9),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0_onsemi_vita_spi_v3_1 is
  port (
    s00_axi_rvalid : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    io_vita_spi_sclk : out STD_LOGIC;
    io_vita_spi_ssel_n : out STD_LOGIC;
    io_vita_spi_mosi : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    io_vita_spi_miso : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    oe : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_onsemi_vita_spi_0_0_onsemi_vita_spi_v3_1 : entity is "onsemi_vita_spi_v3_1";
end design_1_onsemi_vita_spi_0_0_onsemi_vita_spi_v3_1;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0_onsemi_vita_spi_v3_1 is
begin
onsemi_vita_spi_v3_1_S00_AXI_inst: entity work.design_1_onsemi_vita_spi_0_0_onsemi_vita_spi_v3_1_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      io_vita_spi_miso => io_vita_spi_miso,
      io_vita_spi_mosi => io_vita_spi_mosi,
      io_vita_spi_sclk => io_vita_spi_sclk,
      io_vita_spi_ssel_n => io_vita_spi_ssel_n,
      oe => oe,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(5 downto 0) => s00_axi_araddr(5 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(5 downto 0) => s00_axi_awaddr(5 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_onsemi_vita_spi_0_0 is
  port (
    oe : in STD_LOGIC;
    io_vita_spi_sclk : out STD_LOGIC;
    io_vita_spi_ssel_n : out STD_LOGIC;
    io_vita_spi_mosi : out STD_LOGIC;
    io_vita_spi_miso : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_onsemi_vita_spi_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_onsemi_vita_spi_0_0 : entity is "design_1_onsemi_vita_spi_0_0,onsemi_vita_spi_v3_1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_onsemi_vita_spi_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_onsemi_vita_spi_0_0 : entity is "onsemi_vita_spi_v3_1,Vivado 2017.1";
end design_1_onsemi_vita_spi_0_0;

architecture STRUCTURE of design_1_onsemi_vita_spi_0_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_onsemi_vita_spi_0_0_onsemi_vita_spi_v3_1
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      io_vita_spi_miso => io_vita_spi_miso,
      io_vita_spi_mosi => io_vita_spi_mosi,
      io_vita_spi_sclk => io_vita_spi_sclk,
      io_vita_spi_ssel_n => io_vita_spi_ssel_n,
      oe => oe,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(5 downto 0) => s00_axi_araddr(7 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(5 downto 0) => s00_axi_awaddr(7 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
