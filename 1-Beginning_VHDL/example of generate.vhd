library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity examplegenerate is
    Generic (add_or_sub : natural :=1 ;  -- 0 = add , 1 = subtract
             data_w     : integer :=3 );
    Port ( i_a : in STD_LOGIC_VECTOR (data_w -1 downto 0);
           i_b : in STD_LOGIC_VECTOR (data_w -1 downto 0);
           o_c : out STD_LOGIC_VECTOR (data_w  downto 0) );
end examplegenerate;

architecture Behavioral of examplegenerate is
    signal a,b,c : std_logic_vector (data_w  downto 0);

begin
    a <= '0' & i_a;
    b <= '0' & i_b;
    o_c <= c;

    addsub : if (add_or_sub =1) generate 
     process (a,b) begin
        o_c <= a-b; 
     end process;
   else generate 
     process (a,b) begin
        o_c <= a+b; 
     end process;
   end generate addsub; 

end Behavioral;
