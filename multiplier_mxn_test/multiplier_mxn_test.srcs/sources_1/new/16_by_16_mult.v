`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2022 18:46:39
// Design Name: 
// Module Name: 16_by_16_mult
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


module Mult3by3
#(parameter rows = 3,parameter columns = 3)
(
    input [((8*rows)-1):0] A,
    input [((8*rows)-1):0] B,
    input clk,
    input rst,
    output [((16*rows*columns)-1):0] outputMatrix
);


wire [7:0] rowLine[rows:0][rows:0];
wire [7:0] columnLine[columns:0][columns:0];
//wire clk,rst;
wire [15:0] outputValues[rows-1:0][rows-1:0];


wire [7:0] rowInput[3:0];

genvar i,j;

generate 
    for(i=0;i<rows;i= i+1) begin
            for(j =0;j<columns;j = j+1) begin
         
                    mac_unit m(.clk(clk),.rst(rst),.P(rowLine[i][j]),.Q(columnLine[i][j]),.A(outputValues[i][j]),.P1(rowLine[i][j+1]),.Q1(columnLine[i+1][j]));
                 
            end
    end
endgenerate

//genvar i,j;

generate

//for(i = 0;i<rows;i = i+1) begin
//    assign row
//    for(j =0;j<columns;j = j+1) begin
//        if(j<i) begin
//            buffer b(.clk(clk),.rst(rst),.D(bufferRowValues[]),.Q(rowLine[2][0]));

//        end
    
//        if(j == 0) begin
//            buffer b(.clk(clk),.rst(rst),.D(row0),.Q(rowLine[i][0]));
//        end
//    end
//end
//endgenerate
for(i = 0;i<4;i = i+1) begin
    assign rowLine[i][0] = A[((8*(i+1))-1):(8*i)];
end
for(i = 0;i<4;i = i+1) begin
    assign columnLine[0][i] = B[((8*(i+1))-1):(8*i)];
    end
//end
//assign rowLine[0][0] = row0;
//assign rowLine[1][0] = row1;
//assign rowLine[2][0] = row2 ;
//assign rowLine[3][0] = row3;
//assign columnLine[0][0] = column0;
//assign columnLine[0][1] = column1;
//assign columnLine[0][2] = column2;
//assign columnLine[0][3] = column3;

//buffer r0(.clk(clk),.rst(rst),.D(row0),.Q(rowLine[0][0]));

//buffer r1(.clk(clk),.rst(rst),.D(row1),.Q(bufferRowValues[0]));
//buffer r2(.clk(clk),.rst(rst),.D(bufferRowValues[0]),.Q(rowLine[1][0]));

//buffer r3(.clk(clk),.rst(rst),.D(row2),.Q(bufferRowValues[1]));
//buffer r4(.clk(clk),.rst(rst),.D(bufferRowValues[1]),.Q(bufferRowValues[2]));
//buffer r5(.clk(clk),.rst(rst),.D(bufferRowValues[2]),.Q(rowLine[2][0]));

//buffer r6(.clk(clk),.rst(rst),.D(row3),.Q(bufferRowValues[3]));
//buffer r7(.clk(clk),.rst(rst),.D(bufferRowValues[3]),.Q(bufferRowValues[4]));
//buffer r8(.clk(clk),.rst(rst),.D(bufferRowValues[4]),.Q(bufferRowValues[5]));
//buffer r9(.clk(clk),.rst(rst),.D(bufferRowValues[5]),.Q(rowLine[3][0]));



//buffer c0(.clk(clk),.rst(rst),.D(column0),.Q(columnLine[0][0]));

//buffer c1(.clk(clk),.rst(rst),.D(column1),.Q(bufferColumnValues[0]));
//buffer c2(.clk(clk),.rst(rst),.D(bufferColumnValues[0]),.Q(columnLine[0][1]));

//buffer c3(.clk(clk),.rst(rst),.D(column2),.Q(bufferColumnValues[1]));
//buffer c4(.clk(clk),.rst(rst),.D(bufferColumnValues[1]),.Q(bufferColumnValues[2]));
//buffer c5(.clk(clk),.rst(rst),.D(bufferColumnValues[2]),.Q(columnLine[0][2]));

//buffer c6(.clk(clk),.rst(rst),.D(column3),.Q(bufferColumnValues[3]));
//buffer c7(.clk(clk),.rst(rst),.D(bufferColumnValues[3]),.Q(bufferColumnValues[4]));
//buffer c8(.clk(clk),.rst(rst),.D(bufferColumnValues[4]),.Q(bufferColumnValues[5]));
//buffer c9(.clk(clk),.rst(rst),.D(bufferColumnValues[5]),.Q(columnLine[0][3]));
endgenerate 


generate
    for(i=0;i<rows;i=i+1) begin
        for(j = 0;j<columns;j=j+1) begin
            assign outputMatrix[((((i*rows)+j)*(rows*columns))+((rows*columns) -1)) : ((((i*rows)+j))*(rows*columns))] = outputValues[i][j];
        end
    end
    
endgenerate
////


////
endmodule
