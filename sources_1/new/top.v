`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2019 05:30:04 PM
// Design Name: 
// Module Name: top
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


module top(reset, clk, da, db, p);
input reset, clk;
input [3:0] da, db;
output[7:0] p;

wire shb, shp, ld, ldp, clr;

multi m_top(da, db, shb, ld, clr, ldp, shp, clk, p);
mult_fsm fsm_top(reset, clk, shb, ld, clr, ldp, shp);

endmodule
