`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2019 06:36:35 PM
// Design Name: 
// Module Name: prod
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


module prod(clk, shp, ldp, clr, c_in, p_in, prod_out);
input clk, shp, ldp, clr, c_in;
input [3:0] p_in;
output [7:0] prod_out;
reg [4:0] shiftph;
reg [3:0] shiftpl;
reg [7:0] prod_out;

always @ (posedge clk or posedge clr)
begin 

if(clr == 1)
begin
    shiftph<=5'b00000;
    shiftpl<=4'b0000;
end

else
begin
     if (ldp==1)
        shiftph<={c_in, p_in[3:0]};

     if (shp==1)
        begin
            shiftph[4]<= c_in;
            shiftph[3]<=shiftph[4];
            shiftph[2]<=shiftph[3];
            shiftph[1]<=shiftph[2];
            shiftph[0]<=shiftph[1];
            shiftpl[3]<=shiftph[0];
            shiftpl[2]<=shiftpl[3];
            shiftpl[1]<=shiftpl[2];
            shiftpl[0]<=shiftpl[1];
        end

        prod_out <= {shiftph[3:0], shiftpl[3:0]};
end
end
endmodule
