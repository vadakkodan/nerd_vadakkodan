`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:59:20 06/16/2019
// Design Name:   ha_gate
// Module Name:   /home/vadakkodan/Desktop/half_adder/ha_g_tb.v
// Project Name:  half_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ha_gate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ha_g_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	ha_gate uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		a = 0;
		b = 0;
		#100;
		
		a = 0;
		b = 1;
		#100;
		
		a = 1;
		b = 0;
		#100;
        
		a = 1;
		b = 1;
		#100;

	end
      
endmodule

