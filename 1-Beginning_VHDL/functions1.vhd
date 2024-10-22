library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator is 
	Port ( in_1 : in std_logic_vector (3 downto 0) := "1011";
		   in_2 : in std_logic_vector (3 downto 0) := "1010");
	end comparator;


architecture Behavioral of comparator is
	
		function comparator1 (in_1,in_2 : std_logic_vector(3 downto 0))
				return std_logic is

begin
			if(in_1 = in_2) then 
				return '1';

			else 
				return '0';
			end if;

		end function comparator1 ;


		signal s1,s2 : std_logic := '0';
		signal a,b : std_logic_vector(3 downto 0) := "1010";

	begin 
		s1 <= comparator1 (in_1,in_2);
		s2 <= comparator1 (a,b);

	end Behavioral;
