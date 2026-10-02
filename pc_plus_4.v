`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2026 10:21:32 AM
// Design Name: 
// Module Name: pc_plus_4
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


module pc_plus_4(
     input [31:0] from_pc,
     output [31:0] next_pc
    );
    
    assign next_pc = from_pc + 4;
    
endmodule
