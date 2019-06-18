`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:49:22 06/16/2019
// Design Name:   half_adder
// Module Name:   /home/vadakkodan/Desktop/half_adder/ha_tb.v
// Project Name:  half_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: half_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ha_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	half_adder uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		// Initialize Inputs
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
		// Add stimulus here

	end
      
endmodule

