library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
 ---- ALIAS ----
entity data_types is    
    
end data_types;

architecture Behavioral of data_types is
   signal Data_Stream      : std_logic_vector (15 downto 0);
        alias adress       : std_logic_vector (3 downto 0) is Data_Stream (15 downto 12);
        alias a_check      : std_logic_vector (0 downto 0) is Data_Stream (11 downto 11);
        alias data_R       : std_logic_vector (8 downto 0) is Data_Stream (10 downto 2);
        alias data_check   : std_logic_vector (1 downto 0) is Data_Stream (1 downto 0);
begin
        
        adress      <= "1111";
        a_check     <= "0";
        data_R      <= "111100001";
        data_check  <= "00";
 
 end Behavioral;
