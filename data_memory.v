`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2026 06:18:40 PM
// Design Name: 
// Module Name: data_memory
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


module data_memory(
    input clk,rst, memwrite, memread, 
    input [31:0] read_addr,data_write,
    output [31:0] mem_out
    );
    integer i;
    reg [31:0] datamemory [63:0];
    
    always @(posedge clk)
    begin
       if (rst) begin
          for(i=0;i<64;i=i+1)
           datamemory[i] <= 0; end
       else
         if (memwrite) begin
           datamemory[read_addr] <= data_write; end
    end
    
 assign mem_out = (memread) ? datamemory[read_addr]: 32'b0;
 
endmodule
