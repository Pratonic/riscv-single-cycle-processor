`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2026 10:42:27 AM
// Design Name: 
// Module Name: registor
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


module registor(
  input clk,rst,regwrite,
  input [4:0] rs,rt,rd,
  input [31:0] write_data,
  output [31:0] read_data1,read_data2
    );
    
    
    reg [31:0] registor [31:0];
        
    always @(posedge clk)
      begin
        if(rst) begin
         registor [0] = 0;
        registor [1] = 4;
        registor [2] = 9;
        registor [3] = 41;
        registor [4] = 20;
        registor [5] = 34;
        registor [6] = 10;
        registor [7] = 54;
        registor [8] = 60;
        registor [9] = 48;
        registor [10] = 90;
        registor [11] = 24;
        registor [12] = 56;
        registor [13] = 33;
        registor [14] = 30;
        registor [15] = 40;
        registor [16] = 9;
        registor [17] = 4;
        registor [18] = 5;
        registor [19] = 4;
        registor [20] = 50;
        registor [21] = 45;
        registor [22] = 55;
        registor [23] = 11;
        registor [24] = 77;
        registor [25] = 44;
        registor [26] = 80;
        registor [27] = 49;
        registor [28] = 60;
        registor [29] = 41;
        registor [30] = 78;
        registor [31] = 45; end
        else
        if (regwrite)
           registor[rd] <= write_data;
      end
   assign  read_data1 = registor[rs];
   assign  read_data2 = registor[rt];
    
endmodule