-- library declaration
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
-- entity
entity ppm_capture is
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
end ppm_capture;

architecture arc of ppm_capture is
	------------------------------------------------
	---- Signals for user logic register space example
	--------------------------------------------------
	type state_type is (A, B);
	signal PS, NS : state_type;
	signal reg_addr, next_reg_addr : std_logic_vector(3 downto 0);
	signal ppm_capture_count_en, next_ppm_capture_count_en : std_logic;
	signal ppm_capture_count, next_ppm_capture_count : std_logic_vector(31 downto 0);
	signal ppm_capture_idle, next_ppm_capture_idle : std_logic;
	signal next_slv_reg1 : std_logic_vector(31 downto 0);
	signal next_slv_reg4 : std_logic_vector(31 downto 0);
	signal next_slv_reg5 : std_logic_vector(31 downto 0);
	signal next_slv_reg6 : std_logic_vector(31 downto 0);
	signal next_slv_reg7 : std_logic_vector(31 downto 0);
	signal next_slv_reg8 : std_logic_vector(31 downto 0);
	signal next_slv_reg9 : std_logic_vector(31 downto 0);
begin
	-- Add user logic here
    sync_proc: process(PPM_CLK, NS, S_AXI_ARESETN)
    begin
        if(S_AXI_ARESETN = '0') then 
            PS <= A; 
            reg_addr <= x"4";
            ppm_capture_count <= x"00000000";
	    ppm_capture_idle <= '0';
            slv_reg1 <= x"00000000";
            slv_reg4 <= x"00000000";
            slv_reg5 <= x"00000000";
            slv_reg6 <= x"00000000";
            slv_reg7 <= x"00000000";
            slv_reg8 <= x"00000000";
            slv_reg9 <= x"00000000";
	   
        elsif(rising_edge(PPM_CLK)) then 
            PS <= NS;
	    reg_addr <= next_reg_addr;
	    ppm_capture_count_en <= next_ppm_capture_count_en;
	    ppm_capture_count <= next_ppm_capture_count;
	    ppm_capture_idle <= next_ppm_capture_idle;
	    slv_reg1 <= next_slv_reg1;
	    slv_reg4 <= next_slv_reg4;
	    slv_reg5 <= next_slv_reg5;
	    slv_reg6 <= next_slv_reg6;
	    slv_reg7 <= next_slv_reg7;
	    slv_reg8 <= next_slv_reg8;
	    slv_reg9 <= next_slv_reg9;

            if(ppm_capture_count_en = '1') then
                next_ppm_capture_count <= std_logic_vector(unsigned(ppm_capture_count) + 1);
            end if;
        end if;
    end process sync_proc;
    
    comb_proc: process(PS, PPM_IN)
    begin
        case PS is
            when A =>
                next_ppm_capture_count_en <= '0';
                if(falling_edge(PPM_IN)) then NS <= B;
                else NS <= A;
                end if;
            when B =>
                if(ppm_capture_idle = '0') then
                    next_ppm_capture_count_en <= '1';
                    if(falling_edge(PPM_IN)) then 
                        NS <= A;
                        case reg_addr is
                            when x"4" =>
                                next_slv_reg4 <= ppm_capture_count;
                                next_reg_addr <= x"5";
                            when x"5" =>
                                next_slv_reg5 <= ppm_capture_count;
                                next_reg_addr <= x"6";
                            when x"6" =>
                                next_slv_reg6 <= ppm_capture_count;
                                next_reg_addr <= x"7";
                            when x"7" =>
                                next_slv_reg7 <= ppm_capture_count;
                                next_reg_addr <= x"8";
                            when x"8" =>
                                next_slv_reg8 <= ppm_capture_count;
                                next_reg_addr <= x"9";
                            when x"9" =>
                                next_slv_reg9 <= ppm_capture_count;
                                next_reg_addr <= x"4";
                                next_ppm_capture_idle <= '1';
                                next_slv_reg1 <= std_logic_vector(unsigned(slv_reg1) + 1);
			    when others =>
                        end case;
                        next_ppm_capture_count <= x"00000000";
                    else
                        next_ppm_capture_idle <= '0';
                    end if;
                else NS <= B;
                end if;
        end case;
    end process comb_proc;
end arc;
	-- User logic ends
