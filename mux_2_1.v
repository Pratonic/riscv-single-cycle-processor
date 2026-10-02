`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2026 06:51:18 PM
// Design Name: 
// Module Name: mux_2_1
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


module mux_2_1(
   input [31:0] i0,i1,
   input sel,
   output reg [31:0] y
    );
    
    always @(*)
      begin
        case (sel)
     1'b0 : y = i0;
     1'b1 : y = i1;
        
     default : y = 0;   
       endcase
      end
endmodule
