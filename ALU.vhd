library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
ENTITY ALU IS 
port (Clock: in std_logic; --input clock signal
A,B : in unsigned(7 downto 0); --8-bit inputs from latches A and B
student_id : in unsigned(3 downto 0); --4-bit student id from FSM
OP: in unsigned(15 downto 0);--16-bit selector for operation from decoder
Neg: out std_logic;--is the result negative? set -ve bit output
R1: out unsigned (3 downto 0);--lower 4-bits of 8-bit result output
R2: out unsigned (3 downto 0));--higher 4-bits of 8-bit result output
end ALU;
ARCHITECTURE calculation of ALU IS --temporary signal declaration
	signal Reg1, Reg2, Result: unsigned (7 downto 0);--:= (others=>'0');
	signal Reg4 : unsigned (0 to 7);
	begin
	Reg1 <= A; --temp storing A in Reg1 local variable
	Reg2 <= B; --temp storing B in Reg2 local variable
	process(Clock,OP)
	begin
	if(rising_edge (Clock)) Then -- calculation @ positive edge of clock
		case OP is 
		When "0000000000000001"=>--!!!!!!!!
			Result <= (Reg1 + Reg2); --addition
		When "0000000000000010"=>
		if(Reg2>Reg1) Then
		Result <= (Reg1 + (NOT Reg2 +1)); 
				Neg<='1'; -- setting neg bit
			else 
		Result <= (Reg1 - Reg2) ;
						Neg<='0';
				end if;
		When "0000000000000100"=>
			Result <= (NOT Reg1); --inverse
			--Neg<='0';
		When "0000000000001000"=>
			Result <= (Reg1 NAND Reg2); --boolean NAND
			--Neg<='0';
		When "0000000000010000"=>
			Result <= (Reg1 NOR Reg2); --boolean NOR
			--Neg<='0';
		When "0000000000100000"=>
			Result <= (Reg1 AND Reg2); --boolean AND
			--Neg<='0';
		When "0000000001000000"=>
			Result <= (Reg1 XOR Reg2); --boolean OR
			--Neg<='0';
		When "0000000010000000"=>
			Result <= (Reg1 OR Reg2); --boolean XOR
			--Neg<='0';
		When "0000000100000000"=>
			Result <= (Reg1 XNOR Reg2); --boolean XNOR
			--Neg<='0';
		When Others =>
		-- don't care, do nothing
			Result <="--------" ;
	end case;
end if;
end process;
R1 <= Result(3 downto 0); --7-seg is only 4-bits
R2 <= Result(7 downto 4); --so split 8-bit
end calculation;