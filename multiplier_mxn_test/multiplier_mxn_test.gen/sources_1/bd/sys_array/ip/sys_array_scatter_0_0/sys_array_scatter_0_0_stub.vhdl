-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Aug 28 21:16:37 2022
-- Host        : LAPTOP-3SRBJ6QE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Jerin/Vivado2020/multiplier_mxn_test/multiplier_mxn_test.gen/sources_1/bd/sys_array/ip/sys_array_scatter_0_0/sys_array_scatter_0_0_stub.vhdl
-- Design      : sys_array_scatter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sys_array_scatter_0_0 is
  Port ( 
    InResult : in STD_LOGIC_VECTOR ( 255 downto 0 );
    OutResG1_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    OutResG1_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    OutResG2_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    OutResG2_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    OutResG3_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    OutResG3_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    OutResG4_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    OutResG4_2 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end sys_array_scatter_0_0;

architecture stub of sys_array_scatter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "InResult[255:0],OutResG1_1[31:0],OutResG1_2[31:0],OutResG2_1[31:0],OutResG2_2[31:0],OutResG3_1[31:0],OutResG3_2[31:0],OutResG4_1[31:0],OutResG4_2[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "scatter,Vivado 2020.2";
begin
end;
