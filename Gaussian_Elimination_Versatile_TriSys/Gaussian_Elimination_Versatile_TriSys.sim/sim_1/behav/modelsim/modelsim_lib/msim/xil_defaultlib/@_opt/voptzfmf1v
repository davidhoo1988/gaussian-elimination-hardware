library verilog;
use verilog.vl_types.all;
entity mem is
    generic(
        WIDTH           : integer := 8;
        DEPTH           : integer := 64;
        \FILE\          : string  := ""
    );
    port(
        clock           : in     vl_logic;
        data            : in     vl_logic_vector;
        rdaddress       : in     vl_logic_vector;
        rden            : in     vl_logic;
        wraddress       : in     vl_logic_vector;
        wren            : in     vl_logic;
        q               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DEPTH : constant is 1;
    attribute mti_svvh_generic_type of \FILE\ : constant is 1;
end mem;
