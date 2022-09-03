set_property SRC_FILE_INFO {cfile:C:/Users/Jerin/Vivado2020/multiplier_mxn_test/multiplier_mxn_test.srcs/constrs_1/imports/pynq-z1_c/PYNQ-Z1_C.xdc rfile:../../../multiplier_mxn_test.srcs/constrs_1/imports/pynq-z1_c/PYNQ-Z1_C.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
Clock signal 200 MHz
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { sysclk }]; #IO_L13P_T2_MRCC_35 Sch=sysclk
set_property src_info {type:XDC file:1 line:9 export:INPUT save:INPUT read:READ} [current_design]
create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { sysclk }];
set_property src_info {type:XDC file:1 line:194 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN P16 [get_ports rst]
set_property src_info {type:XDC file:1 line:195 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T19 [get_ports reset_rtl]
