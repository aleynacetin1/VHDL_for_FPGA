library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity data_types is
    
end data_types;

----INTEGER with VARIABLE vs SIGNAL----

architecture Behavioral of data_types is
  --Signals are written between Architecture and Begin.
  signal integervalue  : integer :=0;  
  signal s_integervarvalue : integer :=0;
  
begin
  integervalue <= 10;
  
   process
   --Variables are written between Process and Begin.
     variable integervarvalue : integer :=0; 
      begin
         integervarvalue := 10; 
         wait for 10 ns ;
         --The variable type is not visible in the vivado application. 
         --So we need to assign the variable type to a signal.
         s_integervarvalue <= integervarvalue; --assign of the variable type to signal type
      end process;
      
  
end Behavioral;
