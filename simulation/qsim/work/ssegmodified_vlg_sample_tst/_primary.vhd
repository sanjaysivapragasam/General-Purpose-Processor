library verilog;
use verilog.vl_types.all;
entity ssegmodified_vlg_sample_tst is
    port(
        bcd             : in     vl_logic_vector(3 downto 0);
        E               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ssegmodified_vlg_sample_tst;
