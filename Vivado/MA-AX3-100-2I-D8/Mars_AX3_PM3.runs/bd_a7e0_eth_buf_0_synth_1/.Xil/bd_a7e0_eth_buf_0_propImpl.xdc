set_property SRC_FILE_INFO {cfile:f:/GitHub/Mars_AX3_PM3_Reference_Design/Vivado/MA-AX3-100-2I-D8/Mars_AX3_PM3.srcs/sources_1/bd/Mars_AX3/ip/Mars_AX3_axi_ethernet_0/bd_0/ip/ip_0/synth/bd_a7e0_eth_buf_0.xdc rfile:../../../Mars_AX3_PM3.srcs/sources_1/bd/Mars_AX3/ip/Mars_AX3_axi_ethernet_0/bd_0/ip/ip_0/synth/bd_a7e0_eth_buf_0.xdc id:1 order:LATE scoped_inst:U0} [current_design]
set_property SRC_FILE_INFO {cfile:F:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl rfile:../../../../../../../Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl id:2 order:LATE scoped_inst:U0/RCV_INTFCE_I/RX_DP_MEM_IF_I/I_RXD_MEM unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:F:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl rfile:../../../../../../../Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl id:3 order:LATE scoped_inst:U0/TX_INTFCE_I/TX_MEM_INTERFACE/TXC_MEM unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:F:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl rfile:../../../../../../../Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl id:4 order:LATE scoped_inst:U0/RCV_INTFCE_I/RX_DP_MEM_IF_I/I_RXS_MEM unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:F:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl rfile:../../../../../../../Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl id:5 order:LATE scoped_inst:U0/TX_INTFCE_I/TX_MEM_INTERFACE/TXD_MEM unmanaged:yes} [current_design]
current_instance U0
set_property src_info {type:SCOPED_XDC file:1 line:46 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay  -from [get_cells {*TX_PAUSE_FRAME_CROSS_I/clk_a2b_bus_reg[*]}]   -to [get_cells  -hier -regexp {.*TX_PAUSE_FRAME_CROSS_I.*ClkBAxiEthBaEClkCrsBusOut_reg.*} -filter {IS_SEQUENTIAL=="1"}] 8 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:64 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -of [all_fanin -flat [get_pins -hier -regexp {.*/ClkBAxiEthBClkCrsBusOut_reg.*D}]] -filter {IS_SEQUENTIAL=="1" && NAME !~ "*ClkBAxiEthBClkCrsBusOut*"}] -to [get_pins -hier -regexp {.*/ClkBAxiEthBClkCrsBusOut_reg.*D}] 8 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:93 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {*RCV_INTFCE_I/RX_AXISTREAM_IF_I/rxs_mem_last_read_out_ptr_gray_d1_reg[*]}] -to [get_cells {*RCV_INTFCE_I/NO_INCLUDE_RX_VLAN.RX_EMAC_IF_I/SYNC_RXS_LAST_READ_GRAY_PROCESS[*].SYNC_RXS_LAST_READ_GRAY/data_sync0_i}]  8 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:94 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {*RCV_INTFCE_I/RX_AXISTREAM_IF_I/rxd_mem_last_read_out_ptr_gray_d1_reg[*]}] -to [get_cells {*RCV_INTFCE_I/NO_INCLUDE_RX_VLAN.RX_EMAC_IF_I/SYNC_RXD_LAST_READ_GRAY_PROCESS[*].SYNC_RXD_LAST_READ_GRAY/data_sync0_i}]  8 -datapath_only
current_instance
current_instance U0/RCV_INTFCE_I/RX_DP_MEM_IF_I/I_RXD_MEM
set_property src_info {type:SCOPED_XDC file:2 line:3 export:INPUT save:NONE read:READ} [current_design]
set my_var [get_property dram_emb_xdc [get_cells -hier  -filter {PRIMITIVE_SUBGROUP==LUTRAM || PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==uram || PRIMITIVE_SUBGROUP==BRAM}]]
current_instance
current_instance U0/TX_INTFCE_I/TX_MEM_INTERFACE/TXC_MEM
set_property src_info {type:SCOPED_XDC file:3 line:3 export:INPUT save:NONE read:READ} [current_design]
set my_var [get_property dram_emb_xdc [get_cells -hier  -filter {PRIMITIVE_SUBGROUP==LUTRAM || PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==uram || PRIMITIVE_SUBGROUP==BRAM}]]
current_instance
current_instance U0/RCV_INTFCE_I/RX_DP_MEM_IF_I/I_RXS_MEM
set_property src_info {type:SCOPED_XDC file:4 line:3 export:INPUT save:NONE read:READ} [current_design]
set my_var [get_property dram_emb_xdc [get_cells -hier  -filter {PRIMITIVE_SUBGROUP==LUTRAM || PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==uram || PRIMITIVE_SUBGROUP==BRAM}]]
current_instance
current_instance U0/TX_INTFCE_I/TX_MEM_INTERFACE/TXD_MEM
set_property src_info {type:SCOPED_XDC file:5 line:3 export:INPUT save:NONE read:READ} [current_design]
set my_var [get_property dram_emb_xdc [get_cells -hier  -filter {PRIMITIVE_SUBGROUP==LUTRAM || PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==uram || PRIMITIVE_SUBGROUP==BRAM}]]
