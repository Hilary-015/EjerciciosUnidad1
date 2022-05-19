----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:04:59 05/15/2022 
-- Design Name: 
-- Module Name:    caja - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Hilary Calva
entity caja is
    Port ( A, B, C, D : in  STD_LOGIC;
           S : out  STD_LOGIC);
end caja;

architecture Completa of caja is

begin

	S<= '1' when (A = '1' and B = '1' and C = '1' and D = '1')else 
	'0';

end Completa;

