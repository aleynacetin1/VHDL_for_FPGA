library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity full_adder_top is
    Port ( in_giris_elde : in STD_LOGIC := '1';
           in_giris_1 : in STD_LOGIC_VECTOR (3 downto 0):= "0101";
           in_giris_2 : in STD_LOGIC_VECTOR (3 downto 0):= "0101";
           out_cikis : out STD_LOGIC_VECTOR (3 downto 0);
           out_cikis_elde : buffer STD_LOGIC);
end full_adder_top;

architecture Behavioral of full_adder_top is
        
    component full_adder_component 
    Port ( in_giris_elde  : in STD_LOGIC;
           in_giris_1     : in STD_LOGIC;
           in_giris_2     : in STD_LOGIC;
           out_cikis      : out STD_LOGIC;
           out_cikis_elde : buffer STD_LOGIC);
   end component;
   
   signal r_elde :std_logic_vector(1 to 3);
begin
    adim_0: full_adder_component port map (in_giris_elde,in_giris_1(0),in_giris_2(0),out_cikis(0),r_elde(1));
    adim_1: full_adder_component port map (r_elde(1),in_giris_1(1),in_giris_2(1),out_cikis(1),r_elde(2));
    adim_2: full_adder_component port map (r_elde(2),in_giris_1(2),in_giris_2(2),out_cikis(2),r_elde(3));
    adim_3: full_adder_component port map (
                                            in_giris_elde  =>  r_elde(3),
                                            in_giris_1     =>  in_giris_1(3),
                                            in_giris_2     =>  in_giris_2(3),
                                            out_cikis      =>  out_cikis(3),
                                            out_cikis_elde =>  out_cikis_elde ); 
end Behavioral;