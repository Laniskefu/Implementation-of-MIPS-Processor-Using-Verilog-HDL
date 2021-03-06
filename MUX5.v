module MUX5(RW, rd, rt, RegDst); 
  output [4:0] RW; 
  input [4:0] rd, rt; 
  input RegDst; 

  assign RW = RegDst ? rd : rt; 
endmodule
