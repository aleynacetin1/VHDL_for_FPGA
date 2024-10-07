library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity data_types is
    
end data_types;
---- 1D ARRAY TYPE (VECTOR)----
---- 2D ARRAY TYPE (MATRIX - MULTI DIMENSIONAL)----

architecture Behavioral of data_types is
    type t_vector is array (0 to 3) of integer;
    type t_matrix is array (3 downto 0, 9 downto 6) of std_logic_vector (7 downto 0) ; 
    
    signal vector1 : t_vector ;
    signal matrix1 : t_matrix := (others => (others => x"00" )); --WITH INITIALIZATION
    signal matrix2 : t_matrix := (others => (others => x"00" ));

begin
 -- 1D ARRAY
    vector1 (1) <= 19;
    vector1 (2) <= 7;
    
 -- 2D ARRAY 
    matrix1 (3,6) <= x"55";
    matrix1 (2,7) <= x"11";
    matrix1 (0,9) <= x"ab";
    
    matrix2 (1,9) <= x"07";
    matrix2 (0,7) <= x"60";
    
end Behavioral;
