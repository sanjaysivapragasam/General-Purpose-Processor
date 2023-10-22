library verilog;
use verilog.vl_types.all;
entity ssegmodified is
    port(
        bcd             : in     vl_logic_vector(3 downto 0);
        E               : in     vl_logic;
        leds            : out    vl_logic_vector(0 to 6);
        yesorno         : out    vl_logic_vector(0 to 6)
    );
end ssegmodified;
