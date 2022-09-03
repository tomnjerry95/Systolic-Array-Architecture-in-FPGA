`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2022 15:26:53
// Design Name: 
// Module Name: scatter
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


module scatter(
    input [255:0] InResult,
    output [31:0] OutResG1_1,
    output [31:0] OutResG1_2,
    output [31:0] OutResG2_1,
    output [31:0] OutResG2_2,
    output [31:0] OutResG3_1,
    output [31:0] OutResG3_2,
    output [31:0] OutResG4_1,
    output [31:0] OutResG4_2
    );
    wire [31:0] OutResG1_1;
    wire [31:0] OutResG1_2;
    wire [31:0] OutResG2_1;
    wire [31:0] OutResG2_2;
    wire [31:0] OutResG3_1;
    wire [31:0] OutResG3_2;
    wire [31:0] OutResG4_1;
    
    assign OutResG1_1 = InResult[31:0];
    assign OutResG1_2 = InResult[63:32];
    assign OutResG2_1 = InResult[95:64];
    assign OutResG2_2 = InResult[127:96];
    assign OutResG3_1 = InResult[159:128];
    assign OutResG3_2 = InResult[191:160];
    assign OutResG4_1 = InResult[223:192];
    assign OutResG4_2 = InResult[255:224];

endmodule
