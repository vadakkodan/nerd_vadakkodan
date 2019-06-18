`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:33:08 06/17/2019
// Design Name:   fa
// Module Name:   /home/vadakkodan/Desktop/half_adder/fa_tb.v
// Project Name:  half_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fa
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fa_tb;

	// Inputs
	reg ain;
	reg bin;
	reg cin;

	// Outputs
	wire fsum;
	wire fcarry;

	// Instantiate the Unit Under Test (UUT)
	fa uut (
		.ain(ain), 
		.bin(bin), 
		.cin(cin), 
		.fsum(fsum), 
		.fcarry(fcarry)
	);

	initial begin
		// Initialize Inputs
		ain = 0;
		bin = 0;
		cin = 0;

		#100;
      
      ain = 0;
		bin = 0;
		cin = 1;

		#100;
		
		ain = 0;
		bin = 1;
		cin = 0;

		#100;
      
		ain = 0;
		bin = 1;
		cin = 1;

		#100;
      
		ain = 0;
		bin = 0;
		cin = 0;

		#100;
      
		ain = 0;
		bin = 0;
		cin = 0;

		#100;
      
		// Add stimulus here

	end
      
endmodule

