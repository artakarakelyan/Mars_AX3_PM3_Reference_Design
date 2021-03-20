set_property SRC_FILE_INFO {cfile:f:/GitHub/Mars_AX3_PM3_Reference_Design/Vivado/MA-AX3-100-2I-D8/Mars_AX3_PM3.srcs/sources_1/bd/Mars_AX3/ip/Mars_AX3_clk_wiz_0/Mars_AX3_clk_wiz_0.xdc rfile:../../../Mars_AX3_PM3.srcs/sources_1/bd/Mars_AX3/ip/Mars_AX3_clk_wiz_0/Mars_AX3_clk_wiz_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
