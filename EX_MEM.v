module EX_MEM(MemtoReg3,RegWrite3,MemWrite3,nPC_sel3,jmp3,JUMPER_out3,ALU_out3,zero3,busB3,Ext_out3,RW3,
      clk,rst,MemtoReg2,RegWrite2,MemWrite2,nPC_sel2,jmp2,JUMPER_out, ALU_out, zero, busB2,Ext_out2,RW2); 
  output reg MemtoReg3, RegWrite3, MemWrite3, nPC_sel3, jmp3; 
  output reg [31:0] JUMPER_out3; 
  output reg [31:0] ALU_out3; 
  output reg zero3; 
  output reg [31:0] busB3; 
  output reg [31:0] Ext_out3; 
  output reg [4:0] RW3; 
  input clk, rst; 
  input MemtoReg2, RegWrite2, MemWrite2, nPC_sel2, jmp2; 
  input [31:0] JUMPER_out; 
  input [31:0] ALU_out; 
  input zero; 
  input [31:0] busB2; 
  input [31:0] Ext_out2; 
  input [4:0] RW2; 

  always@(posedge clk, posedge rst)
  begin
    if(rst)
    begin
      MemtoReg3 <= 0; 
      RegWrite3 <= 0; 
      MemWrite3 <= 0; 
      nPC_sel3 <= 0; 
      jmp3 <= 0; 
      JUMPER_out3 <= 0; 
      ALU_out3 <= 0; 
      zero3 <= 0; 
      busB3 <= 0; 
      Ext_out3 <= 0; 
      RW3 <= 0; 
    end
    else if(clk)
    begin
      MemtoReg3 <= MemtoReg2; 
      RegWrite3 <= RegWrite2; 
      MemWrite3 <= MemWrite2; 
      nPC_sel3 <= nPC_sel2; 
      jmp3 <= jmp2; 
      JUMPER_out3 <= JUMPER_out; 
      ALU_out3 <= ALU_out; 
      zero3 <= zero; 
      busB3 <= busB2; 
      Ext_out3 <= Ext_out2; 
      RW3 <= RW2; 
    end
  end

endmodule
