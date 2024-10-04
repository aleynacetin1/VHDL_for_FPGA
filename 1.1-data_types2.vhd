library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity data_types is
    
end data_types;

---- std_logic vs std_logic_vector----

architecture Behavioral of data_types is
  signal A : std_logic_vector (3 downto 0) :="1001";
  signal B : std_logic;
  
begin
  B <= A(3) and  A(2) and  A(1) and  A(0) ; --4x1 AND GATE ; it is one bit 
 
end Behavioral;

--OUTPUT
-- B = 0 ;