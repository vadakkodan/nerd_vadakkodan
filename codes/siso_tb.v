//-------------------------------------------------------------------------------
// Company:  Open for all, Bangalore 
// Engineer: vadakkodan
//--
//-- (C) . February. Written by Pradeep Purushothaman Vadakkodathu (vadakkodan)
// Create Date: 04.02.2019 14:40
// Design Name: 
// Module Name: 
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//-------------------------------------------------------------------------------
// Dependencies: 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//-- 
//-- https://github.com/vadakkodan
//-- 
//-------------------------------------------------------------------------------

`timescale 1ns / 1ps

module siso_book_tb();
reg [3:0] I_par;
reg CLK;
reg Clear_b;
reg s1,s0, MSB_in, LSB_in;
wire [3:0] A_par;
integer count =0;

Shift_Register_4_beh DUT (
    .I_par(I_par),
    .CLK(CLK),
    .Clear_b(Clear_b),
    .A_par(A_par),
    .s1(s1),
    .s0(s0),
    .MSB_in(MSB_in),
    .LSB_in(LSB_in));

initial begin
    CLK = 1'b0;
    I_par = 4'b0;
    repeat (10)
    s0 = 1;
    s1 = 0;
    MSB_in = 0;
    LSB_in = 0;
    #20 Clear_b = 1'b0;
forever 
    #10 CLK = ~CLK;
end

always @ (posedge CLK)
   begin
       count = count+1;
      if ( count == 5)
      begin
          Clear_b = 1'b1;
          //I_par = 4'b1000;
          s0 = 0;
          s1 = 1;
          //LSB_in = 1'b1;
         LSB_in = 1;
     end
     //else if (count == 6)    
     //  MSB_in = 1'b0;
     //else if ( count == 7)
     //  MSB_in = 1'b0;
     //else if ( count == 8)
     //  MSB_in = 1'b0;
     //else if ( count == 15)
        else if(count == 15)
        begin
            $display("Ending Simulation",count);
            $stop;
        end
    else
        LSB_in = 0;
   $display ("Output : %b",A_par);
      
end

endmodule

