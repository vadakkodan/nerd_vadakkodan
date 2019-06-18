module fa (
  input ain,bin,cin,
  output fsum,fcarry);

wire s1;
wire s2;
wire s3;

half_adder h0 (.a(ain),.b(bin),.sum(s1),.carry(s2));
half_adder h1 (.a(s1),.b(cin),.sum(fsum),.carry(s3));

or (fcarry,s2,s3);

endmodule



