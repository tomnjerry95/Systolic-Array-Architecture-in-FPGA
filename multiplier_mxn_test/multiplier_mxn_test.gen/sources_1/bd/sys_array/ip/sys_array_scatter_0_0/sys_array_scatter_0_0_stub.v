// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Aug 28 21:16:37 2022
// Host        : LAPTOP-3SRBJ6QE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Jerin/Vivado2020/multiplier_mxn_test/multiplier_mxn_test.gen/sources_1/bd/sys_array/ip/sys_array_scatter_0_0/sys_array_scatter_0_0_stub.v
// Design      : sys_array_scatter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "scatter,Vivado 2020.2" *)
module sys_array_scatter_0_0(InResult, OutResG1_1, OutResG1_2, OutResG2_1, 
  OutResG2_2, OutResG3_1, OutResG3_2, OutResG4_1, OutResG4_2)
/* synthesis syn_black_box black_box_pad_pin="InResult[255:0],OutResG1_1[31:0],OutResG1_2[31:0],OutResG2_1[31:0],OutResG2_2[31:0],OutResG3_1[31:0],OutResG3_2[31:0],OutResG4_1[31:0],OutResG4_2[31:0]" */;
  input [255:0]InResult;
  output [31:0]OutResG1_1;
  output [31:0]OutResG1_2;
  output [31:0]OutResG2_1;
  output [31:0]OutResG2_2;
  output [31:0]OutResG3_1;
  output [31:0]OutResG3_2;
  output [31:0]OutResG4_1;
  output [31:0]OutResG4_2;
endmodule
