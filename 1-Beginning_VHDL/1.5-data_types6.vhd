library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-----RECORD TYPE-----
entity data_types is
    
end data_types;

architecture Behavioral of data_types is
    type FIFO_record is record
        wr_full  : std_logic;
        wr_empty : std_logic;
        rd_data  : std_logic_vector(7 downto 0);
    end record FIFO_record ;
    
    signal FIFO1 : FIFO_record ; --We can do initilization also like this ; 
    signal FIFO2 : FIFO_record ; --signal FIFO2:FIFO_record:=('0','1',"01010101");
    signal FIFO3 : FIFO_record ;

begin
    
    --First option of assigment
    FIFO1 <= (  wr_full     => '1' ,
                wr_empty    => '0' ,
                rd_data     => "00001010" );
                
    --Second option of assigment
    FIFO2.wr_full  <= '1' ;
    FIFO2.wr_empty <= '0' ;
    FIFO2.rd_data  <= "11110000" ;
    
    --Third option of assigment
    FIFO3  <=  (
                    '0',
                    '1',
                    "10101010"
               );
  
end Behavioral;
