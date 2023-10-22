LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY ssegmodified IS
	PORT ( --bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		E : IN STD_LOGIC ;
		--leds : OUT STD_LOGIC_VECTOR (0 TO 6);
		yesorno : OUT STD_LOGIC_VECTOR(0 TO 6));
END ssegmodified ;
ARCHITECTURE Behavior OF ssegmodified IS
BEGIN

PROCESS (E)
	BEGIN
	IF (E = '1') THEN
	yesorno <= "0111011"; -- yes (y)
	ELSE
	yesorno <= "0010101"; -- no (n)
	END IF;
	END PROCESS;
END Behavior ;