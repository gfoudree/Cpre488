--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Wed Feb 21 19:11:37 2018
--Host        : phjones-HP running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    IO_HDMII_spdif : in STD_LOGIC;
    IO_HDMIO_clk : out STD_LOGIC;
    IO_HDMIO_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    IO_HDMIO_spdif : out STD_LOGIC;
    fmc_imageon_iic_rst_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    fmc_imageon_iic_scl_io : inout STD_LOGIC;
    fmc_imageon_iic_sda_io : inout STD_LOGIC;
    fmc_imageon_vclk : in STD_LOGIC;
    fmc_ipmi_id_eeprom_scl_io : inout STD_LOGIC;
    fmc_ipmi_id_eeprom_sda_io : inout STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    fmc_imageon_vclk : in STD_LOGIC;
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    fmc_imageon_iic_scl_i : in STD_LOGIC;
    fmc_imageon_iic_scl_o : out STD_LOGIC;
    fmc_imageon_iic_scl_t : out STD_LOGIC;
    fmc_imageon_iic_sda_i : in STD_LOGIC;
    fmc_imageon_iic_sda_o : out STD_LOGIC;
    fmc_imageon_iic_sda_t : out STD_LOGIC;
    IO_HDMIO_clk : out STD_LOGIC;
    IO_HDMIO_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    IO_HDMIO_spdif : out STD_LOGIC;
    fmc_imageon_iic_rst_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    IO_HDMII_spdif : in STD_LOGIC;
    fmc_ipmi_id_eeprom_scl_i : in STD_LOGIC;
    fmc_ipmi_id_eeprom_scl_o : out STD_LOGIC;
    fmc_ipmi_id_eeprom_scl_t : out STD_LOGIC;
    fmc_ipmi_id_eeprom_sda_i : in STD_LOGIC;
    fmc_ipmi_id_eeprom_sda_o : out STD_LOGIC;
    fmc_ipmi_id_eeprom_sda_t : out STD_LOGIC
  );
  end component design_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal fmc_imageon_iic_scl_i : STD_LOGIC;
  signal fmc_imageon_iic_scl_o : STD_LOGIC;
  signal fmc_imageon_iic_scl_t : STD_LOGIC;
  signal fmc_imageon_iic_sda_i : STD_LOGIC;
  signal fmc_imageon_iic_sda_o : STD_LOGIC;
  signal fmc_imageon_iic_sda_t : STD_LOGIC;
  signal fmc_ipmi_id_eeprom_scl_i : STD_LOGIC;
  signal fmc_ipmi_id_eeprom_scl_o : STD_LOGIC;
  signal fmc_ipmi_id_eeprom_scl_t : STD_LOGIC;
  signal fmc_ipmi_id_eeprom_sda_i : STD_LOGIC;
  signal fmc_ipmi_id_eeprom_sda_o : STD_LOGIC;
  signal fmc_ipmi_id_eeprom_sda_t : STD_LOGIC;
begin
design_1_i: component design_1
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      IO_HDMII_spdif => IO_HDMII_spdif,
      IO_HDMIO_clk => IO_HDMIO_clk,
      IO_HDMIO_data(15 downto 0) => IO_HDMIO_data(15 downto 0),
      IO_HDMIO_spdif => IO_HDMIO_spdif,
      fmc_imageon_iic_rst_n(0) => fmc_imageon_iic_rst_n(0),
      fmc_imageon_iic_scl_i => fmc_imageon_iic_scl_i,
      fmc_imageon_iic_scl_o => fmc_imageon_iic_scl_o,
      fmc_imageon_iic_scl_t => fmc_imageon_iic_scl_t,
      fmc_imageon_iic_sda_i => fmc_imageon_iic_sda_i,
      fmc_imageon_iic_sda_o => fmc_imageon_iic_sda_o,
      fmc_imageon_iic_sda_t => fmc_imageon_iic_sda_t,
      fmc_imageon_vclk => fmc_imageon_vclk,
      fmc_ipmi_id_eeprom_scl_i => fmc_ipmi_id_eeprom_scl_i,
      fmc_ipmi_id_eeprom_scl_o => fmc_ipmi_id_eeprom_scl_o,
      fmc_ipmi_id_eeprom_scl_t => fmc_ipmi_id_eeprom_scl_t,
      fmc_ipmi_id_eeprom_sda_i => fmc_ipmi_id_eeprom_sda_i,
      fmc_ipmi_id_eeprom_sda_o => fmc_ipmi_id_eeprom_sda_o,
      fmc_ipmi_id_eeprom_sda_t => fmc_ipmi_id_eeprom_sda_t
    );
fmc_imageon_iic_scl_iobuf: component IOBUF
     port map (
      I => fmc_imageon_iic_scl_o,
      IO => fmc_imageon_iic_scl_io,
      O => fmc_imageon_iic_scl_i,
      T => fmc_imageon_iic_scl_t
    );
fmc_imageon_iic_sda_iobuf: component IOBUF
     port map (
      I => fmc_imageon_iic_sda_o,
      IO => fmc_imageon_iic_sda_io,
      O => fmc_imageon_iic_sda_i,
      T => fmc_imageon_iic_sda_t
    );
fmc_ipmi_id_eeprom_scl_iobuf: component IOBUF
     port map (
      I => fmc_ipmi_id_eeprom_scl_o,
      IO => fmc_ipmi_id_eeprom_scl_io,
      O => fmc_ipmi_id_eeprom_scl_i,
      T => fmc_ipmi_id_eeprom_scl_t
    );
fmc_ipmi_id_eeprom_sda_iobuf: component IOBUF
     port map (
      I => fmc_ipmi_id_eeprom_sda_o,
      IO => fmc_ipmi_id_eeprom_sda_io,
      O => fmc_ipmi_id_eeprom_sda_i,
      T => fmc_ipmi_id_eeprom_sda_t
    );
end STRUCTURE;
