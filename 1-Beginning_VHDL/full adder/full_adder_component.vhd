library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_component is
    Port ( in_giris_elde : in STD_LOGIC;
           in_giris_1 : in STD_LOGIC;
           in_giris_2 : in STD_LOGIC;
           out_cikis : out STD_LOGIC;
           out_cikis_elde : buffer STD_LOGIC);
end full_adder_component;

architecture Behavioral of full_adder_component is

begin

    out_cikis <= in_giris_elde xor in_giris_1 xor in_giris_2;
    out_cikis_elde <= (in_giris_elde and in_giris_1) 
    or (out_cikis_elde and in_giris_2) 
    or (in_giris_1 and in_giris_2);
    
end Behavioral;
