library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--GENERIC EKLENDİ

entity logic_gate_top is
    Generic (DATAWIDTH : integer := 8;
             WIDTH     : integer := 4 );
    Port ( i_notgate : in std_logic_vector(WIDTH-1 downto 0);
           o_notgate : out std_logic_vector(WIDTH-1 downto 0) ;
           inforgeneric  : in std_logic_vector((DATAWIDTH -1) DOWNTO 0);
           outforgeneric : out std_logic_vector((DATAWIDTH -1) DOWNTO 0);
           d : in STD_LOGIC_VECTOR (1 downto 0);
           e : in STD_LOGIC_VECTOR (1 downto 0);
           z_out : out STD_LOGIC );
end logic_gate_top;

architecture Behavioral of logic_gate_top is
    
    -- AND Component
     component  and_component 
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               c : out STD_LOGIC);
    end component;
    
    -- NOT Component
     component not_component 
        Port ( x : in STD_LOGIC;
               y : out STD_LOGIC);
    end component;
   
    component configurablenotgate 
       Generic (DATAWIDTH : integer := 8);
           Port ( i_notgate : in STD_LOGIC_VECTOR ((DATAWIDTH-1) downto 0);
                  o_notgate : out STD_LOGIC_VECTOR ((DATAWIDTH-1) downto 0)
           );
    end component;
    
    signal wire : std_logic_vector(2 downto 0); 
begin

     outforgeneric <= not inforgeneric;
    
    and_gate_0 : and_component port map (
      a => d(0),
      b => e(0),
      c => wire(0) );
      
    and_gate_1 : and_component port map (
      a => d(1),
      b => e(1),
      c => wire(1) );
      
    and_gate_2 : and_component port map (
      a => wire(0),
      b => wire(1),
      c => wire(2) );
      
      not_gate : not_component port map (
      x => wire(2),
      y => z_out );

configurablenotgate_0 : configurablenotgate
    generic map(
        DATAWIDTH => WIDTH )
    
    port map(
    
        i_notgate => i_notgate,
        o_notgate => o_notgate
    
    );
end Behavioral;
