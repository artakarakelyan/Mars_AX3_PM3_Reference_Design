
p
Command: %s
1870*	planAhead2;
'open_checkpoint Mars_AX3_PM3_routed.dcp2default:defaultZ12-2866h px� 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.034 . Memory (MB): peak = 1074.145 ; gain = 0.0002default:defaulth px� 
W
Loading part %s157*device2$
xc7a100tcsg324-22default:defaultZ21-403h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2
00:00:012default:default2
1074.1452default:default2
0.0002default:defaultZ17-268h px� 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
12342default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
12default:defaultZ29-28h px� 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2020.12default:defaultZ1-479h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
�
�Could not create '%s' constraint because net '%s' is not directly connected to top level port. Synthesis is ignored for %s but preserved for implementation.
528*constraints2 
IBUF_LOW_PWR2default:default29
#Mars_AX3_i/Ethernet/clk_wiz/clk_in12default:default2 
IBUF_LOW_PWR2default:default8Z18-550h px� 
L
*Restoring timing data from binary archive.264*timingZ38-478h px� 
F
$Binary timing data restore complete.265*timingZ38-479h px� 
L
*Restoring constraints from binary archive.481*projectZ1-856h px� 
E
#Binary constraint restore complete.478*projectZ1-853h px� 
?
Reading XDEF placement.
206*designutilsZ20-206h px� 
D
Reading placer database...
1602*designutilsZ20-1892h px� 
=
Reading XDEF routing.
207*designutilsZ20-207h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
Read XDEF File: 2default:default2
00:00:032default:default2
00:00:032default:default2
1657.8322default:default2
25.7342default:defaultZ17-268h px� 
�
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
3.0000002default:default2
0.0000002default:defaultZ20-1924h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common20
Finished XDEF File Restore: 2default:default2
00:00:032default:default2
00:00:032default:default2
1657.8322default:default2
25.7342default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0232default:default2
1657.8322default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 513 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 8 instances
  IOBUFDS_DIFF_OUT_INTERMDISABLE => IOBUFDS_DIFF_OUT_INTERMDISABLE (IBUFDS_INTERMDISABLE_INT(x2), INV, OBUFTDS(x2)): 2 instances
  IOBUF_INTERMDISABLE => IOBUF_INTERMDISABLE (IBUF_INTERMDISABLE, OBUFT): 16 instances
  LUT6_2 => LUT6_2 (LUT5, LUT6): 78 instances
  OBUFDS => OBUFDS_DUAL_BUF (INV, OBUFDS(x2)): 1 instance 
  RAM16X1D => RAM32X1D (RAMD32(x2)): 32 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 182 instances
  RAM32X1D => RAM32X1D (RAMD32(x2)): 32 instances
  RAM64X1D => RAM64X1D (RAMD64E(x2)): 160 instances
  SRLC16E => SRL16E: 1 instance 
  SRLC32E => SRL16E: 1 instance 
2default:defaultZ1-111h px� 
�
'Checkpoint was created with %s build %s378*project2+
Vivado v2020.1 (64-bit)2default:default2
29025402default:defaultZ1-604h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
open_checkpoint: 2default:default2
00:00:242default:default2
00:00:272default:default2
1657.8322default:default2
583.6882default:defaultZ17-268h px� 
�
�The XPM instance: <%s> is part of IP: <%s>. This XPM instance will be excluded from the .mmi because updatemem is prohibited from making changes to an XPM that is part of an IP.
136*memdata2�
�Mars_AX3_i/QSPI/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I/LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I/QSPI_LOOK_UP_MODE_2_MEMORY_3.xpm_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.xpm_memory_inst/xpm_memory_base_inst2default:default2#
Mars_AX3_i/QSPI2default:defaultZ28-208h px� 
�
�The XPM instance: <%s> is part of IP: <%s>. This XPM instance will be excluded from the .mmi because updatemem is prohibited from making changes to an XPM that is part of an IP.
136*memdata2�
�Mars_AX3_i/QSPI/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.TX_FIFO_II/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst2default:default2#
Mars_AX3_i/QSPI2default:defaultZ28-208h px� 
�
�The XPM instance: <%s> is part of IP: <%s>. This XPM instance will be excluded from the .mmi because updatemem is prohibited from making changes to an XPM that is part of an IP.
136*memdata2�
�Mars_AX3_i/QSPI/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.RX_FIFO_II/gnuram_async_fifo.xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst2default:default2#
Mars_AX3_i/QSPI2default:defaultZ28-208h px� 
�
�The XPM instance: <%s> is part of IP: <%s>. This XPM instance will be excluded from the .mmi because updatemem is prohibited from making changes to an XPM that is part of an IP.
136*memdata2|
hMars_AX3_i/Ethernet/axi_ethernet/U0/eth_buf/U0/TX_INTFCE_I/TX_MEM_INTERFACE/TXD_MEM/xpm_memory_base_inst2default:default2?
+Mars_AX3_i/Ethernet/axi_ethernet/U0/eth_buf2default:defaultZ28-208h px� 
�
�The XPM instance: <%s> is part of IP: <%s>. This XPM instance will be excluded from the .mmi because updatemem is prohibited from making changes to an XPM that is part of an IP.
136*memdata2|
hMars_AX3_i/Ethernet/axi_ethernet/U0/eth_buf/U0/TX_INTFCE_I/TX_MEM_INTERFACE/TXC_MEM/xpm_memory_base_inst2default:default2?
+Mars_AX3_i/Ethernet/axi_ethernet/U0/eth_buf2default:defaultZ28-208h px� 
�
�The XPM instance: <%s> is part of IP: <%s>. This XPM instance will be excluded from the .mmi because updatemem is prohibited from making changes to an XPM that is part of an IP.
136*memdata2}
iMars_AX3_i/Ethernet/axi_ethernet/U0/eth_buf/U0/RCV_INTFCE_I/RX_DP_MEM_IF_I/I_RXS_MEM/xpm_memory_base_inst2default:default2?
+Mars_AX3_i/Ethernet/axi_ethernet/U0/eth_buf2default:defaultZ28-208h px� 
�
�The XPM instance: <%s> is part of IP: <%s>. This XPM instance will be excluded from the .mmi because updatemem is prohibited from making changes to an XPM that is part of an IP.
136*memdata2}
iMars_AX3_i/Ethernet/axi_ethernet/U0/eth_buf/U0/RCV_INTFCE_I/RX_DP_MEM_IF_I/I_RXD_MEM/xpm_memory_base_inst2default:default2?
+Mars_AX3_i/Ethernet/axi_ethernet/U0/eth_buf2default:defaultZ28-208h px� 
�
�Found XPM memory block %s with a %s property set to %s. A value of %s is required. You will not be able to use the updatemem program to update the bitstream with new data for the %s block.
119*memdata2�
�Mars_AX3_i/Ethernet/axi_ethernet/U0/eth_buf/U0/RCV_INTFCE_I/RX_AXISTREAM_IF_I/ELASTIC_FIFO/I_BASIC_SFIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst2default:default2&
P_MEMORY_PRIMITIVE2default:default2
distributed2default:default2
block2default:default2�
�Mars_AX3_i/Ethernet/axi_ethernet/U0/eth_buf/U0/RCV_INTFCE_I/RX_AXISTREAM_IF_I/ELASTIC_FIFO/I_BASIC_SFIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst2default:defaultZ28-167h px� 
�
�The XPM instance: <%s> is part of IP: <%s>. This XPM instance will be excluded from the .mmi because updatemem is prohibited from making changes to an XPM that is part of an IP.
136*memdata2�
�Mars_AX3_i/Ethernet/axi_dma/U0/I_PRMRY_DATAMOVER/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/GEN_INCLUDE_GP_SF.I_S2MM_GP_SF/I_DATA_FIFO/BLK_MEM.I_SYNC_FIFOGEN_FIFO/xpm_fifo_instance.xpm_fifo_sync_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst2default:default2/
Mars_AX3_i/Ethernet/axi_dma2default:defaultZ28-208h px� 
�
�The XPM instance: <%s> is part of IP: <%s>. This XPM instance will be excluded from the .mmi because updatemem is prohibited from making changes to an XPM that is part of an IP.
136*memdata2�
�Mars_AX3_i/Ethernet/axi_dma/U0/I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/GEN_INCLUDE_MM2S_SF.I_RD_SF/I_DATA_FIFO/BLK_MEM.I_SYNC_FIFOGEN_FIFO/xpm_fifo_instance.xpm_fifo_sync_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst2default:default2/
Mars_AX3_i/Ethernet/axi_dma2default:defaultZ28-208h px� 
�
�The XPM instance: <%s> is part of IP: <%s>. This XPM instance will be excluded from the .mmi because updatemem is prohibited from making changes to an XPM that is part of an IP.
136*memdata2�
�Mars_AX3_i/Ethernet/axi_dma/U0/GEN_SG_ENGINE.I_SG_ENGINE/I_SG_FETCH_QUEUE/GEN_QUEUE.FTCH_QUEUE_I/GEN_MM2S.CONTROL_STREAM.I_MM2S_CNTRL_STREAM/GEN_SYNC_FIFO.I_CNTRL_FIFO/xpm_fifo_instance.xpm_fifo_sync_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst2default:default2/
Mars_AX3_i/Ethernet/axi_dma2default:defaultZ28-208h px� 
l
Command: %s
53*	vivadotcl2;
'write_bitstream -force Mars_AX3_PM3.bit2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
F:/Xilinx/Vivado/2020.1/data/ip2default:defaultZ19-2313h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
{Input Buffer Connections: Input buffer %s has no loads. It is recommended to have an input buffer drive an internal load.%s*DRC2�
 "�
�Mars_AX3_i/Memory/SDRAM/u_Mars_AX3_SDRAM_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/gen_dqs_iobuf_HR.gen_dqs_iobuf[0].gen_dqs_diff.u_iobuf_dqs/IBUFDS_0	�Mars_AX3_i/Memory/SDRAM/u_Mars_AX3_SDRAM_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/gen_dqs_iobuf_HR.gen_dqs_iobuf[0].gen_dqs_diff.u_iobuf_dqs/IBUFDS_02default:default2default:default2>
 &DRC|Netlist|Instance|Required Pin|IBUF2default:default8ZBUFC-1h px� 
�
{Input Buffer Connections: Input buffer %s has no loads. It is recommended to have an input buffer drive an internal load.%s*DRC2�
 "�
�Mars_AX3_i/Memory/SDRAM/u_Mars_AX3_SDRAM_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/gen_dqs_iobuf_HR.gen_dqs_iobuf[1].gen_dqs_diff.u_iobuf_dqs/IBUFDS_0	�Mars_AX3_i/Memory/SDRAM/u_Mars_AX3_SDRAM_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/gen_dqs_iobuf_HR.gen_dqs_iobuf[1].gen_dqs_diff.u_iobuf_dqs/IBUFDS_02default:default2default:default2>
 &DRC|Netlist|Instance|Required Pin|IBUF2default:default8ZBUFC-1h px� 
�
{Input Buffer Connections: Input buffer %s has no loads. It is recommended to have an input buffer drive an internal load.%s*DRC2V
 "@
QSPI_ss_iobuf_0/IBUF	QSPI_ss_iobuf_0/IBUF2default:default2default:default2>
 &DRC|Netlist|Instance|Required Pin|IBUF2default:default8ZBUFC-1h px� 
�
�Clock output buffering: PLLE2_ADV connectivity violation. The signal %s on the %s pin of %s does not drive the same kind of BUFFER load as the other CLKOUT pins. Routing from the different buffer types will not be phase aligned.%s*DRC2�
 "�
QMars_AX3_i/Memory/SDRAM/u_Mars_AX3_SDRAM_0_mig/u_ddr3_infrastructure/pll_clk3_outQMars_AX3_i/Memory/SDRAM/u_Mars_AX3_SDRAM_0_mig/u_ddr3_infrastructure/pll_clk3_out2default:default2default:default2�
 "�
TMars_AX3_i/Memory/SDRAM/u_Mars_AX3_SDRAM_0_mig/u_ddr3_infrastructure/plle2_i/CLKOUT3TMars_AX3_i/Memory/SDRAM/u_Mars_AX3_SDRAM_0_mig/u_ddr3_infrastructure/plle2_i/CLKOUT32default:default2default:default2�
 "�
LMars_AX3_i/Memory/SDRAM/u_Mars_AX3_SDRAM_0_mig/u_ddr3_infrastructure/plle2_i	LMars_AX3_i/Memory/SDRAM/u_Mars_AX3_SDRAM_0_mig/u_ddr3_infrastructure/plle2_i2default:default2default:default2C
 +DRC|Netlist|Instance|Required Pin|PLLE2_ADV2default:default8Z	REQP-1709h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
�Mars_AX3_i/Ethernet/axi_ethernet/U0/eth_buf/U0/RCV_INTFCE_I/RX_DP_MEM_IF_I/I_RXS_MEM/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg	�Mars_AX3_i/Ethernet/axi_ethernet/U0/eth_buf/U0/RCV_INTFCE_I/RX_DP_MEM_IF_I/I_RXS_MEM/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg2default:default2default:default2�
 "�
�Mars_AX3_i/Ethernet/axi_ethernet/U0/eth_buf/U0/RCV_INTFCE_I/RX_DP_MEM_IF_I/I_RXS_MEM/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg/ENARDEN�Mars_AX3_i/Ethernet/axi_ethernet/U0/eth_buf/U0/RCV_INTFCE_I/RX_DP_MEM_IF_I/I_RXS_MEM/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg/ENARDEN2default:default2default:default2�
 "�
�Mars_AX3_i/Ethernet/axi_ethernet/U0/eth_buf/U0/RCV_INTFCE_I/RX_DP_MEM_IF_I/I_RXS_MEM/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_ENARDEN_cooolgate_en_sig_6�Mars_AX3_i/Ethernet/axi_ethernet/U0/eth_buf/U0/RCV_INTFCE_I/RX_DP_MEM_IF_I/I_RXS_MEM/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_ENARDEN_cooolgate_en_sig_62default:default2default:default2�
 "�
vMars_AX3_i/Ethernet/axi_ethernet/U0/eth_buf/U0/COMBINE_RESETS/AXI_RESET_TO_RXS_AXSTREAM/ClkB_reset_inst/async_rst4_reg	vMars_AX3_i/Ethernet/axi_ethernet/U0/eth_buf/U0/COMBINE_RESETS/AXI_RESET_TO_RXS_AXSTREAM/ClkB_reset_inst/async_rst4_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�5
`No routable loads: 45 net(s) have no routable loads. The problem bus(es) and/or net(s) are %s.%s*DRC2�4
 "�
�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i2default:default"�
�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i2default:default"�
�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i2default:default"�
�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i2default:default"�
�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i2default:default"�
�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/rstblk/rd_rst_reg[2:0]�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/rstblk/rd_rst_reg2default:default"�
�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/rstblk/rd_rst_reg[2:0]�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/rstblk/rd_rst_reg2default:default"�
�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/rstblk/rd_rst_reg[2:0]�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/rstblk/rd_rst_reg2default:default"�
�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/rstblk/rd_rst_reg[2:0]�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/rstblk/rd_rst_reg2default:default"�
�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/rstblk/rd_rst_reg[2:0]�Mars_AX3_i/Memory/interconnect_DDR/m00_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/rstblk/rd_rst_reg2default:..."/
(the first 15 of 25 listed)2default:default2default:default2=
 %DRC|Implementation|Routing|Chip Level2default:default8Z	RTSTAT-10h px� 
�
�writefirst: Synchronous clocking is detected for BRAM (%s) in SDP mode with WRITE_FIRST write-mode. This is the preferred mode for best power characteristics, however it may exhibit address collisions if the same address appears on both read and write ports resulting in unknown or corrupted read data. It is suggested to confirm via simulation that an address collision never occurs and if so it is suggested to try and avoid this situation. If address collisions cannot be avoided, the write-mode may be set to READ_FIRST which guarantees that the read data is the prior contents of the memory at the cost of additional power in the design. See the FPGA Memory Resources User Guide for additional information.%s*DRC2�
 "�
�Mars_AX3_i/Ethernet/axi_dma/U0/I_PRMRY_DATAMOVER/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/GEN_INCLUDE_GP_SF.I_S2MM_GP_SF/I_DATA_FIFO/BLK_MEM.I_SYNC_FIFOGEN_FIFO/xpm_fifo_instance.xpm_fifo_sync_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg	�Mars_AX3_i/Ethernet/axi_dma/U0/I_PRMRY_DATAMOVER/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/GEN_INCLUDE_GP_SF.I_S2MM_GP_SF/I_DATA_FIFO/BLK_MEM.I_SYNC_FIFOGEN_FIFO/xpm_fifo_instance.xpm_fifo_sync_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8ZREQP-165h px� 
�

�writefirst: Synchronous clocking is detected for BRAM (%s) in SDP mode with WRITE_FIRST write-mode. This is the preferred mode for best power characteristics, however it may exhibit address collisions if the same address appears on both read and write ports resulting in unknown or corrupted read data. It is suggested to confirm via simulation that an address collision never occurs and if so it is suggested to try and avoid this situation. If address collisions cannot be avoided, the write-mode may be set to READ_FIRST which guarantees that the read data is the prior contents of the memory at the cost of additional power in the design. See the FPGA Memory Resources User Guide for additional information.%s*DRC2�
 "�
�Mars_AX3_i/Ethernet/axi_dma/U0/I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/GEN_INCLUDE_MM2S_SF.I_RD_SF/I_DATA_FIFO/BLK_MEM.I_SYNC_FIFOGEN_FIFO/xpm_fifo_instance.xpm_fifo_sync_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg	�Mars_AX3_i/Ethernet/axi_dma/U0/I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/GEN_INCLUDE_MM2S_SF.I_RD_SF/I_DATA_FIFO/BLK_MEM.I_SYNC_FIFOGEN_FIFO/xpm_fifo_instance.xpm_fifo_sync_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8ZREQP-181h px� 
t
DRC finished with %s
1905*	planAhead26
"0 Errors, 6 Warnings, 2 Advisories2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
c
Writing bitstream %s...
11*	bitstream2&
./Mars_AX3_PM3.bit2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px� 
�
�'%s' has been successfully sent to Xilinx on %s. For additional details about this file, please refer to the Webtalk help file at %s.
186*common2�
uF:/GitHub/Mars_AX3_PM3_Reference_Design/Vivado/MA-AX3-100-2I-D8/Mars_AX3_PM3.runs/impl_1/usage_statistics_webtalk.xml2default:default2,
Sun Mar 21 10:11:09 20212default:default2I
5F:/Xilinx/Vivado/2020.1/doc/webtalk_introduction.html2default:defaultZ17-186h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
362default:default2
72default:default2
02default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:332default:default2
00:00:272default:default2
2228.7032default:default2
548.9412default:defaultZ17-268h px� 


End Record