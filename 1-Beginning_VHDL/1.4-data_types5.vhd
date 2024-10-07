library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

---- LISTING TYPE----
entity data_types is
    
end data_types;

architecture Behavioral of data_types is
    type t_fsm is (start,idle,finish); -- We create new type 
    
    signal state : t_fsm ;
    
begin
   process
        begin
            state <= start;
            wait for 10ns;
            state <= idle;
            wait for 10ns;
            state <= finish;
            wait for 10ns;
        end process;
  
end Behavioral;