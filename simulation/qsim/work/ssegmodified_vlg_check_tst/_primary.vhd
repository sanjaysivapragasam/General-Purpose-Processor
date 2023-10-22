library verilog;
use verilog.vl_types.all;
entity ssegmodified_vlg_check_tst is
    port(
        leds            : in     vl_logic_vector(0 to 6);
        yesorno         : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end ssegmodified_vlg_check_tst;
