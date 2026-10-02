`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2026 11:13:14 PM
// Design Name: 
// Module Name: ALU_control
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


module ALU_control(
   input ALUop0,ALUop1,funct7,[2:0]funct3,
   output reg [3:0] control_out 
    );
    always @(*)
      begin
        case ({ALUop1,ALUop0,funct7,funct3})
        
        6'b000000 : 
                    control_out = 4'b0010;
        6'b010000 : 
                    control_out = 4'b0110;
        6'b100000 : 
                    control_out = 4'b0010;
        6'b101000 : 
                    control_out = 4'b0110;
        6'b100111 : 
                    control_out = 4'b0000;
        6'b100110 : 
                    control_out = 4'b0001;
        endcase
    end  
        
endmodule
