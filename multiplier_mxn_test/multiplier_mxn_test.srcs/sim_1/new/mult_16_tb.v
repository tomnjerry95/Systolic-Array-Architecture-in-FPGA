`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2022 18:47:54
// Design Name: 
// Module Name: mult_16_tb
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


module mult_16_tb;
    reg [23:0] A;
    reg [23:0] B; 
    reg clk;
    reg rst;
    wire [71:0] outputMatrix;
//four_by_four_multiplier UUT(.row0(row0),.row1(row1),.row2(row2),.row3(row3),.column0(column0),.column1(column1),.column2(column2),.column3(column3),.clk(clk),.rst(rst),.outputMatrix(outputMatrix));
Mult3by3 UUT(.A(A),.B(B),.clk(clk),.rst(rst),.outputMatrix(outputMatrix));
initial begin
 clk = 0;        rst = 1;    A[7:0]=8'd0; A[15:8]=8'd0; A[23:16]=8'd0;      B[7:0] =8'd0; B[15:8]=8'd0;  B[23:16]=8'd0;  
    #100        rst = 0;    A[7:0]=8'd1; A[15:8]=8'd0; A[23:16]=8'd0;      B[7:0] =8'd5; B[15:8]=8'd0;  B[23:16]=8'd0;  
    #10         rst = 0;    A[7:0]=8'd2; A[15:8]=8'd5; A[23:16]=8'd0;      B[7:0] =8'd1; B[15:8]=8'd6;  B[23:16]=8'd0;  
    #10         rst = 0;    A[7:0]=8'd3; A[15:8]=8'd6; A[23:16]=8'd9;      B[7:0] =8'd5; B[15:8]=8'd2;  B[23:16]=8'd7;  
    #10         rst = 0;    A[7:0]=8'd4; A[15:8]=8'd7; A[23:16]=8'd10;     B[7:0] =8'd9; B[15:8]=8'd6;  B[23:16]=8'd3;    
    #10         rst = 0;    A[7:0]=8'd0; A[15:8]=8'd8; A[23:16]=8'd11;     B[7:0] =8'd0; B[15:8]=8'd10; B[23:16]=8'd7;  
    #10         rst = 0;    A[7:0]=8'd0; A[15:8]=8'd0; A[23:16]=8'd12;     B[7:0] =8'd0; B[15:8]=8'd0;  B[23:16]=8'd11;   
    #10         rst = 0;    A[7:0]=8'd0; A[15:8]=8'd0; A[23:16]=8'd0;      B[7:0] =8'd0; B[15:8]=8'd0;  B[23:16]=8'd0;  ;
    #10         rst = 0;    A[7:0]=8'd0; A[15:8]=8'd0; A[23:16]=8'd0;      B[7:0] =8'd0; B[15:8]=8'd0;  B[23:16]=8'd0;    
    #10         rst = 0;    A[7:0]=8'd0; A[15:8]=8'd0; A[23:16]=8'd0;      B[7:0] =8'd0; B[15:8]=8'd0;  B[23:16]=8'd0;  
    #10         rst = 0;    A[7:0]=8'd0; A[15:8]=8'd0; A[23:16]=8'd0;      B[7:0] =8'd0; B[15:8]=8'd0;  B[23:16]=8'd0;    
end
always
#5 clk = ~clk;
endmodule
