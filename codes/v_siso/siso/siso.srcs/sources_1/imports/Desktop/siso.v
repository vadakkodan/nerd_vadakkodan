module siso (
    input [3:0] D,
    input clk,reset,
    input msb,
    output reg[3:0] Q);
always @ (posedge clk)
begin
    if (reset)
    Q = 4'd0;
else
    
    Q = {msb, D[3:1]};
end
endmodule

