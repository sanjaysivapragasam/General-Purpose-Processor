library verilog;
use verilog.vl_types.all;
entity ALUProblem3 is
    port(
        R_first_four    : out    vl_logic_vector(0 to 6);
        clk             : in     vl_logic;
        InputBit        : in     vl_logic;
        Reset_A         : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        Reser_B         : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0);
        En              : in     vl_logic;
        data_in         : in     vl_logic;
        FSM_reset       : in     vl_logic;
        R_last_four     : out    vl_logic_vector(0 to 6);
        Sign            : out    vl_logic_vector(0 to 6);
        student_id      : out    vl_logic_vector(6 downto 0);
        yesorno         : out    vl_logic_vector(0 to 6)
    );
end ALUProblem3;
