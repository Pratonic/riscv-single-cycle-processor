`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2026 10:54:22 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
  input [31:0] a,b,
  input [3:0] control_in,
  output reg [31:0] alu_out,
  output reg zero
    );
    
  always @(*)
    begin
       case (control_in)
       
       4'b0000 : begin
                   alu_out = a&b;
                   zero = 0;
                 end
       4'b0001 : begin
                   alu_out = a|b;
                   zero = 0;
                 end
       4'b0010 : begin
                   alu_out = a+b;
                   zero = 0;
                 end
       4'b0110 : begin
                    alu_out = a-b;
                    if (a==b) begin
                       zero = 1; end
                    else
                       zero = 0;
                 end
        endcase
    end
endmodule
