library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity examplegenerate2 is
    Port ( i_signal_a : in STD_LOGIC_VECTOR (3 downto 0);
           i_signal_b : in STD_LOGIC;
           outvalue : out STD_LOGIC);
end examplegenerate2;

architecture Behavioral of examplegenerate2 is
    signal signal_1 : std_logic_vector (3 downto 0);
    signal signal_2 : std_logic_vector (4 downto 0);
begin
    signal_2(0) <= i_signal_b;
    signal_1    <= i_signal_a;
    
    for_kontrol : for i in 0 to 3 generate 
        signal_2(i+1) <= signal_2(i) and signal_1(i) ;
    end generate for_kontrol;
    
    outvalue <= signal_2(4);
    
end Behavioral;
