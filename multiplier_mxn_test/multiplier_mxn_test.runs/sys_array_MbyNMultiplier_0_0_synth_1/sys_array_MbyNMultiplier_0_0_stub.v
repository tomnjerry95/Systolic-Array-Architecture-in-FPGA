// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Aug 28 23:41:39 2022
// Host        : LAPTOP-3SRBJ6QE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ sys_array_MbyNMultiplier_0_0_stub.v
// Design      : sys_array_MbyNMultiplier_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "MbyNMultiplier,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(A, B, clk, rst, outputMatrix)
/* synthesis syn_black_box black_box_pad_pin="A[31:0],B[31:0],clk,rst,outputMatrix[255:0]" */;
  input [31:0]A;
  input [31:0]B;
  input clk;
  input rst;
  output [255:0]outputMatrix;
endmodule
