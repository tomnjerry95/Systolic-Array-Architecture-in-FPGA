# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "columns" -parent ${Page_0}
  ipgui::add_param $IPINST -name "rows" -parent ${Page_0}


}

proc update_PARAM_VALUE.columns { PARAM_VALUE.columns } {
	# Procedure called to update columns when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.columns { PARAM_VALUE.columns } {
	# Procedure called to validate columns
	return true
}

proc update_PARAM_VALUE.rows { PARAM_VALUE.rows } {
	# Procedure called to update rows when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.rows { PARAM_VALUE.rows } {
	# Procedure called to validate rows
	return true
}


proc update_MODELPARAM_VALUE.rows { MODELPARAM_VALUE.rows PARAM_VALUE.rows } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.rows}] ${MODELPARAM_VALUE.rows}
}

proc update_MODELPARAM_VALUE.columns { MODELPARAM_VALUE.columns PARAM_VALUE.columns } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.columns}] ${MODELPARAM_VALUE.columns}
}

