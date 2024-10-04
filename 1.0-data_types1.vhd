library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity data_types is
    
end data_types;

---- bit vs bit_vector ----

architecture Behavioral of data_types is
  signal hex_num1 : bit_vector (3 downto 0);
  signal hex_num2 : bit_vector (0 to 3);
  signal value   : bit ;
  
begin
hex_num1 <= "0101"; --Can be like this if you want; hex_num1 <= x"b";  
hex_num2 <= "0101";                              -- hex_num2 <= b"0101";
value    <=  '0';
-- if a vector we use "...", if a bit when we use '...' ;

end Behavioral;
