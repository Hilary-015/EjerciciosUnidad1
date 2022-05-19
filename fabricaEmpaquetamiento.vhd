----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:36:39 05/15/2022 
-- Design Name: 
-- Module Name:    fabricaEmpaquetamiento - Behavioral 
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
entity fabricaEmpaquetamiento is
    Port ( A, B : in  STD_LOGIC;
           C, D, E: out  STD_LOGIC);
end fabricaEmpaquetamiento;

architecture Panel of fabricaEmpaquetamiento is

begin

	C <= '1' when (A = '0' and B = '0');
	D <= '1' when (A = '1' and B = '1');
	E <= '1' when (A = '1' and B = '1');

end Panel;

