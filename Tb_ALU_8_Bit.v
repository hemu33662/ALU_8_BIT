`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2023 13:45:11
// Design Name: 
// Module Name: Tb_ALU_8_Bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Tb_ALU_8_Bit;

     reg[7:0] A,B;
 reg[3:0] ALU_Sel;

//Outputs
 wire[7:0] ALU_Out;
 wire CarryOut;
 // Verilog code for ALU
 integer i;
 ALU_8_Bit utt(
            .A(A),
            .B(B),  // ALU 8-bit Inputs                 
            .ALU_Sel(ALU_Sel),// ALU Selection
            .ALU_Out(ALU_Out), // ALU 8-bit Output
            .CarryOut(CarryOut) // Carry Out Flag
     );
    initial begin
    #100
    // hold reset state for 100 ns.
      A = 8'b10101010;
      B = 8'b01010101;
      ALU_Sel = 4'b0000;
      
      for (i=4'b0;i<=4'b111;i=i+1)
      begin
       ALU_Sel = ALU_Sel + i;
       #10;
      end
    end
    endmodule