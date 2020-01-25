LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY contador_3seg IS
	PORT(clock,enable,reset : IN STD_LOGIC;
		 tres_seg : OUT STD_LOGIC;
		 Q : Buffer STD_LOGIC_VECTOR (3 downto 0));
END contador_3seg;

ARCHITECTURE sol OF contador_3seg IS
SIGNAL RETORNO: STD_LOGIC;
BEGIN

	PROCESS(clock,reset)
	BEGIN
		if reset='0' then Q<="0000";tres_seg<='0';RETORNO<='0';
  		elsif (clock'event and clock='1') then
			if enable='1' then
				if (Q="1011") AND RETORNO ='0' then RETORNO<='1';
				ELSif (Q="0000") AND RETORNO ='1' then RETORNO<='0';
				ELSIF RETORNO ='0'THEN Q<=Q+1;
				ELSIF RETORNO ='1' THEN Q<=Q-1;
				end if;
			end if;
		end if;
	END PROCESS;
END sol;