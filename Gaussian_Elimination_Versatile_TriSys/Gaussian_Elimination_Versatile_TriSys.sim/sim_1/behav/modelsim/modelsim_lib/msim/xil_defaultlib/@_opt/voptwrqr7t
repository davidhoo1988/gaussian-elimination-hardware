library verilog;
use verilog.vl_types.all;
entity comb_SA is
    generic(
        DAT_W           : integer := 83
    );
    port(
        clk             : in     vl_logic;
        rst_b           : in     vl_logic;
        mode            : in     vl_logic;
        start           : in     vl_logic;
        data            : in     vl_logic_vector;
        finish          : out    vl_logic;
        full_rank       : out    vl_logic;
        result          : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DAT_W : constant is 1;
end comb_SA;
