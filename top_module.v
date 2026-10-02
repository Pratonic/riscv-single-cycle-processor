`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2026 10:10:09 PM
// Design Name: 
// Module Name: top_module
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


module top_module(
   input clk,rst,
   output [31:0] result,
    output [31:0] alu_result,
    output [31:0] current_pc
    );
    wire [31:0] pc_out,pc_4,im_out,inst_ext,mux_out_1,mux_out_2,mux_out_3;
    wire ALUsrc,memtoreg,regwrite,memread,memwrite,branch,ALUop1,ALUop0,zero,and_out;
    wire [31:0] read_data1,read_data2,write_data,alu_out,mem_out,out;
    wire [3:0] control_out;
    PC p1(clk,rst,mux_out_1,pc_out);
    pc_plus_4 p2(pc_out,pc_4);
    instruction_memory in(clk,rst,pc_out,im_out);
    registor r1(clk,rst,regwrite,im_out[19:15],im_out[24:20],im_out[11:7],write_data,read_data1,read_data2);
    immgenerator im(im_out[6:0],im_out,inst_ext);
    control_unit c1(im_out[6:0],ALUsrc,memtoreg,regwrite,memread,memwrite,branch,ALUop1,ALUop0);
    ALU_control a1(ALUop0,ALUop1,im_out[30],im_out[14:12],control_out);
    mux_2_1 m2(read_data2,inst_ext,ALUsrc,mux_out_2);
    ALU a2(read_data1,mux_out_2,control_out,alu_out,zero);
    data_memory d1(clk,rst,memwrite,memread,alu_out,read_data2,mem_out);
    mux_2_1 m3(alu_out,mem_out,memtoreg,write_data);
    adder add(pc_out,inst_ext,out);
    mux_2_1 m1(pc_4,out,and_out,mux_out_1);
    and_gate and1(branch,zero,and_out);
    
assign result = write_data;
assign alu_result = alu_out;
assign current_pc = pc_out;

endmodule
