`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2022 10:53:36
// Design Name: 
// Module Name: multiplier_acc_pipeline
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


module mac_unit(
 input [7:0] P,
    input [7:0] Q,
    output reg [15:0] A,
    input clk,
    input rst,
    output reg [7:0]P1,
    output reg [7:0]Q1
    );
    reg[15:0]A1[7:0];
    reg [7:0]Po;
    reg [7:0]Qo;

    reg [15:0] x[7:0];
    reg [7:0] y[7:0];
    reg [3:0] i  = 0;
//    reg start1 = 0;
    

    always @(posedge (clk)) begin
    
        if(rst == 0) begin
                x[0] <= P;
                y[0] <= Q;
                Po<=P;
                Qo<=Q;
                P1<=Po;
                Q1<=Qo;
                                
                if(y[0][0] == 1) begin
                    A1[0] <=  x[0];
                end
                else begin 

                    A1[0] <= 0;
                end
              for(i = 1;i<8;i = i+1) begin
                                             
                        x[i] <= x[i-1]<<1;
                        y [i]<= y[i-1]>>1;
                        
                        if(y[i][0] == 1) begin
                            A1[i] <= A1[i-1] + x[i];
                        end
                        else begin
                            A1[i] <= A1[i-1];
                        end
                 end
                        A <= A1[7] + A;
////                        ready <= 1;
                 end
//            end
        
        else begin
        A <= 0;
        for( i =0;i<8;i=i+1) begin
            A1[i] <= 0;
            x[i] <= 0;
            y[i] <= 0;
            end
            P1<=0;
            Q1<=0;
            Po <= 0;
            Qo<=0;
//        y = 0;
        end
        
    end
endmodule
