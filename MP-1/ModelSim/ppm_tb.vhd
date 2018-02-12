-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--                                                                           --
-- File Name: TB_Network_Detection.vhd                                                  --
-- Author: Phillip Jones (phjones@iastate.edu  )                             --
-- Date: 2/1/2018                                                           --
--                                                                           --
-- Description: Base testbench for generating stimulus input for             -- 
-- DUT  (Device Under Test)                                                  --
--                                                                           --
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity ppm_tb is
port
(
my_in : in std_logic -- input needed to keep modelsim from complainning???
);
end ppm_tb;

architecture tb1 of ppm_tb is

----------------------------------------------
--       Component declarations             --
----------------------------------------------

-- Device under test

component ppm_capture
	port (
		-- Users to add ports here
        	PPM_IN  : in std_logic;
        	PPM_CLK  : in std_logic;
		S_AXI_ARESETN : in std_logic;
		slv_reg0 : in std_logic_vector(31 downto 0);
		slv_reg1_out : out std_logic_vector(31 downto 0);
		slv_reg4_out : out std_logic_vector(31 downto 0);
		slv_reg5_out : out std_logic_vector(31 downto 0);
		slv_reg6_out : out std_logic_vector(31 downto 0);
		slv_reg7_out : out std_logic_vector(31 downto 0);
		slv_reg8_out : out std_logic_vector(31 downto 0);
		slv_reg9_out : out std_logic_vector(31 downto 0);
		slv_reg1_in : in std_logic_vector(31 downto 0);
		slv_reg4_in : in std_logic_vector(31 downto 0);
		slv_reg5_in : in std_logic_vector(31 downto 0);
		slv_reg6_in : in std_logic_vector(31 downto 0);
		slv_reg7_in : in std_logic_vector(31 downto 0);
		slv_reg8_in : in std_logic_vector(31 downto 0);
		slv_reg9_in : in std_logic_vector(31 downto 0)
	);
end component ppm_capture;



----------------------------------------------
--          Signal declarations             --
----------------------------------------------
type my_input_states is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, 
                         S12, S13, S14, S15, S16, S17, S18, S19, S20, S21, 
			S22,S23,S24,S25,S26,S27,S28,S29, STOP_TEST);

	signal ppm : std_logic;
	signal reset : std_logic;
	signal clk : std_logic;
	signal input_state    : my_input_states;  -- Direct which input vector to use
	signal slv_reg1 : std_logic_vector(31 downto 0);
	signal slv_reg4 : std_logic_vector(31 downto 0);
	signal slv_reg5 : std_logic_vector(31 downto 0);
	signal slv_reg6 : std_logic_vector(31 downto 0);
	signal slv_reg7 : std_logic_vector(31 downto 0);
	signal slv_reg8 : std_logic_vector(31 downto 0);
	signal slv_reg9 : std_logic_vector(31 downto 0);





begin


-- Processes


------------------------------------------------------------
------------------------------------------------------------
--                                                        --
-- Process Name: DUT stimulus                             --
--                                                        --
-- Send inputs to dut. Holds inputs for HOLD_INPUT_reg    --
--  clk cycles                                            --
--                                                        --
------------------------------------------------------------
------------------------------------------------------------
ppm_stimulus : process(clk)
begin
  if (clk = '1' and clk'event) then

    -- Initialize the test
    if(reset = '0') then
      ppm <= '1';
      --input_state    <= S0;
    end if;
	
	case input_state is
		when S0 => 
			reset <= '0';
			input_state <= S1;
		when S1 =>
			reset <= '1';
			input_state <= S2;
		when S2 => 
			ppm <= '0';
			input_state <= S3;
		when S3 =>
			ppm <= '0';
			input_state <= S4;
		when S4 =>
			ppm <= '1';
			input_state <= S5;
		when S5 =>
			ppm <= '0';
			input_state <= S6;
		when S6 =>
			ppm <= '0';
			input_state <= S7;
		when S7 =>
			ppm <= '1';
			input_state <= S8;
		when S8 =>
			ppm <= '0';
			input_state <= S9;
		when S9 =>
			ppm <= '0';
			input_state <= S10;
		when S10 =>
			ppm <= '1';
			input_state <= S11;
		when S11 =>
			ppm <= '0';
			input_state <= S12;
		when S12 =>
			ppm <= '0';
			input_state <= S13;
		when S13 =>
			ppm <= '1';
			input_state <= S14;
		when S14 =>
			ppm <= '0';
			input_state <= S15;
		when S15 =>
			ppm <= '0';
			input_state <= S16;
		when S16 =>
			ppm <= '1';
			input_state <= S17;
		when S17 =>
			ppm <= '0';
			input_state <= S18;
		when S18 =>
			ppm <= '0';
			input_state <= S19;
		when S19 =>
			ppm <= '1';
			input_state <= S20;
		when S20 =>
			ppm <= '0';
			input_state <= S21;
		when S21 =>
			ppm <= '0';
			input_state <= S22;
		when S22 =>
			ppm <= '1';
			input_state <= S23;
		when S23 =>
			ppm <= '0';
			input_state <= S24;
		when S24 =>
			ppm <= '0';
			input_state <= S25;
		when S25 =>
			ppm <= '0';
			input_state <= S26;
		when S26 =>
			ppm <= '1';
			input_state <= S27;
		when S27 =>
			ppm <= '0';
			input_state <= S28;
		when S28 =>
			ppm <= '1';
			input_state <= S29;
		when others =>
	end case;
  end if;
end process ppm_stimulus;



-- Combinational assignments

  -- none

-- Connect DUT (Network Detection circuit) to the testbench

my_ppm_capture : ppm_capture
port map
(
  PPM_IN        => ppm,     
  PPM_CLK       => clk,       
  S_AXI_ARESETN => reset,
  slv_reg0	=> x"00000000",
  slv_reg1_out => slv_reg1,
		slv_reg4_out => slv_reg4,
		slv_reg5_out  => slv_reg5,
		slv_reg6_out => slv_reg6,
		slv_reg7_out => slv_reg7,
		slv_reg8_out  => slv_reg8,
		slv_reg9_out => slv_reg9,
		slv_reg1_in => slv_reg1,
		slv_reg4_in => slv_reg4,
		slv_reg5_in => slv_reg5,
		slv_reg6_in => slv_reg6,
		slv_reg7_in => slv_reg7,
		slv_reg8_in => slv_reg8,
		slv_reg9_in => slv_reg9
);


end tb1;
