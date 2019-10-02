`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2019 06:24:15 PM
// Design Name: 
// Module Name: right_shift_register_tb
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


module right_shift_register_tb();
reg shb, ld, clr, clk; 
reg [3:0] data_in;
wire bit_out;

right_shift_register uut (shb, ld, clr, clk, data_in, bit_out);

initial clk = 0;
always #10 clk = ~clk;

initial
begin 
    clr = 1; ld = 0; shb = 0; data_in = 4'b1011;
#22 clr = 0;
    ld = 1; shb = 0;
#20 ld = 0; shb = 1;
#60 $stop;

end
endmodule
