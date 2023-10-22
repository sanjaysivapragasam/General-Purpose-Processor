library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
ENTITY ALUpart3modified IS 
port (Clock: in std_logic; --input clock signal
A,B : in unsigned(7 downto 0); --8-bit inputs from latches A and B
student_id : in unsigned(3 downto 0); --4-bit student id from FSM
OP: in unsigned(15 downto 0);--16-bit selector for operation from decoder
--Neg: out std_logic;--is the result negative? set -ve bit output
E: out std_logic); -- yes or no input for modified ALU
--R1: out unsigned (3 downto 0);--lower 4-bits of 8-bit result output
--R2: out unsigned (3 downto 0));--higher 4-bits of 8-bit result output
end ALUpart3modified;
ARCHITECTURE calculation of ALUpart3modified IS --temporary signal declaration
	signal Reg1, Reg2: unsigned (7 downto 0):= (others=>'0');
	signal Reg4, Reg5 : unsigned (0 to 7);
	begin
	--Reg1 <= A; --temp storing A in Reg1 local variable
-- Part 3 only requires input B, so Reg 2 is used
	Reg2 <= B; --temp storing B in Reg2 local variable
	Reg4 <= ((Reg2 rem 100)/10); -- tens place digit (2)
	Reg5 <= (Reg2 rem 100); -- ones place digit (9)
	process(Clock,OP)
	begin
		if(rising_edge (Clock)) Then -- calculation @ positive edge of clock
		case OP is 
		When "0000000000000001"=>--1
			if (student_id > (Reg4) or (student_id > Reg5)) Then
					E <= '1';
				else
				E <= '0';
			end if;
		When "0000000000000010"=>--2
			if (student_id > (Reg4) or (student_id > Reg5)) Then
					E <= '1';
				else
				E <= '0';
			end if;
		When "0000000000000100"=>--3
		if (student_id > (Reg4) or (student_id > Reg5)) Then
					E <= '1';
				else
				E <= '0';
			end if;
		When "0000000000001000"=>--4
			if (student_id > (Reg4) or (student_id > Reg5)) Then
					E <= '1';
				else
				E <= '0';
			end if;
		When "0000000000010000"=>--5
			if (student_id > (Reg4) or (student_id > Reg5)) Then
					E <= '1';
				else
				E <= '0';
			end if;
		When "0000000000100000"=> --6
			if (student_id > (Reg4) or (student_id > Reg5)) Then
					E <= '1';
				else
				E <= '0';
			end if;
		When "0000000001000000"=>--7
			if (student_id > (Reg4) or (student_id > Reg5)) Then
					E <= '1';
				else
				E <= '0';
			end if;
		When "0000000010000000"=>--8
			if (student_id > (Reg4) or (student_id > Reg5)) Then
					E <= '1';
				else
				E <= '0';
			end if;
		When "0000000100000000"=>--9
			if (student_id > (Reg4) or (student_id > Reg5)) Then
					E <= '1';
				else
				E <= '0';
			end if;
		When Others =>
		-- don't care, do nothing
	end case;
end if;
end process;
--R1 <= Result(3 downto 0); --7-seg is only 4-bits
--R2 <= Result(7 downto 4); --so split 8-bit
end calculation;