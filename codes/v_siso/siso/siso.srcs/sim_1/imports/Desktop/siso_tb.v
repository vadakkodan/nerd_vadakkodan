`timescale 1ns / 1ps

module siso_tb();
reg [3:0] D;
reg clk;
reg reset;
wire [3:0] Q;

siso DUT (
    .D(D),
    .clk(clk),
    .reset(reset),
    .Q(Q));
initial begin
    clk= 1'b0;
    D = 4'b0;
    #20 reset = 1'b1;
forever 
    #10 clk = ~clk;
end

initial begin
    reset = 1'b0;
    D = 4'b0001;
    
end
endmodule

