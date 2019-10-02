`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2019 07:32:32 PM
// Design Name: 
// Module Name: mux_b
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


module mux_b( d0, d1, s, y );
input [3:0] d0, d1;
input s;
output [3:0] y;
reg [3:0] y;

always@(d0 or d1 or s)
begin
 if ( s == 1 )
 y = d1;
 else
 y = d0;
end
endmodule
