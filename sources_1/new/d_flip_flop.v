`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2019 06:42:45 PM
// Design Name: 
// Module Name: d_flip_flop
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


module d_flip_flop(clr, ld, clk, data_in, data_out);
input clr, ld, clk;
input [3:0] data_in;
output [3:0] data_out;
reg [3:0] data_out;

always@(posedge clr or posedge clk)
begin
    if (clr) data_out <= 0;
    else if (ld) data_out <= data_in;

end 
endmodule
