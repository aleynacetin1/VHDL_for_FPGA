library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity configurablenotgate is
    Generic (DATAWIDTH : integer := 8);
    Port ( i_notgate : in STD_LOGIC_VECTOR ((DATAWIDTH-1) downto 0);
           o_notgate : out STD_LOGIC_VECTOR ((DATAWIDTH-1) downto 0)
    );
end configurablenotgate;

architecture Behavioral of configurablenotgate is

begin
 o_notgate <= not i_notgate; 

end Behavioral;
