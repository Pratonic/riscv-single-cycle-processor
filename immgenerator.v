`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2026 10:57:03 AM
// Design Name: 
// Module Name: immgenerator
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


module immgenerator(
  input [6:0] opcode,
  input [31:0] inst,
  output reg [31:0] inst_ext
    );
    
 always @(*)
   begin
      case (opcode)
      
    7'b0000011 : 
                inst_ext = {{20{inst[31]}},inst[31:20]}; 
    7'b0100011 : 
                inst_ext = {{20{inst[31]}},inst[31:25],inst[11:7]};     
    7'b1100011 :
                inst_ext = {{20{inst[31]}},inst[31],inst[30:25],inst[11:8],1'b0};    
                
        default : inst_ext = 0;
      endcase 
   end             
endmodule
