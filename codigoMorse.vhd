----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:21:58 05/15/2022 
-- Design Name: 
-- Module Name:    codigoMorse - Behavioral 
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
entity codigoMorse is
    Port ( A : in  STD_LOGIC;
           S : out  STD_LOGIC);
end codigoMorse;

architecture Encendida of codigoMorse is

begin
process (A)
begin
	if A = '1' then
		S<= '1';
	else
		S<= '0';
end if;
end process;

end Encendida;

