library verilog;
use verilog.vl_types.all;
entity ALUproblem1_vlg_check_tst is
    port(
        R_first_four    : in     vl_logic_vector(0 to 6);
        R_last_four     : in     vl_logic_vector(0 to 6);
        Sign            : in     vl_logic_vector(0 to 6);
        student_id      : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end ALUproblem1_vlg_check_tst;
