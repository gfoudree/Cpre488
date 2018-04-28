library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.sha256_types.all;
use work.sha256_constants.all;
use work.sha256_functions.all;

entity tb is
	generic(
		C_S_AXI_DATA_WIDTH	: integer	:= 32
	);
	port(
		S_AXI_ACLK : in std_logic
	);
end entity tb;

architecture arch_imp of tb is
    signal update, enable, ready, reset, cur_block, finished : std_logic;
    signal word_input : std_logic_vector(31 downto 0);
    signal word_address : std_logic_vector(3 downto 0);
    signal debug_port : std_logic_vector(31 downto 0);
    signal hash_output : std_logic_vector(255 downto 0);
    type message is array(0 to 31) of std_logic_vector(31 downto 0);
    signal input_data : message;

    	signal slv_reg0	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    	signal slv_reg1	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    	signal slv_reg2	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg3	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg4	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg5	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg6	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg7	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg8	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg9	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg10	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg11	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg12	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg13	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg14	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg15	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg16	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg17	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg18	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg19	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg20	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg21	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg22	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg23	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg24	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg25	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg26	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg27	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg28	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg29	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg30	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg31	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg32	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg33	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg34	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg35	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg36	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg37	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg38	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg39	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg40	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg41	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg42	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg43	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg44	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg45	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg46	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg47	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg48	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg49	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg50	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg51	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg52	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg53	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg54	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg55	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg56	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg57	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg58	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg59	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg60	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg61	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg62	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg63	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	
    constant version : integer := 1;

begin

    hasher0: entity work.AXI_sha256
    port map(
        clk => S_AXI_ACLK,
        reset => reset,
        ready => ready,
        enable => enable,
        update => update,
	cur_block => cur_block,
        word_address => word_address,
        word_input => word_input,
        hash_output => hash_output,
        debug_port => debug_port
    );

tb_proc: process (reset, update)
    begin
	if reset = '0' then
		slv_reg10 <= x"00000000";
		slv_reg11 <= x"00000000";
		slv_reg12 <= x"00000000";
		slv_reg13 <= x"00000000";
		slv_reg14 <= x"00000000";
		slv_reg15 <= x"00000000";
		slv_reg16 <= x"00000000";
		slv_reg17 <= x"00000000";
		slv_reg18 <= x"00000000";
		slv_reg19 <= x"00000000";
		slv_reg20 <= x"00000000";
		slv_reg21 <= x"00000000";
		slv_reg22 <= x"00000000";
		slv_reg23 <= x"00000000";
		slv_reg24 <= x"00000000";
		slv_reg25 <= x"00000000";
		slv_reg26 <= x"00000000";
		slv_reg27 <= x"00000000";
		slv_reg28 <= x"00000000";
		slv_reg29 <= x"00000000";
		slv_reg30 <= x"00000000";
		slv_reg31 <= x"00000000";
		slv_reg32 <= x"00000000";
		slv_reg33 <= x"00000000";
		slv_reg34 <= x"00000000";
		slv_reg35 <= x"00000000";
		slv_reg36 <= x"00000000";
		slv_reg37 <= x"00000000";
		slv_reg38 <= x"00000000";
		slv_reg39 <= x"00000000";
		slv_reg40 <= x"00000000";
		slv_reg41 <= x"00000000";
		slv_reg42 <= x"00000000";
		slv_reg43 <= x"00000000";
		slv_reg44 <= x"00000000";
		slv_reg45 <= x"00000000";
		slv_reg46 <= x"00000000";
		slv_reg47 <= x"00000000";
		slv_reg48 <= x"00000000";
		slv_reg49 <= x"00000000";
		slv_reg50 <= x"00000000";
		slv_reg51 <= x"00000000";
		slv_reg52 <= x"00000000";
		slv_reg53 <= x"00000000";
		slv_reg54 <= x"00000000";
		slv_reg55 <= x"00000000";
		slv_reg56 <= x"00000000";
		slv_reg57 <= x"00000000";
		slv_reg58 <= x"00000000";
		slv_reg59 <= x"00000000";
		slv_reg60 <= x"00000000";
		slv_reg61 <= x"00000000";
		slv_reg62 <= x"00000000";
		slv_reg63 <= x"00000000";
	end if;

	if update = '1' then
		slv_reg10 <= x"61626364";
		slv_reg11 <= x"62636465";
		slv_reg12 <= x"63646566";
		slv_reg13 <= x"64656667";
		slv_reg14 <= x"65666768";
		slv_reg15 <= x"66676869";
		slv_reg16 <= x"6768696a";
		slv_reg17 <= x"68696a6b";
		slv_reg18 <= x"696a6b6c";
		slv_reg19 <= x"6a6b6c6d";
		slv_reg20 <= x"6b6c6d6e";
		slv_reg21 <= x"6c6d6e6f";
		slv_reg22 <= x"6d6e6f70";
		slv_reg23 <= x"6e6f7071";
		slv_reg24 <= x"80000000";
		slv_reg25 <= x"00000000";
		slv_reg26 <= x"00000000";
		slv_reg27 <= x"00000000";
		slv_reg28 <= x"00000000";
		slv_reg29 <= x"00000000";
		slv_reg30 <= x"00000000";
		slv_reg31 <= x"00000000";
		slv_reg32 <= x"00000000";
		slv_reg33 <= x"00000000";
		slv_reg34 <= x"00000000";
		slv_reg35 <= x"00000000";
		slv_reg36 <= x"00000000";
		slv_reg37 <= x"00000000";
		slv_reg38 <= x"00000000";
		slv_reg39 <= x"00000000";
		slv_reg40 <= x"00000000";
		slv_reg41 <= x"000001c0";
		slv_reg42 <= x"00000000";
		slv_reg43 <= x"00000000";
		slv_reg44 <= x"00000000";
		slv_reg45 <= x"00000000";
		slv_reg46 <= x"00000000";
		slv_reg47 <= x"00000000";
		slv_reg48 <= x"00000000";
		slv_reg49 <= x"00000000";
		slv_reg50 <= x"00000000";
		slv_reg51 <= x"00000000";
		slv_reg52 <= x"00000000";
		slv_reg53 <= x"00000000";
		slv_reg54 <= x"00000000";
		slv_reg55 <= x"00000000";
		slv_reg56 <= x"00000000";
		slv_reg57 <= x"00000000";
		slv_reg58 <= x"00000000";
		slv_reg59 <= x"00000000";
		slv_reg60 <= x"00000000";
		slv_reg61 <= x"00000000";
		slv_reg62 <= x"00000000";
		slv_reg63 <= x"000001c0";
	end if;
end process tb_proc;

resetproc: process(S_AXI_ACLK)
    begin
       if rising_edge(S_AXI_ACLK) then

	    if reset = '0' then
		slv_reg9(0) <= '0';
	    end if;

	    if update = '1' then
                slv_reg9(1) <= '0';
            end if;
end if;
end process resetproc;

    syncproc: process(S_AXI_ACLK)
        begin
            if rising_edge(S_AXI_ACLK) then
                
                slv_reg0(31 downto 8) <= x"000005";
    
                if slv_reg9(0) = '1' then
                    reset <= '0';
                    finished <= '0';
                else
                    reset <= '1';
                end if;
                
		if slv_reg9(1) = '1' then
                    update <= '1';
                else
                    update <= '0';
                end if;

                if slv_reg9(2) = '1' then
                    enable <= '1';
                else
                    enable <= '0';
                end if;
                
            if ready = '1' and update = '0' then
                    if slv_reg9(3) = '1' then
                        if cur_block = '1' then
                            update <= '1';
                        else
                            finished <= '1';
                        end if;
                    else
                        finished <= '1';
                    end if;
                end if;
    
                if finished = '1' then
                    --copy hash
                    slv_reg8 <= hash_output(31 downto 0);
                    slv_reg7 <= hash_output(63 downto 32);
                    slv_reg6 <= hash_output(95 downto 64);
                    slv_reg5 <= hash_output(127 downto 96);
                    slv_reg4 <= hash_output(159 downto 128);
                    slv_reg3 <= hash_output(191 downto 160);
                    slv_reg2 <= hash_output(223 downto 192);
                    slv_reg1 <= hash_output(255 downto 224);  
                    
                    --signal to the user the hash is done
                    slv_reg0(0) <= '1';
                    
                else
                    slv_reg0(0) <= '0';
                end if;

		if slv_reg9(1) = '1' then
		    finished <= '0';
                end if;
            end if;
        end process;

readproc: process(S_AXI_ACLK)
    begin
        if falling_edge(S_AXI_ACLK) then
            if cur_block /= '1' then
                case word_address is
                    when b"0000" =>
                        word_input <= slv_reg10;
                    when b"0001" =>
                        word_input <= slv_reg11;                
                    when b"0010" =>
                        word_input <= slv_reg12;                
                    when b"0011" =>
                        word_input <= slv_reg13;                
                    when b"0100" =>
                        word_input <= slv_reg14;                
                    when b"0101" =>
                        word_input <= slv_reg15;                
                    when b"0110" =>
                        word_input <= slv_reg16;                
                    when b"0111" =>
                        word_input <= slv_reg17;                
                    when b"1000" =>
                        word_input <= slv_reg18;                
                    when b"1001" =>
                        word_input <= slv_reg19;                
                    when b"1010" =>
                        word_input <= slv_reg20;                
                    when b"1011" =>
                        word_input <= slv_reg21;                
                    when b"1100" =>
                        word_input <= slv_reg22;                
                    when b"1101" =>
                        word_input <= slv_reg23;                
                    when b"1110" =>
                        word_input <= slv_reg24;                
                    when b"1111" =>
                        word_input <= slv_reg25;
                    when others =>
                        word_input <= (others => '0');
                end case;
            else
                case word_address is                
                    when b"0000" =>
                        word_input <= slv_reg26;                
                    when b"0001" =>
                        word_input <= slv_reg27;                
                    when b"0010" =>
                        word_input <= slv_reg28;               
                    when b"0011" =>
                        word_input <= slv_reg29;                
                    when b"0100" =>
                        word_input <= slv_reg30;                
                    when b"0101" =>
                        word_input <= slv_reg31;                
                    when b"0110" =>
                        word_input <= slv_reg32;                
                    when b"0111" =>
                        word_input <= slv_reg33;                
                    when b"1000" =>
                        word_input <= slv_reg34;                
                    when b"1001" =>
                        word_input <= slv_reg35;                
                    when b"1010" =>
                        word_input <= slv_reg36;                
                    when b"1011" =>
                        word_input <= slv_reg37;                
                    when b"1100" =>
                        word_input <= slv_reg38;                
                    when b"1101" =>
                        word_input <= slv_reg39;                
                    when b"1110" =>
                        word_input <= slv_reg40;                
                    when b"1111" =>
                        word_input <= slv_reg41;                
                    when others =>
                        word_input <= (others => '0');
                end case;
            end if;
        end if;
    end process readproc;

end arch_imp;