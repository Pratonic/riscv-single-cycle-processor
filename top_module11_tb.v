`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2026 11:19:09 PM
// Design Name: 
// Module Name: top_module11_tb
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


module top_module11_tb(

    );
    reg clk,rst;
    wire [31:0] result;
    wire [31:0] alu_result;
    wire [31:0] current_pc;
    top_module t1(clk,rst,result,alu_result,current_pc);
    
    initial
       {clk,rst}=0;
       
    always #5 clk=~clk;
    
    initial
      begin
       rst = 1;
       #10;
       rst = 0;
       #400;
      end
endmodule
