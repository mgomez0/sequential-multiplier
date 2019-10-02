`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2019 06:17:14 PM
// Design Name: 
// Module Name: right_shift_register
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


module right_shift_register(shb, ld, clr, clk, data_in,bit_out);
input shb, ld, clr, clk; 
input [3:0] data_in;

output bit_out;
reg [3:0] data_out;
reg bit_out;

always@(posedge clr or posedge clk)
begin
 if (clr) 
    data_out <= 0;
 else 
    begin
        if (ld)
            data_out <= data_in;
        if (shb)
            begin
            data_out <= {1'b0, data_out[3:1]};
            bit_out <= data_out[0];
            end
    end
    
end
endmodule
