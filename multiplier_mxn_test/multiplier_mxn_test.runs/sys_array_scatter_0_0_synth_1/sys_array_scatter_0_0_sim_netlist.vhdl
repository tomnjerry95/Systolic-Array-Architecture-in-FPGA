-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Aug 28 21:16:37 2022
-- Host        : LAPTOP-3SRBJ6QE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ sys_array_scatter_0_0_sim_netlist.vhdl
-- Design      : sys_array_scatter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "sys_array_scatter_0_0,scatter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "scatter,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^inresult\ : STD_LOGIC_VECTOR ( 255 downto 0 );
begin
  OutResG1_1(31 downto 0) <= \^inresult\(31 downto 0);
  OutResG1_2(31 downto 0) <= \^inresult\(63 downto 32);
  OutResG2_1(31 downto 0) <= \^inresult\(95 downto 64);
  OutResG2_2(31 downto 0) <= \^inresult\(127 downto 96);
  OutResG3_1(31 downto 0) <= \^inresult\(159 downto 128);
  OutResG3_2(31 downto 0) <= \^inresult\(191 downto 160);
  OutResG4_1(31 downto 0) <= \^inresult\(223 downto 192);
  OutResG4_2(31 downto 0) <= \^inresult\(255 downto 224);
  \^inresult\(255 downto 0) <= InResult(255 downto 0);
end STRUCTURE;
