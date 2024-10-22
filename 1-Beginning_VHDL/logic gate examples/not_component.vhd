library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity not_component is
    Port ( x : in STD_LOGIC;
           y : out STD_LOGIC);
end not_component;

architecture Behavioral of not_component is

begin
    y <= not x;

end Behavioral;
