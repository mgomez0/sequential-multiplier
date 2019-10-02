`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2019 06:54:59 PM
// Design Name: 
// Module Name: d_flip_flop_tb
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


module d_flip_flop_tb( );
reg clr, ld, clk;
reg [3:0] data_in;
wire [3:0] data_out;
integer i;

d_flip_flop uut (clr, ld, clk, data_in, data_out);

initial clk = 0; 
initial ld = 0; 
initial data_in = 0; 

always #10 clk = ~clk;
always #50 ld = ~ld;

initial
begin 
    clr = 1; ld = 0;
#20 clr = 0;
#100 $stop;
end

initial
begin
    for (i = 0; i <= 256; i=i+1)
    begin
        data_in <= i;
        #12;
    end
    $stop;
end

endmodule
