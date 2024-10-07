library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity data_types is
    
end data_types;
-- Example
---- std_logic vs std_logic_vector with logic gates----

architecture Behavioral of data_types is
  signal F : std_logic_vector (3 downto 0) :="1010";
  signal A : std_logic := '0';
  signal B : std_logic := '1';
begin
  F(0) <= A and B ;
  F(1) <= A xor B ;
  F(2) <= A or B ;
  F(3) <= not A ; 
  
end Behavioral;
