`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2019 06:47:37 PM
// Design Name: 
// Module Name: rca_4_bit_tb
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



module rca_4_bit_tb( );
reg [3:0] a, b;
reg cin;
wire cout;
wire [3:0] sum;
integer i,j,k;
rca_4_bit uut(a, b, cin, cout, sum);

initial 
    begin
        a = 11;
        b = 14;
    end

initial begin
    for (k = 0; k <=16; k = i+1)
        begin
            {cin} <= k;
            #10;
        end
        $stop;
end
 

initial $monitor ($time, "ns, a=%b, b=%b, cin = %b, cout=%b, sum=%b", a, b, cin, cout, sum);
 
endmodule
