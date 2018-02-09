-- library declaration
library IEEE;
use IEEE.std_logic_1164.all;
-- entity

-- architecture
architecture fsm1 of my_fsm1 is
	type state_type is (A,B,C);
	signal PS,NS : state_type;
begin
	sync_proc: process(CLK)
	begin
		-- take care of the asynchronous input
		if (Reset = '1') then
			PS <= A;
			PPM_OUT <= '0';
		elsif (falling_edge(CLK)) then
			PS <= NS;
			if(count_frame_en = '1') then
				--todo stop from going negative
				countFrameVal = countFrameVal -  1;
			end if;
			
			if(count_ch_en = '1') then
				--todo stop frome going negative
				countChVal = countChVal - 1;
			end if;
		end if;
	end process sync_proc;
	
	comb_proc: process(PS, count_ch_done, count_frame_done)
	begin
		case PS is
			when A => --Idle High
				if(count_ch_done = '1') then
					count_ch_done = '0';
					count_ch_en = '0';
					NS <= B;
				else
					--todo load the ch clk count to countChVal
					count_ch_en = '1';
					count_frame_en = '1';
					NS <= A;
				end if;
			when B => --PPM
				if(count_ch_done = '1') then
					count_ch_done = '0';
					count_ch_en = '1';
					--if this is the sixth frame
					if() then
						NS <= C;
					else
						NS <= A;
					end if;
				else
					NS <= B;
				end if;
			when C => --End Frame
				if(count_frame_done = '1') then
					count_frame_done = '0';
					count_frame_en = '0';
					countFrameVal = 2000000;
					NS <= A;
				else
					NS <= C;
			when others =>
				PPM_OUT <= '0';
				NS <= A;
		end case;
	end process comb_proc;
end fsm1;

