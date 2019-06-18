module half_adder ( 
  input a,b,
  output sum,carry );

wire sum;
wire carry;

  assign sum   = a ^ b;
  assign carry = a & b;

endmodule


  
  
