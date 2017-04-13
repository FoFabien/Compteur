library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity compteur is
port (
	H, R : in std_logic;
	S    : out std_logic_vector (2 downto 0);
	L1, L2 : out std_logic
	);

end compteur;


architecture test of compteur is
signal AUX : std_logic_vector (2 downto 0);
  begin

S <= AUX;

with AUX select
L2 <= '1' when "000",
		'1' when "010",
		'1' when "011",
		'0' when others;

process (H, R)
 begin
		if (R = '1')
			then AUX <= "000";
	   elsif (H'event and H = '1')
			then AUX <= AUX + '1';
			if (AUX = "101")
				then AUX <= "000";
			end if;
			if (AUX="000" OR AUX="010" OR AUX="011")
				then L1 <='1';
				else L1 <='0';
			end if;
		end if;

end process;

end test;

