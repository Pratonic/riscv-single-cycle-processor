`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2026 10:17:35 AM
// Design Name: 
// Module Name: PC
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


module PC(
  input clk,rst,
  input [31:0] pc_in,
  output reg [31:0] pc_out
    );
    
  always @(posedge clk)
     begin
     if(rst)
        pc_out <= 0;
     else
        pc_out <= pc_in;
     end
endmodule
