`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2022 00:42:44
// Design Name: 
// Module Name: multi_acc_pipeline_tb
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


module multi_acc_pipeline_tb();

reg [7:0] P,Q;
wire[15:0] A;
reg clk,rst;
wire [7:0]P1,Q1;
multiplier_acc_pipeline UUT(.P(P),.Q(Q),.A(A),.rst(rst),.clk(clk),.P1(P1),.Q1(Q1));
initial begin
rst = 1; clk = 0; P = 0; Q = 0;
#100 rst = 0;P = 8'd07; Q =8'd02;
#20 P = 8'd01; Q = 8'd05;
#20 P = 8'd05; Q = 8'd02;
#20 P = 8'd06; Q = 8'd05;

#20 P = 0; Q = 0;
//#20 P =0;Q =0;

end
always #10 clk = ~clk;
endmodule
