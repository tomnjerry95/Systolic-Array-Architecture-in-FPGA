-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Aug 28 23:41:40 2022
-- Host        : LAPTOP-3SRBJ6QE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Jerin/Vivado2020/multiplier_mxn_test/multiplier_mxn_test.gen/sources_1/bd/sys_array/ip/sys_array_MbyNMultiplier_0_0/sys_array_MbyNMultiplier_0_0_stub.vhdl
-- Design      : sys_array_MbyNMultiplier_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sys_array_MbyNMultiplier_0_0 is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    outputMatrix : out STD_LOGIC_VECTOR ( 255 downto 0 )
  );

end sys_array_MbyNMultiplier_0_0;

architecture stub of sys_array_MbyNMultiplier_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[31:0],B[31:0],clk,rst,outputMatrix[255:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "MbyNMultiplier,Vivado 2020.2";
begin
end;
