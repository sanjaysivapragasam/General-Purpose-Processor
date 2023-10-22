LIBRARY ieee;
Use ieee.std_logic_1164.all;
ENTITY Latch1 IS 
	PORT ( A : IN STD_LOGIC_VECTOR(7 DOWNTO 0); -- 8 bit A input
			Resetn, Clock:IN STD_LOGIC; -- 1 bit clock and reset inputs
			Q: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); -- 
END Latch1;
ARCHITECTURE Behavior OF Latch1 IS
BEGIN
	 PROCESS (Resetn, Clock)
	 BEGIN
		IF Resetn = '0' THEN
				Q<="00000000";
				ELSIF Clock'EVENT AND Clock ='1' THEN 
				Q<=A;
				END IF;
		END PROCESS;
END Behavior;