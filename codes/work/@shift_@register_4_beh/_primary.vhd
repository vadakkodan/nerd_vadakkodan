library verilog;
use verilog.vl_types.all;
entity Shift_Register_4_beh is
    port(
        A_par           : out    vl_logic_vector(3 downto 0);
        I_par           : in     vl_logic_vector(3 downto 0);
        s1              : in     vl_logic;
        s0              : in     vl_logic;
        MSB_in          : in     vl_logic;
        LSB_in          : in     vl_logic;
        CLK             : in     vl_logic;
        Clear_b         : in     vl_logic
    );
end Shift_Register_4_beh;
