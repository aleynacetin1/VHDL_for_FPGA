library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity fsm_ex1 is
    Port ( i_x      : in STD_LOGIC_VECTOR (3 downto 0);
           clk      : in STD_LOGIC;
           reset    : in STD_LOGIC;
           o_t_or_f : out STD_LOGIC);
end fsm_ex1;

architecture Behavioral of fsm_ex1 is
    type state_type is (start,state1,state2,finish);
    signal ex_state: state_type;
begin
    testcode:process(clk) begin
        if (rising_edge (clk) ) then 
            if (reset = '1') then
                ex_state <= start;
                o_t_or_f <= '0';
            else
                case(ex_state) is 
                    when start => if(i_x = "1010") then 
                                        ex_state <= state1;
                                        o_t_or_f <= '1';
                                  else 
                                        ex_state <= start;
                                        o_t_or_f <= '0'; 
                                  end if;
                    when state1 => if(i_x = "0001") then 
                                        ex_state <= state2;
                                        o_t_or_f <= '1';
                                  else 
                                        ex_state <= state1;
                                        o_t_or_f <= '0'; 
                                  end if;
                   when state2 => if(i_x = "0010") then 
                                        ex_state <= finish;
                                        o_t_or_f <= '1';
                                  else 
                                        ex_state <= state2;
                                        o_t_or_f <= '0'; 
                                  end if;
                   when finish =>        ex_state <= start;
                                        o_t_or_f <= '0';
                 
                  when others =>       ex_state <= start;
                                       o_t_or_f <= '0';
                                       
                                       
                end case;
           end if;
       end if; 
end process testcode;
                                 
end Behavioral;