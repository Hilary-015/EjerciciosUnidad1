----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:58:08 05/15/2022 
-- Design Name: 
-- Module Name:    funcionesLogicas - Behavioral 
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
entity funcionesLogicas is
    Port ( A, B, C : in  STD_LOGIC;
           F0, F, F2 : out  STD_LOGIC);
end funcionesLogicas;

architecture Behavioral of funcionesLogicas is
Component andC is
      Port (A, B : in STD_LOGIC;
             S : out STD_LOGIC);
end Component;
	
Component orC is
      Port (A, B : in STD_LOGIC;
             S : out STD_LOGIC);
end Component;

signal x0, x1, x2 : STD_LOGIC;
begin

	U0: orC port map (A, B, x0);
	U1: andC port map (x0, C, F0);
	U2: andC port map (A, C, x1);
	U3: andC port map (B, C, x2);
	U4: orC port map (x1, x2, F0);
	U5: andC port map (B, C, F);
	U6: orC port map (A, C, F2);


end Behavioral;

