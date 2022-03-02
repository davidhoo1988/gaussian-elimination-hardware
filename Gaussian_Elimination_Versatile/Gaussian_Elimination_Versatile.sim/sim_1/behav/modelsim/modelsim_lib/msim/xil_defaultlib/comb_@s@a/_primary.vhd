library verilog;
use verilog.vl_types.all;
entity comb_SA is
    generic(
        DAT_W           : integer := 127
    );
    port(
        clk             : in     vl_logic;
        rst_b           : in     vl_logic;
        start           : in     vl_logic;
        data            : in     vl_logic_vector;
        finish          : out    vl_logic;
        full_rank       : out    vl_logic;
        row0            : out    vl_logic_vector(126 downto 0);
        row1            : out    vl_logic_vector(126 downto 0);
        row2            : out    vl_logic_vector(126 downto 0);
        row3            : out    vl_logic_vector(126 downto 0);
        row4            : out    vl_logic_vector(126 downto 0);
        row5            : out    vl_logic_vector(126 downto 0);
        row6            : out    vl_logic_vector(126 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DAT_W : constant is 1;
end comb_SA;
