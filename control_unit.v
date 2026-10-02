`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2026 11:27:31 AM
// Design Name: 
// Module Name: control_unit
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


module control_unit(
  input [6:0] inst,
  output reg ALUsrc,memtoreg,regwrite,memread,memwrite,branch,ALUop1,ALUop0
    );
    
    always @(*)
      begin
        case (inst)
        
        7'b0110011 :
                {ALUsrc,memtoreg,regwrite,memread,memwrite,branch,ALUop1,ALUop0} = 8'b00100010;
        7'b0000011 :
                {ALUsrc,memtoreg,regwrite,memread,memwrite,branch,ALUop1,ALUop0} = 8'b11110000; 
        7'b0100011 :
                {ALUsrc,memtoreg,regwrite,memread,memwrite,branch,ALUop1,ALUop0} = 8'b1x001000;
        7'b1100011 :
                {ALUsrc,memtoreg,regwrite,memread,memwrite,branch,ALUop1,ALUop0} = 8'b0x000101; 
        default:
            {ALUsrc,memtoreg,regwrite,memread,
             memwrite,branch,ALUop1,ALUop0} = 8'b00000000;        
        endcase
      end      
endmodule
