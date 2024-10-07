library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

----SIGNED vs UNSIGNED----
entity data_types is
    
end data_types;

architecture Behavioral of data_types is
  signal signedvalue   : signed (3 downto 0)   :=(others => '0');
  signal unsignedvalue : unsigned (3 downto 0) :=(others => '0');
  
begin
 
   process
      begin
         signedvalue <= signedvalue +1; 
         wait for 10 ns ; --time 
      end process;
      
   process
      begin
         unsignedvalue <= unsignedvalue +1; 
         wait for 10 ns ;
      end process;
  
end Behavioral;
