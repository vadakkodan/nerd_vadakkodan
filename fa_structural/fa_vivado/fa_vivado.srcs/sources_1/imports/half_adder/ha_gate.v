module ha_gate( 
  input a,b,
  output sum,carry );

xor(sum,a,b);
and(carry,a,b);

endmodule
