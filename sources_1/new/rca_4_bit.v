`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2019 06:43:27 PM
// Design Name: 
// Module Name: rca_4_bit
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


module rca_4_bit(a,b,cin,cout,sum);
input[3:0] a,b;
input      cin;
output[3:0] sum;
output      cout;
wire [2:0] m;

full_adder g1(.cout(m[0]), .sum(sum[0]), .a(a[0]), .b(b[0]), .cin(cin));
full_adder g2(.cout(m[1]), .sum(sum[1]), .a(a[1]), .b(b[1]), .cin(m[0]));
full_adder g3(.cout(m[2]), .sum(sum[2]), .a(a[2]), .b(b[2]), .cin(m[1]));
full_adder g4(.cout(cout), .sum(sum[3]), .a(a[3]), .b(b[3]), .cin(m[2]));

endmodule
