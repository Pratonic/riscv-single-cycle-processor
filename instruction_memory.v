`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2026 10:26:35 AM
// Design Name: 
// Module Name: instruction_memory
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


module instruction_memory(
    input clk,rst,
    input [31:0] rd_addr,
    output [31:0] im_out
    );
    
    reg [31:0] mem [63:0];
    integer i;
 always @(posedge clk)
   begin
      if (rst)
        for (i=0;i<64;i=i+1)
           mem [i] <= 0;
      else
       begin
        mem [0] <= 32'b0;
        mem [4] <= 32'b0000000_11001_10000_000_01101_0110011; 
        mem [8] <= 32'b0100000_00011_01000_000_00101_0110011;
        mem [12] <= 32'b0000000_00011_00010_111_00001_0110011;
        mem [16] <= 32'b0000000_00101_00011_110_00100_0110011;
        
        mem [20] <= 32'b000000000011_10101_000_10110_0010011;
        mem [24] <= 32'b000000000001_01000_110_01001_0010011;

        mem [28] <= 32'b000000001111_00101_010_01000_0000011;
        mem [32] <= 32'b000000000011_00011_010_01001_0000011;
        
        mem [36] <= 32'b0000000_01111_00101_010_01100_0100011;
        mem [40] <= 32'b0000000_01110_00110_010_01010_0100011;

        mem [44] <= 32'he0948663; end
      end
   assign im_out = mem [rd_addr];
endmodule
