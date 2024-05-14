----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:56:27 05/08/2023 
-- Design Name: 
-- Module Name:    IC74163 - Behavioral 
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
use IEEE.STD_LOGIC_arith.ALL;
use ieee.std_logic_unsigned.all;

entity IC74163 is
port( data_in	 : in std_logic_vector (3 downto 0);
      data_out  : out std_logic_vector (3 downto 0);
		RCO 		 : out std_logic;
		clk , clrN , loadN , ent , enp : in std_logic

		);
end IC74163;

architecture Behavioral of IC74163 is
signal count_s :std_logic_vector( 3 downto 0);
begin

process (clk)

variable count_v :std_logic_vector( 3 downto 0);
begin


if (clk'event and clk='1') then
	if 	clrn='0'					then	count_v:="0000";
	elsif loadn='0' 				then count_v:=data_in;
	elsif ((ent and enp)='1')	then count_v:=count_v + "0001";


--		if count_v="1111" 		then	RCO<='1';
--		else RCO<='0';
	--	elsif count=(not "1111") then RCO<='0';
--		end if;


	end if;
end if;
data_out<=count_v;
count_s<=count_v;

end process;

rco<='1' when count_s="1111" else '0';

end Behavioral;

