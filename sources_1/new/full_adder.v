`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2019 06:25:08 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(a, b, cin, cout, sum);
input [3:0] a, b; 
input cin;
output cout; 
output [3:0] sum;
wire m, n, p;
half_adder g1(.cout(n), .sum(m), .a(a), .b(b));
half_adder g2(.cout(p), .sum(sum), .a(cin), .b(m));
or g3(cout, p, n);

endmodule
