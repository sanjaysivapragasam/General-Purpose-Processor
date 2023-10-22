library verilog;
use verilog.vl_types.all;
entity ALUproblem1_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        data_in         : in     vl_logic;
        En              : in     vl_logic;
        FSM_reset       : in     vl_logic;
        Reser_B         : in     vl_logic;
        Reset_A         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ALUproblem1_vlg_sample_tst;
