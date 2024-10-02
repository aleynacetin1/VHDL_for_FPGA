library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

--Entity
entity and_gate is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end and_gate;

--Architecture
architecture Behavioral of and_gate is

begin

C <= A and B;

end Behavioral;