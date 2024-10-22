library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity full_adder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is
    signal s1,c1,c2 : std_logic:='0';

begin
    
    HA1 : entity work.halfadder port map (a,b,s1,c1);
    
    HA2 : entity work.halfadder port map (s1,cin,sum,c2);
    carry <= c1 or c2;

end Behavioral;