`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2019 05:00:06 PM
// Design Name: 
// Module Name: mult_fsm
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


module mult_fsm(reset, clk, shb, ld, clr, ldp, shp);
input reset, clk;
output shb, ld, ldp, clr, shp;
reg shb, ld, ldp, clr, shp;
reg [2:0] cs, ns; //prsent state
parameter s0 = 3'b000, s1 = 3'b001, s2 = 3'b010,
s3 = 3'b011, s4 = 3'b100;

always@(cs)

begin
    case(cs)
       s0: {shb, shp, ld, ldp, clr} = 5'b00001;
       s1: {shb, shp, ld, ldp, clr} = 5'b00100;
       s2: {shb, shp, ld, ldp, clr} = 5'b00010;
       s3: {shb, shp, ld, ldp, clr} = 5'b01000;
       s4: {shb, shp, ld, ldp, clr} = 5'b10000;
    endcase
end

always@(cs)
begin
    case(cs)
    s0: ns = s1;
    s1: ns = s2;
    s2: ns = s3;
    s3: ns = s4;
    s4: ns = s2;
    default ns = s0;
    endcase
end

always@(posedge clk)
begin
    if(reset) cs <= s0;
    else cs<= ns;
end
endmodule



