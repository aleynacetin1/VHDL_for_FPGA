library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Example
---- std_logic vs std_logic_vector with logic gates----

entity data_types is
    port (
          F : out std_logic_vector (3 downto 0) :="1010";
          A : in  std_logic := '0';
          B : in  std_logic := '1'
        );

end data_types;

architecture Behavioral of data_types is
  
begin
  F(0) <= A and B ;
  F(1) <= A xor B ;
  F(2) <= A or B ;
  F(3) <= not A ; 
  
end Behavioral;