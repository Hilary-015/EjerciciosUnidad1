----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:07:54 05/18/2022 
-- Design Name: 
-- Module Name:    apagadorEscalera - Behavioral 
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

entity apagadorEscalera is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end apagadorEscalera;

architecture Behavioral of apagadorEscalera is

Component andC is
      Port (A, B : in STD_LOGIC;
             S : out STD_LOGIC);
end Component;
	
Component orC is
      Port (A, B : in STD_LOGIC;
             S : out STD_LOGIC);
end Component;
	
signal x: STD_LOGIC_VECTOR(0 to 2);

begin
U0: andC port map(A, Not B, X(0));
U1: andC port map(C, Not B, X(1));
U2: andC port map(A, C, X(2));
U3: orC port map (X(0), X(1), X(2), Y);

end Behavioral;

