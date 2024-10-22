library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity comparator is 
	
	end comparator;

architecture Behavioral of comparator is

        signal num, limitvalue : integer :=0;
        constant minvalue : integer :=5;
        constant maxvalue : integer :=10;
	
		function limit (value , min ,max : integer ) return integer is

      begin
			if(value > max) then 
				return max;
			elsif (value < min) then
				return min;
			else 
			     return value;
			end if;

		end function limit;


	begin 
		process
		  begin 
		      limitvalue <= limit (num,minvalue,maxvalue);
		      wait on num;
		 end process;
		 
		 num <=   4 after 10ns,
		          7 after 20ns,
		          12 after 30ns,
		          2 after 40ns;
	end Behavioral;
