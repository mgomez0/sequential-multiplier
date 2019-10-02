`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2019 06:35:15 PM
// Design Name: 
// Module Name: multi_tb
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


module multi_tb();
reg shb, ld, clr, ldp, shp, clk;
reg [3:0] da, db;
wire [7:0] p;
multi uut (da, db, shb, ld, clr, ldp, shp, clk, p);

initial clk = 0; 
always #20 clk = ~clk;

initial begin
    ld = 0; shb = 0; ldp = 0; shp = 0; clr =1; da = 4'b1011; db = 4'b1101;
    #40 ld =1; shb = 0; ldp = 0; shp = 0; clr = 0;
    #40 ld =0; shb = 0; ldp = 1; shp = 0; clr = 0;
    #40 ld =0; shb = 0; ldp = 0; shp = 1; clr = 0;
    #40 ld =0; shb = 1; ldp = 0; shp = 0; clr = 0;
    #40 ld =0; shb = 0; ldp = 1; shp = 0; clr = 0;
    #40 ld =0; shb = 0; ldp = 0; shp = 1; clr = 0;
    #40 ld =0; shb = 1; ldp = 0; shp = 0; clr = 0;
    #40 ld =0; shb = 0; ldp = 1; shp = 0; clr = 0;
    #40 ld =0; shb = 0; ldp = 0; shp = 1; clr = 0;
    #40 ld =0; shb = 1; ldp = 0; shp = 0; clr = 0;
    #40 ld =0; shb = 0; ldp = 1; shp = 0; clr = 0;
    #40 ld =0; shb = 0; ldp = 0; shp = 1; clr = 0;
    #40 ld =0; shb = 1; ldp = 0; shp = 0; clr = 0;
    #40 ld =0; shb = 0; ldp = 1; shp = 0; clr = 0;
    #40 ld =0; shb = 0; ldp = 0; shp = 1; clr = 0;
    #40 ld =0; shb = 1; ldp = 0; shp = 0; clr = 0;
    #40 ld =0; shb = 0; ldp = 1; shp = 0; clr = 0;
    #40 ld =0; shb = 0; ldp = 0; shp = 1; clr = 0;
     #40 ld =0; shb = 1; ldp = 0; shp = 0; clr = 0;
        #40 ld =0; shb = 0; ldp = 1; shp = 0; clr = 0;
        #40 ld =0; shb = 0; ldp = 0; shp = 1; clr = 0;
        #40 ld =0; shb = 1; ldp = 0; shp = 0; clr = 0;
        #40 ld =0; shb = 0; ldp = 1; shp = 0; clr = 0;
            #40 ld =0; shb = 0; ldp = 0; shp = 1; clr = 0;
            #40 ld =0; shb = 1; ldp = 0; shp = 0; clr = 0;
            #40 ld =0; shb = 0; ldp = 1; shp = 0; clr = 0;
            #40 ld =0; shb = 0; ldp = 0; shp = 1; clr = 0;
            #40 ld =0; shb = 1; ldp = 0; shp = 0; clr = 0;
            #40 ld =0; shb = 0; ldp = 1; shp = 0; clr = 0;
            #40 ld =0; shb = 0; ldp = 0; shp = 1; clr = 0;
            #40 ld =0; shb = 1; ldp = 0; shp = 0; clr = 0;
            #40 ld =0; shb = 0; ldp = 1; shp = 0; clr = 0;
                #40 ld =0; shb = 0; ldp = 0; shp = 1; clr = 0;
                #40 ld =0; shb = 1; ldp = 0; shp = 0; clr = 0;
                #40 ld =0; shb = 0; ldp = 1; shp = 0; clr = 0;
                #40 ld =0; shb = 0; ldp = 0; shp = 1; clr = 0;
                #40 ld =0; shb = 1; ldp = 0; shp = 0; clr = 0;
                #40 ld =0; shb = 0; ldp = 1; shp = 0; clr = 0;
                #40 ld =0; shb = 0; ldp = 0; shp = 1; clr = 0;
                #40 ld =0; shb = 1; ldp = 0; shp = 0; clr = 0;
                #40 ld =0; shb = 0; ldp = 1; shp = 0; clr = 0;
                    #40 ld =0; shb = 0; ldp = 0; shp = 1; clr = 0;
                    #40 ld =0; shb = 1; ldp = 0; shp = 0; clr = 0;
                    #40 ld =0; shb = 0; ldp = 1; shp = 0; clr = 0;
                    #40 ld =0; shb = 0; ldp = 0; shp = 1; clr = 0;
                    #40 ld =0; shb = 1; ldp = 0; shp = 0; clr = 0;
                    #40 ld =0; shb = 0; ldp = 1; shp = 0; clr = 0;
                    #40 ld =0; shb = 0; ldp = 0; shp = 1; clr = 0;
                    #40 ld =0; shb = 1; ldp = 0; shp = 0; clr = 0;
    #4000 $stop;
    end

endmodule


