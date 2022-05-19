----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:26:43 05/15/2022 
-- Design Name: 
-- Module Name:    motorVentilador - Behavioral 
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
entity motorVentilador is
    Port ( A, B: in  STD_LOGIC;
           D: out  STD_LOGIC);
end motorVentilador;

architecture Direccion of motorVentilador is

begin
process(A, B)
begin
	if A = '1' then
		D<= '1';
	else
		if B = '1' then
			D<= '0';
		end if;
	end if;
end process;

end Direccion;

