`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 16:58:52
// Design Name: 
// Module Name: four_by_four_tb
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


module four_by_four_tb();
    reg [31:0] A;
    reg [31:0] B; 
    reg clk;
    reg rst;
    wire [255:0] outputMatrix;
//four_by_four_multiplier UUT(.row0(row0),.row1(row1),.row2(row2),.row3(row3),.column0(column0),.column1(column1),.column2(column2),.column3(column3),.clk(clk),.rst(rst),.outputMatrix(outputMatrix));
MbyNMultiplier UUT(.A(A),.B(B),.clk(clk),.rst(rst),.outputMatrix(outputMatrix));

initial begin
//    clk = 0;    rst = 1;    row0=8'd0; row1=8'd0; row2=8'd0; row3=8'd0;     column0 =8'd0; column1=8'd0;  column2=8'd0;  column3=8'd0;
//    #100        rst = 0;    row0=8'd1; row1=8'd0; row2=8'd0; row3=8'd0;     column0 =8'd5; column1=8'd0;  column2=8'd0;  column3=8'd0;
//    #10         rst = 0;    row0=8'd2; row1=8'd5; row2=8'd0; row3=8'd0;     column0 =8'd1; column1=8'd6;  column2=8'd0;  column3=8'd0;
//    #10         rst = 0;    row0=8'd3; row1=8'd6; row2=8'd9; row3=8'd0;     column0 =8'd5; column1=8'd2;  column2=8'd7;  column3=8'd0;
//    #10         rst = 0;    row0=8'd4; row1=8'd7; row2=8'd10; row3=8'd13;   column0 =8'd9; column1=8'd6;  column2=8'd3;  column3=8'd8;  
//    #10         rst = 0;    row0=8'd0; row1=8'd8; row2=8'd11; row3=8'd14;   column0 =8'd0; column1=8'd10;  column2=8'd7;  column3=8'd4;
//    #10         rst = 0;    row0=8'd0; row1=8'd0; row2=8'd12; row3=8'd15;   column0 =8'd0; column1=8'd0;  column2=8'd11;  column3=8'd8;  
//    #10         rst = 0;    row0=8'd0; row1=8'd0; row2=8'd0; row3=8'd16;    column0 =8'd0; column1=8'd0;  column2=8'd0;  column3=8'd12;
//    #10         rst = 0;    row0=8'd0; row1=8'd0; row2=8'd0; row3=8'd0;     column0 =8'd0; column1=8'd0;  column2=8'd0;  column3=8'd0;  
//    #10         rst = 0;    row0=8'd0; row1=8'd0; row2=8'd0; row3=8'd0;     column0 =8'd0; column1=8'd0;  column2=8'd0;  column3=8'd0;
//    #10         rst = 0;    row0=8'd0; row1=8'd0; row2=8'd0; row3=8'd0;     column0 =8'd0; column1=8'd0;  column2=8'd0;  column3=8'd0;  
    
    clk = 0;    rst = 1;    A[7:0]=8'd0; A[15:8]=8'd0; A[23:16]=8'd0;  A[31:24]=8'd0;     B[7:0] =8'd0; B[15:8]=8'd0;  B[23:16]=8'd0;  B[31:24]=8'd0;
    #100        rst = 0;    A[7:0]=8'd1; A[15:8]=8'd0; A[23:16]=8'd0;  A[31:24]=8'd0;     B[7:0] =8'd5; B[15:8]=8'd0;  B[23:16]=8'd0;  B[31:24]=8'd0;
    #10         rst = 0;    A[7:0]=8'd2; A[15:8]=8'd5; A[23:16]=8'd0;  A[31:24]=8'd0;     B[7:0] =8'd1; B[15:8]=8'd6;  B[23:16]=8'd0;  B[31:24]=8'd0;
    #10         rst = 0;    A[7:0]=8'd3; A[15:8]=8'd6; A[23:16]=8'd9;  A[31:24]=8'd0;     B[7:0] =8'd5; B[15:8]=8'd2;  B[23:16]=8'd7;  B[31:24]=8'd0;
    #10         rst = 0;    A[7:0]=8'd4; A[15:8]=8'd7; A[23:16]=8'd10; A[31:24]=8'd13;    B[7:0] =8'd9; B[15:8]=8'd6;  B[23:16]=8'd3;  B[31:24]=8'd8;  
    #10         rst = 0;    A[7:0]=8'd0; A[15:8]=8'd8; A[23:16]=8'd11; A[31:24]=8'd14;    B[7:0] =8'd0; B[15:8]=8'd10; B[23:16]=8'd7;  B[31:24]=8'd4;
    #10         rst = 0;    A[7:0]=8'd0; A[15:8]=8'd0; A[23:16]=8'd12; A[31:24]=8'd15;    B[7:0] =8'd0; B[15:8]=8'd0;  B[23:16]=8'd11; B[31:24]=8'd8;  
    #10         rst = 0;    A[7:0]=8'd0; A[15:8]=8'd0; A[23:16]=8'd0;  A[31:24]=8'd16;    B[7:0] =8'd0; B[15:8]=8'd0;  B[23:16]=8'd0;  B[31:24]=8'd12;
    #10         rst = 0;    A[7:0]=8'd0; A[15:8]=8'd0; A[23:16]=8'd0;  A[31:24]=8'd0;     B[7:0] =8'd0; B[15:8]=8'd0;  B[23:16]=8'd0;  B[31:24]=8'd0;  
    #10         rst = 0;    A[7:0]=8'd0; A[15:8]=8'd0; A[23:16]=8'd0;  A[31:24]=8'd0;     B[7:0] =8'd0; B[15:8]=8'd0;  B[23:16]=8'd0;  B[31:24]=8'd0;
    #10         rst = 0;    A[7:0]=8'd0; A[15:8]=8'd0; A[23:16]=8'd0;  A[31:24]=8'd0;     B[7:0] =8'd0; B[15:8]=8'd0;  B[23:16]=8'd0;  B[31:24]=8'd0;  

 
//    #100        rst = 0;    row0=8'd1; row1=8'd0; row2=8'd0; row3=8'd0;     column0 =8'd1; column1=8'd1;  column2=8'd1;  column3=8'd1;  
//    #10         rst = 0;    row0=8'd2; row1=8'd5; row2=8'd0; row3=8'd0;     column0 =8'd2; 
//    #10         rst = 0;    row0=8'd3; row1=8'd6; row2=8'd9; row3=8'd0;     column0 =8'd3; 
//    #10         rst = 0;    row0=8'd4; row1=8'd7; row2=8'd10; row3=8'd13;   column0 =8'd4; 
//    #10         rst = 0;    row0=8'd0; row1=8'd8; row2=8'd11; row3=8'd14;   column0 =8'd0; 
//    #10         rst = 0;    row0=8'd0; row1=8'd0; row2=8'd12; row3=8'd15;   column0 =8'd0;   
//    #10         rst = 0;    row0=8'd0; row1=8'd0; row2=8'd0; row3=8'd16;    column0 =8'd0; 
//    #10         rst = 0;    row0=8'd0; row1=8'd0; row2=8'd0; row3=8'd0;     column0 =8'd0;   
//    #10         rst = 0;    row0=8'd0; row1=8'd0; row2=8'd0; row3=8'd0;     column0 =8'd0; 
//    #10         rst = 0;    row0=8'd0; row1=8'd0; row2=8'd0; row3=8'd0;     

end
always #5 clk = ~clk;
endmodule
