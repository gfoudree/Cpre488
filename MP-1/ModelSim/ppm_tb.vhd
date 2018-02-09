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
		slv_reg1 : inout std_logic_vector(31 downto 0);
		slv_reg4 : out std_logic_vector(31 downto 0);
		slv_reg5 : out std_logic_vector(31 downto 0);
		slv_reg6 : out std_logic_vector(31 downto 0);
		slv_reg7 : out std_logic_vector(31 downto 0);
		slv_reg8 : out std_logic_vector(31 downto 0);
		slv_reg9 : out std_logic_vector(31 downto 0)
	);
end component ppm_capture;



----------------------------------------------
--          Signal declarations             --
----------------------------------------------
type my_input_states is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, 
                         S12, S13, S14, S15, STOP_TEST);

	signal ppm : std_logic;
	signal reset : std_logic;
	signal clk : std_logic;
	signal input_state    : my_input_states;  -- Direct which input vector to use



begin


-- Processes

-------------------------------------------
-------------------------------------------
-- Process Name: system_clk_gen          --
--                                       --
-- Description: Generat clock to run the --
-- simulation.                           --
--                                       --
--                                       --
-------------------------------------------
-------------------------------------------  
system_clk_gen : process   -- 500 MHz clock
begin
  clk <= '0';
  wait for 10 ns;
    loop
      wait for 1 ns;
      clk <= '1';
      wait for 1 ns;
      clk <= '0';
    end loop;
end process system_clk_gen;


-------------------------------------------
-------------------------------------------
-- Process Name: toggle_reset            --
--                                       --
-- Description: Toggle system reset.     --
-- used if DUT requires a reset signal   --
--                                       --
--                                       --
-------------------------------------------
-------------------------------------------  
toggle_reset : process
begin
  reset <= '1'; -- place circuit in reset
  wait for 95 ns;
  reset <= '0'; 
  wait;
end process toggle_reset;




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
    if(reset = '1') then
      ppm <= '1';
      input_state    <= S0;
    else
	
	case input_state is
		when S0 => 
			ppm <= '0';
			input_state <= S1;
		when S1 =>
			ppm <= '1';
			input_state <= S2;
		when S2 =>
			ppm <= '0';
			input_state <= S3;
		when S3 =>
			ppm <= '1';
			input_state <= S4;
		when S4 =>
			ppm <= '0';
			input_state <= S5;
		when others =>
	end case;
			
      
    end if;
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
  slv_reg0	=> x"00000000"
);


end tb1;
