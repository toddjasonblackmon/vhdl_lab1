----------------------------------------------------------------------------------
--
-- Author: Todd Blackmon
--
-- Description:
-- Module which converts the binary digit(3:0) input to a 7-segment display 
-- cathode drive array.
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seg7_hex is
    Port ( digit : in STD_LOGIC_VECTOR (3 downto 0);
           seg7 : out STD_LOGIC_VECTOR (7 downto 0));
end seg7_hex;

architecture Behavioral of seg7_hex is
begin
    with digit select
        seg7 <=
            "11000000" when x"0" ,
            "11111001" when x"1" ,
            "10100100" when x"2" ,
            "10110000" when x"3" ,
            "10011001" when x"4" ,
            "10010010" when x"5" ,
            "10000010" when x"6" ,
            "11111000" when x"7" ,
            "10000000" when x"8" ,
            "10010000" when x"9" ,
            "10001000" when x"A" ,
            "10000011" when x"B" ,
            "11000110" when x"C" ,
            "10100001" when x"D" ,
            "10000110" when x"E" ,
            "10001110" when others;
end Behavioral;
