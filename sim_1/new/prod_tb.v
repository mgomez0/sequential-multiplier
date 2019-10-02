`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2019 04:32:29 PM
// Design Name: 
// Module Name: prod_tb
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


module prod_tb();
reg clk, shp, ldp, clr, c_in;
reg [3:0] p_in;
wire [7:0] prod_out;

prod uut(clk, shp, ldp, clr, c_in, p_in, prod_out);

initial clk = 0;
always #12 clk = ~clk;

initial begin
    clr = 1; shp = 0; ldp = 0; c_in = 0; p_in = 4'b0111;
#22 clr = 0; ldp = 1;
#15 ldp = 0; shp = 1;
#180 $stop;
end

endmodule
