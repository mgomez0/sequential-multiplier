`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2019 05:29:36 PM
// Design Name: 
// Module Name: multi
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


module multi(da, db, shb, ld, clr, ldp, shp, clk, p);
input shb, ld, clr, ldp, shp, clk;
input [3:0] da;
input [3:0] db;
output [7:0] p;
wire s;
wire [3:0] data_out;
wire [3:0] adder_input;
wire [3:0] p_in;
wire prod_c_in;




d_flip_flop m_a (clr, ld, clk, da, data_out);
right_shift_register m_b (shb, ld, clr, clk, db, s);
mux_b m1(4'b0000, data_out, s, adder_input);
prod p1 (clk, shp, ldp, clr, prod_c_in, p_in, p);
rca_4_bit r1 (p[7:4],adder_input,1'b0,prod_c_in,p_in);



endmodule
