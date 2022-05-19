----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:32:32 05/15/2022 
-- Design Name: 
-- Module Name:    estructuralCircuito - Behavioral 
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
entity estructuralCircuito is
    Port ( A : in  STD_LOGIC_VECTOR(0 to 3);
           B : in  STD_LOGIC_VECTOR(0 to 3);
           F : out  STD_LOGIC);
end estructuralCircuito;

architecture Behavioral of estructuralCircuito is
Component andC is
      Port (A, B : in STD_LOGIC;
             S : out STD_LOGIC);
end Component;
	
Component orC is
      Port (A, B : in STD_LOGIC;
             S : out STD_LOGIC);
end Component;

signal X: STD_LOGIC_VECTOR(0 to 3);
begin
	U0: orC port map(A(0), B(0), X(0));
	U1: orC port map(A(1), B(1), X(1));
	U2: orC port map(A(2), B(2), X(2));
	U3: orC port map(A(3), B(3), X(3));
	U4: andC port map(X(0), X(1), X(2), X(3), F);
	
end Behavioral; 



