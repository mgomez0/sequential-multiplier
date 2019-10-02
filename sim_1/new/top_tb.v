`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2019 05:38:15 PM
// Design Name: 
// Module Name: top_tb
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


module top_tb();
reg reset, clk;
reg [3:0] da, db;
wire[7:0] p;

top uut(reset, clk, da, db, p);

initial
clk = 0;
always #20 clk = ~clk;

initial
begin
reset = 1; da = 4'b1011; db = 4'b1101;
#40 reset = 0;
#780 $stop;
end
endmodule
