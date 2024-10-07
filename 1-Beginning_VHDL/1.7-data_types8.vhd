library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

---CONVERSION OF TYPES---  "std_logic_vector-----> signed or unsigned----> integer"
entity data_types is    -- "integer-----> signed or unsigned----> std_logic_vector"
    
end data_types;

architecture Behavioral of data_types is
    signal X : integer := 10;
    signal Y : std_logic_vector (7 downto 0);
    signal Z : unsigned(3 downto 0); 
    signal V : signed(3 downto 0);
begin
    -- integer to std_logic_vector
    Y <= std_logic_vector((to_unsigned(X,8)));
    
    -- integer to unsigned
    Z <= to_unsigned(X,4); 
    
    --unsigned to signed
    V <= signed(Z);
 
 end Behavioral;