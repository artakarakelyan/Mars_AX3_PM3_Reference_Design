# ----------------------------------------------------------------------------------
# Copyright (c) 2021 by Enclustra GmbH, Switzerland.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this hardware, software, firmware, and associated documentation files (the
# "Product"), to deal in the Product without restriction, including without
# limitation the rights to use, copy, modify, merge, publish, distribute,
# sublicense, and/or sell copies of the Product, and to permit persons to whom the
# Product is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Product.
#
# THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
# PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
# ----------------------------------------------------------------------------------

create_bd_design $module


create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze microblaze_CPU
set_property -dict [ list \
  CONFIG.C_D_AXI {1} \
  CONFIG.C_USE_ICACHE {1} \
  CONFIG.C_USE_DCACHE {1} \
  CONFIG.C_DCACHE_ADDR_TAG {17} \
] [get_bd_cells microblaze_CPU]

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer axi_timer

create_bd_cell -type ip -vlnv xilinx.com:ip:xadc_wiz xadc_wiz_0
set_property -dict [ list \
  CONFIG.ENABLE_TEMP_BUS {true} \
] [get_bd_cells xadc_wiz_0]

create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat microblaze_xlconcat
set_property -dict [ list \
  CONFIG.NUM_PORTS {6} \
] [get_bd_cells microblaze_xlconcat]

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect interconnect_CPU
set_property -dict [ list \
  CONFIG.NUM_MI {9} \
  CONFIG.NUM_SI {1} \
] [get_bd_cells interconnect_CPU]

create_bd_cell -type ip -vlnv xilinx.com:ip:mdm mdm_0
set_property -dict [ list \
  CONFIG.C_USE_UART {1} \
] [get_bd_cells mdm_0]

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc microblaze_axi_intc
set_property -dict [ list \
  CONFIG.C_HAS_FAST {1} \
  CONFIG.C_DISABLE_SYNCHRONIZERS {1} \
] [get_bd_cells microblaze_axi_intc]
set_property -dict [ list \
  CONFIG.CHANNEL_ENABLE_VP_VN {false} \
] [get_bd_cells xadc_wiz_0]

if { $ETH == "ETH"} {
  set_property -dict [ list \
    CONFIG.NUM_PORTS {10} \
  ] [get_bd_cells microblaze_xlconcat]
}

if { $ETH == "ETH"} {
  set_property -dict [ list \
    CONFIG.NUM_MI {11} \
    CONFIG.NUM_SI {1} \
  ] [get_bd_cells interconnect_CPU]
}

if { $ETH == "ETH"} {
  create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma axi_dma
  set_property -dict [ list \
    CONFIG.c_sg_length_width {16} \
    CONFIG.c_include_mm2s_dre {1} \
    CONFIG.c_sg_use_stsapp_length {1} \
    CONFIG.c_include_s2mm_dre {1} \
  ] [get_bd_cells axi_dma]
}

if { $ETH == "ETH"} {
  create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz clk_wiz
  set_property -dict [ list \
    CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {125.000} \
    CONFIG.USE_LOCKED {false} \
    CONFIG.MMCM_CLKOUT0_DIVIDE_F {8.000} \
    CONFIG.CLKOUT1_JITTER {125.247} \
  ] [get_bd_cells clk_wiz]
}

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic IIC

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio LEDs
set_property -dict [ list \
  CONFIG.C_GPIO_WIDTH {4} \
  CONFIG.C_ALL_OUTPUTS {1} \
  CONFIG.C_DOUT_DEFAULT {0x00000FF} \
] [get_bd_cells LEDs]

create_bd_cell -type ip -vlnv xilinx.com:ip:mig_7series SDRAM

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect interconnect_DDR
set_property -dict [ list \
  CONFIG.NUM_MI {1} \
  CONFIG.NUM_SI {2} \
] [get_bd_cells interconnect_DDR]

create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset rst_mig_7series_0_100M_0
set_property -dict [ list \
  CONFIG.C_AUX_RESET_HIGH {0} \
] [get_bd_cells rst_mig_7series_0_100M_0]

create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset rst_mig_7series_0_100M_1
set_property -dict [ list \
  CONFIG.C_AUX_RESET_HIGH {0} \
] [get_bd_cells rst_mig_7series_0_100M_1]
set str_mig_folder [get_property IP_DIR [ get_ips [ get_property CONFIG.Component_Name [get_bd_cells SDRAM] ] ] ]
set str_mig_file_name mig.prj
set str_mig_file_path ${str_mig_folder}/${str_mig_file_name}
file copy ./src/$str_mig_file_name $str_mig_file_path
set_property -dict [ list \
  CONFIG.XML_INPUT_FILE {mig.prj} \
] [get_bd_cells SDRAM]

if { $ETH == "ETH"} {
  set_property -dict [ list \
    CONFIG.NUM_SI {5} \
  ] [get_bd_cells interconnect_DDR]
}

if { $ETH == "ETH"} {
  create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernet axi_ethernet
  set_property -dict [ list \
    CONFIG.PHY_TYPE {RGMII} \
  ] [get_bd_cells axi_ethernet]
}

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi QSPI
set_property -dict [ list \
  CONFIG.C_SCK_RATIO {2} \
  CONFIG.C_SPI_MODE {2} \
  CONFIG.C_SPI_MEMORY {3} \
  CONFIG.C_FIFO_DEPTH {256} \
  CONFIG.C_TYPE_OF_AXI4_INTERFACE {1} \
] [get_bd_cells QSPI]

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite UART
set_property -dict [ list \
  CONFIG.C_BAUDRATE {115200} \
] [get_bd_cells UART]

create_bd_cell -type hier CPU
move_bd_cells [get_bd_cells CPU] [get_bd_cells microblaze_CPU]
move_bd_cells [get_bd_cells CPU] [get_bd_cells interconnect_CPU]
move_bd_cells [get_bd_cells CPU] [get_bd_cells mdm_0]
move_bd_cells [get_bd_cells CPU] [get_bd_cells microblaze_axi_intc]
create_bd_pin -dir I -type clk /CPU/Clk
connect_bd_net [get_bd_pins CPU/Clk] [get_bd_pins CPU/microblaze_CPU/Clk]
connect_bd_net [get_bd_pins CPU/Clk] [get_bd_pins CPU/interconnect_CPU/ACLK]
connect_bd_net [get_bd_pins CPU/Clk] [get_bd_pins CPU/interconnect_CPU/S00_ACLK]
connect_bd_net [get_bd_pins CPU/Clk] [get_bd_pins CPU/interconnect_CPU/M00_ACLK]
connect_bd_net [get_bd_pins CPU/Clk] [get_bd_pins CPU/interconnect_CPU/M01_ACLK]
connect_bd_net [get_bd_pins CPU/Clk] [get_bd_pins CPU/interconnect_CPU/M02_ACLK]
connect_bd_net [get_bd_pins CPU/Clk] [get_bd_pins CPU/interconnect_CPU/M03_ACLK]
connect_bd_net [get_bd_pins CPU/Clk] [get_bd_pins CPU/interconnect_CPU/M04_ACLK]
connect_bd_net [get_bd_pins CPU/Clk] [get_bd_pins CPU/interconnect_CPU/M05_ACLK]
connect_bd_net [get_bd_pins CPU/Clk] [get_bd_pins CPU/interconnect_CPU/M06_ACLK]
connect_bd_net [get_bd_pins CPU/Clk] [get_bd_pins CPU/interconnect_CPU/M07_ACLK]
connect_bd_net [get_bd_pins CPU/Clk] [get_bd_pins CPU/interconnect_CPU/M08_ACLK]
create_bd_pin -dir I -type rst /CPU/S_AXI_ARESETN
connect_bd_net [get_bd_pins CPU/S_AXI_ARESETN] [get_bd_pins CPU/mdm_0/S_AXI_ARESETN]
connect_bd_net [get_bd_pins CPU/S_AXI_ARESETN] [get_bd_pins CPU/microblaze_axi_intc/s_axi_aresetn]
connect_bd_net [get_bd_pins CPU/S_AXI_ARESETN] [get_bd_pins CPU/interconnect_CPU/ARESETN]
connect_bd_net [get_bd_pins CPU/S_AXI_ARESETN] [get_bd_pins CPU/interconnect_CPU/S00_ARESETN]
connect_bd_net [get_bd_pins CPU/S_AXI_ARESETN] [get_bd_pins CPU/interconnect_CPU/M00_ARESETN]
connect_bd_net [get_bd_pins CPU/S_AXI_ARESETN] [get_bd_pins CPU/interconnect_CPU/M01_ARESETN]
connect_bd_net [get_bd_pins CPU/S_AXI_ARESETN] [get_bd_pins CPU/interconnect_CPU/M02_ARESETN]
connect_bd_net [get_bd_pins CPU/S_AXI_ARESETN] [get_bd_pins CPU/interconnect_CPU/M03_ARESETN]
connect_bd_net [get_bd_pins CPU/S_AXI_ARESETN] [get_bd_pins CPU/interconnect_CPU/M04_ARESETN]
connect_bd_net [get_bd_pins CPU/S_AXI_ARESETN] [get_bd_pins CPU/interconnect_CPU/M05_ARESETN]
connect_bd_net [get_bd_pins CPU/S_AXI_ARESETN] [get_bd_pins CPU/interconnect_CPU/M06_ARESETN]
connect_bd_net [get_bd_pins CPU/S_AXI_ARESETN] [get_bd_pins CPU/interconnect_CPU/M07_ARESETN]
connect_bd_net [get_bd_pins CPU/S_AXI_ARESETN] [get_bd_pins CPU/interconnect_CPU/M08_ARESETN]
connect_bd_intf_net [get_bd_intf_pins CPU/mdm_0/S_AXI] [get_bd_intf_pins CPU/interconnect_CPU/M00_AXI]
connect_bd_intf_net [get_bd_intf_pins CPU/microblaze_CPU/M_AXI_DP] [get_bd_intf_pins CPU/interconnect_CPU/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins CPU/mdm_0/MBDEBUG_0] [get_bd_intf_pins CPU/microblaze_CPU/DEBUG]
connect_bd_net [get_bd_pins CPU/mdm_0/S_AXI_ACLK] [get_bd_pins CPU/microblaze_CPU/Clk]
connect_bd_intf_net [get_bd_intf_pins CPU/microblaze_axi_intc/s_axi] [get_bd_intf_pins CPU/interconnect_CPU/M01_AXI] 
connect_bd_intf_net [get_bd_intf_pins CPU/microblaze_axi_intc/interrupt] [get_bd_intf_pins CPU/microblaze_CPU/INTERRUPT]
connect_bd_net [get_bd_pins CPU/microblaze_axi_intc/processor_clk] [get_bd_pins CPU/microblaze_CPU/Clk]
connect_bd_net [get_bd_pins CPU/microblaze_axi_intc/s_axi_aclk] [get_bd_pins CPU/microblaze_CPU/Clk]
connect_bd_net [get_bd_pins CPU/microblaze_axi_intc/processor_rst] [get_bd_pins CPU/microblaze_CPU/Reset]
create_bd_cell -type hier CPU/microblaze_local_memory
create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 CPU/microblaze_local_memory/dlmb_v10
create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 CPU/microblaze_local_memory/ilmb_v10
create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 CPU/microblaze_local_memory/dlmb_bram_if_cntlr
create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 CPU/microblaze_local_memory/ilmb_bram_if_cntlr
create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 CPU/microblaze_local_memory/lmb_bram
set_property -dict [list CONFIG.Memory_Type {True_Dual_Port_RAM} CONFIG.Enable_B {Use_ENB_Pin} CONFIG.Use_RSTB_Pin {true} CONFIG.Port_B_Clock {100} CONFIG.Port_B_Write_Rate {50} CONFIG.Port_B_Enable_Rate {100}] [get_bd_cells CPU/microblaze_local_memory/lmb_bram]
connect_bd_intf_net [get_bd_intf_pins CPU/microblaze_local_memory/dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins CPU/microblaze_local_memory/lmb_bram/BRAM_PORTA]
connect_bd_intf_net [get_bd_intf_pins CPU/microblaze_local_memory/ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins CPU/microblaze_local_memory/lmb_bram/BRAM_PORTB]
connect_bd_intf_net [get_bd_intf_pins CPU/microblaze_local_memory/dlmb_v10/LMB_Sl_0] [get_bd_intf_pins CPU/microblaze_local_memory/dlmb_bram_if_cntlr/SLMB]
connect_bd_intf_net [get_bd_intf_pins CPU/microblaze_local_memory/ilmb_v10/LMB_Sl_0] [get_bd_intf_pins CPU/microblaze_local_memory/ilmb_bram_if_cntlr/SLMB]
connect_bd_net [get_bd_pins CPU/microblaze_local_memory/ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins CPU/microblaze_local_memory/dlmb_bram_if_cntlr/LMB_Rst]
connect_bd_net [get_bd_pins CPU/microblaze_local_memory/ilmb_v10/SYS_Rst] [get_bd_pins CPU/microblaze_local_memory/dlmb_v10/SYS_Rst]
connect_bd_net [get_bd_pins CPU/microblaze_local_memory/dlmb_v10/SYS_Rst] [get_bd_pins CPU/microblaze_local_memory/ilmb_bram_if_cntlr/LMB_Rst]
connect_bd_net [get_bd_pins CPU/microblaze_local_memory/dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins CPU/microblaze_local_memory/ilmb_bram_if_cntlr/LMB_Clk]
connect_bd_net [get_bd_pins CPU/microblaze_local_memory/dlmb_v10/LMB_Clk] [get_bd_pins CPU/microblaze_local_memory/dlmb_bram_if_cntlr/LMB_Clk]
connect_bd_net [get_bd_pins CPU/microblaze_local_memory/ilmb_v10/LMB_Clk] [get_bd_pins CPU/microblaze_local_memory/dlmb_bram_if_cntlr/LMB_Clk]
connect_bd_intf_net [get_bd_intf_pins CPU/microblaze_CPU/DLMB] [get_bd_intf_pins CPU/microblaze_local_memory/dlmb_v10/LMB_M]
connect_bd_intf_net [get_bd_intf_pins CPU/microblaze_CPU/ILMB] [get_bd_intf_pins CPU/microblaze_local_memory/ilmb_v10/LMB_M]
connect_bd_net [get_bd_pins CPU/microblaze_CPU/Clk] [get_bd_pins CPU/microblaze_local_memory/dlmb_v10/LMB_Clk]
connect_bd_net [get_bd_pins microblaze_xlconcat/dout] [get_bd_pins CPU/microblaze_axi_intc/intr]
connect_bd_net [get_bd_pins microblaze_xlconcat/In0] [get_bd_pins CPU/mdm_0/Interrupt]
connect_bd_net [get_bd_pins microblaze_xlconcat/In1] [get_bd_pins axi_timer/interrupt]
connect_bd_net [get_bd_pins microblaze_xlconcat/In2] [get_bd_pins UART/interrupt]
connect_bd_net [get_bd_pins microblaze_xlconcat/In3] [get_bd_pins QSPI/ip2intc_irpt]
connect_bd_net [get_bd_pins microblaze_xlconcat/In4] [get_bd_pins IIC/iic2intc_irpt] 
connect_bd_net [get_bd_pins microblaze_xlconcat/In5] [get_bd_pins xadc_wiz_0/ip2intc_irpt]
connect_bd_intf_net [get_bd_intf_pins axi_timer/S_AXI] [get_bd_intf_pins CPU/interconnect_CPU/M04_AXI]
connect_bd_net [get_bd_pins axi_timer/s_axi_aclk] [get_bd_pins CPU/Clk]
connect_bd_net [get_bd_pins axi_timer/s_axi_aresetn] [get_bd_pins CPU/S_AXI_ARESETN]
connect_bd_intf_net [get_bd_intf_pins xadc_wiz_0/s_axi_lite] [get_bd_intf_pins CPU/interconnect_CPU/M07_AXI]
connect_bd_net [get_bd_pins xadc_wiz_0/s_axi_aclk] [get_bd_pins CPU/Clk]
connect_bd_net [get_bd_pins xadc_wiz_0/s_axi_aresetn] [get_bd_pins CPU/S_AXI_ARESETN]
set IIC [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 IIC ]
connect_bd_intf_net [get_bd_intf_ports IIC] [get_bd_intf_pins IIC/IIC]
connect_bd_intf_net [get_bd_intf_pins IIC/S_AXI] [get_bd_intf_pins CPU/interconnect_CPU/M05_AXI]
connect_bd_net [get_bd_pins IIC/s_axi_aclk] [get_bd_pins CPU/Clk]
connect_bd_net [get_bd_pins IIC/s_axi_aresetn] [get_bd_pins CPU/S_AXI_ARESETN]
connect_bd_intf_net [get_bd_intf_pins LEDs/S_AXI] [get_bd_intf_pins CPU/interconnect_CPU/M02_AXI]
connect_bd_net [get_bd_pins LEDs/s_axi_aclk] [get_bd_pins CPU/Clk]
connect_bd_net [get_bd_pins LEDs/s_axi_aresetn] [get_bd_pins CPU/S_AXI_ARESETN]
create_bd_cell -type hier Memory
move_bd_cells [get_bd_cells Memory] [get_bd_cells SDRAM]
move_bd_cells [get_bd_cells Memory] [get_bd_cells interconnect_DDR]
move_bd_cells [get_bd_cells Memory] [get_bd_cells rst_mig_7series_0_100M_0]
move_bd_cells [get_bd_cells Memory] [get_bd_cells rst_mig_7series_0_100M_1]
create_bd_pin -dir O -type clk Memory/CLK50
create_bd_pin -dir O -type clk Memory/CLK100
create_bd_pin -dir O -type clk Memory/CLK200
connect_bd_net [get_bd_pins Memory/CLK50] [get_bd_pins Memory/SDRAM/ui_addn_clk_0]
connect_bd_net [get_bd_pins Memory/CLK100] [get_bd_pins Memory/SDRAM/ui_addn_clk_1]
connect_bd_net [get_bd_pins Memory/CLK200] [get_bd_pins Memory/SDRAM/ui_addn_clk_2]
create_bd_port -dir O -type clk CLK50
create_bd_port -dir O -type clk CLK100
create_bd_port -dir O -type clk CLK200
connect_bd_net [get_bd_pins Memory/CLK50] [get_bd_ports CLK50]
connect_bd_net [get_bd_pins Memory/CLK100] [get_bd_ports CLK100]
connect_bd_net [get_bd_pins Memory/CLK200] [get_bd_ports CLK200]
connect_bd_intf_net [get_bd_intf_pins Memory/interconnect_DDR/M00_AXI] [get_bd_intf_pins Memory/SDRAM/S_AXI]
connect_bd_net [get_bd_pins Memory/SDRAM/ui_clk] [get_bd_pins Memory/interconnect_DDR/M00_ACLK]
connect_bd_net [get_bd_pins Memory/CLK100] [get_bd_pins Memory/interconnect_DDR/ACLK]
connect_bd_net [get_bd_pins Memory/CLK100] [get_bd_pins Memory/interconnect_DDR/S00_ACLK]
connect_bd_net [get_bd_pins Memory/CLK100] [get_bd_pins Memory/interconnect_DDR/S01_ACLK]
connect_bd_net [get_bd_pins Memory/CLK100] [get_bd_pins LEDs/s_axi_aclk]
connect_bd_net [get_bd_pins Memory/CLK100] [get_bd_pins QSPI/ext_spi_clk]
connect_bd_net [get_bd_pins Memory/SDRAM/device_temp_i] [get_bd_pins xadc_wiz_0/temp_out]
create_bd_port -dir I -type clk SYS_CLK
connect_bd_net [get_bd_ports SYS_CLK] [get_bd_pins Memory/SDRAM/sys_clk_i]
connect_bd_net [get_bd_pins Memory/SDRAM/ui_addn_clk_2] [get_bd_pins Memory/SDRAM/clk_ref_i]
create_bd_port -dir I -type rst SYS_RST_N
connect_bd_net [get_bd_ports SYS_RST_N] [get_bd_pins Memory/SDRAM/sys_rst]
set DDR3 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR3 ]
connect_bd_intf_net [get_bd_intf_ports DDR3] [get_bd_intf_pins Memory/SDRAM/DDR3]
connect_bd_intf_net [get_bd_intf_pins CPU/microblaze_CPU/M_AXI_DC] [get_bd_intf_pins Memory/interconnect_DDR/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins CPU/microblaze_CPU/M_AXI_IC] [get_bd_intf_pins Memory/interconnect_DDR/S01_AXI]
connect_bd_net [get_bd_pins Memory/rst_mig_7series_0_100M_0/slowest_sync_clk] [get_bd_pins Memory/SDRAM/ui_addn_clk_1]
connect_bd_net [get_bd_pins Memory/rst_mig_7series_0_100M_0/ext_reset_in] [get_bd_pins Memory/SDRAM/ui_clk_sync_rst]
connect_bd_net [get_bd_pins Memory/rst_mig_7series_0_100M_0/dcm_locked] [get_bd_pins Memory/SDRAM/mmcm_locked]
connect_bd_net [get_bd_pins Memory/rst_mig_7series_0_100M_0/mb_debug_sys_rst] [get_bd_pins CPU/mdm_0/Debug_SYS_Rst]
connect_bd_net [get_bd_pins Memory/rst_mig_7series_0_100M_0/peripheral_aresetn] [get_bd_pins CPU/interconnect_CPU/ARESETN]
connect_bd_net [get_bd_pins Memory/rst_mig_7series_0_100M_0/bus_struct_reset] [get_bd_pins CPU/microblaze_local_memory/ilmb_bram_if_cntlr/LMB_Rst]
connect_bd_net [get_bd_pins Memory/rst_mig_7series_0_100M_0/mb_reset] [get_bd_pins CPU/microblaze_CPU/Reset]
connect_bd_net [get_bd_pins Memory/rst_mig_7series_0_100M_1/peripheral_aresetn] [get_bd_pins Memory/SDRAM/aresetn]
connect_bd_net [get_bd_pins Memory/rst_mig_7series_0_100M_1/peripheral_aresetn] [get_bd_pins Memory/interconnect_DDR/ARESETN]
connect_bd_net [get_bd_pins Memory/rst_mig_7series_0_100M_1/interconnect_aresetn] [get_bd_pins Memory/interconnect_DDR/M00_ARESETN]
connect_bd_net [get_bd_pins Memory/rst_mig_7series_0_100M_1/interconnect_aresetn] [get_bd_pins Memory/interconnect_DDR/S00_ARESETN]
connect_bd_net [get_bd_pins Memory/rst_mig_7series_0_100M_1/interconnect_aresetn] [get_bd_pins Memory/interconnect_DDR/S01_ARESETN]
connect_bd_net [get_bd_pins Memory/rst_mig_7series_0_100M_1/dcm_locked] [get_bd_pins Memory/SDRAM/mmcm_locked]
connect_bd_net [get_bd_pins Memory/rst_mig_7series_0_100M_1/ext_reset_in] [get_bd_pins Memory/SDRAM/ui_clk_sync_rst]
connect_bd_net [get_bd_pins Memory/rst_mig_7series_0_100M_1/slowest_sync_clk] [get_bd_pins Memory/SDRAM/ui_clk]
set_property generic DDR3_ADDR_WIDTH=14 [current_fileset]
create_bd_port -dir O MDIO_mdc
create_bd_port -dir I MDIO_mdio_i
create_bd_port -dir O MDIO_mdio_o
create_bd_port -dir O MDIO_mdio_t
create_bd_port -dir I -from 3 -to 0 RGMII_rd
create_bd_port -dir I RGMII_rx_ctl
create_bd_port -dir I RGMII_rxc
create_bd_port -dir O -from 3 -to 0 RGMII_td
create_bd_port -dir O RGMII_tx_ctl
create_bd_port -dir O RGMII_txc
create_bd_port -dir O ETH_RST_N

if { $ETH == "ETH"} {
  delete_bd_objs [get_bd_ports MDIO_mdc]
  delete_bd_objs [get_bd_ports MDIO_mdio_i]
  delete_bd_objs [get_bd_ports MDIO_mdio_o]
  delete_bd_objs [get_bd_ports MDIO_mdio_t]
  delete_bd_objs [get_bd_ports RGMII_rd]
  delete_bd_objs [get_bd_ports RGMII_rx_ctl]
  delete_bd_objs [get_bd_ports RGMII_rxc]
  delete_bd_objs [get_bd_ports RGMII_td]
  delete_bd_objs [get_bd_ports RGMII_tx_ctl]
  delete_bd_objs [get_bd_ports RGMII_txc]
  delete_bd_objs [get_bd_ports ETH_RST_N]
  create_bd_cell -type hier Ethernet
  move_bd_cells [get_bd_cells Ethernet] [get_bd_cells axi_ethernet]
  move_bd_cells [get_bd_cells Ethernet] [get_bd_cells clk_wiz]
  move_bd_cells [get_bd_cells Ethernet] [get_bd_cells axi_dma]
  connect_bd_net [get_bd_pins Ethernet/clk_wiz/clk_out1] [get_bd_pins Ethernet/axi_ethernet/gtx_clk]
  connect_bd_net [get_bd_pins Ethernet/clk_wiz/clk_in1] [get_bd_pins Ethernet/axi_ethernet/s_axi_lite_clk]
  connect_bd_net [get_bd_pins Ethernet/clk_wiz/clk_in1] [get_bd_pins Ethernet/axi_ethernet/axis_clk]
  connect_bd_net [get_bd_pins Ethernet/clk_wiz/clk_in1] [get_bd_pins Ethernet/axi_dma/s_axi_lite_aclk]
  connect_bd_net [get_bd_pins Ethernet/clk_wiz/clk_in1] [get_bd_pins Ethernet/axi_dma/m_axi_sg_aclk]
  connect_bd_net [get_bd_pins Ethernet/clk_wiz/clk_in1] [get_bd_pins Ethernet/axi_dma/m_axi_mm2s_aclk]
  connect_bd_net [get_bd_pins Ethernet/clk_wiz/clk_in1] [get_bd_pins Ethernet/axi_dma/m_axi_s2mm_aclk]
  connect_bd_net [get_bd_pins Ethernet/clk_wiz/clk_in1] [get_bd_pins /Memory/CLK100]
  connect_bd_net [get_bd_pins Ethernet/clk_wiz/reset] [get_bd_pins Memory/bus_struct_reset]
  connect_bd_net [get_bd_pins Ethernet/axi_ethernet/ref_clk] [get_bd_pins /Memory/CLK200]
  connect_bd_net [get_bd_pins Ethernet/axi_ethernet/axi_txd_arstn] [get_bd_pins Ethernet/axi_dma/mm2s_prmry_reset_out_n]
  connect_bd_net [get_bd_pins Ethernet/axi_ethernet/axi_txc_arstn] [get_bd_pins Ethernet/axi_dma/mm2s_cntrl_reset_out_n]
  connect_bd_net [get_bd_pins Ethernet/axi_ethernet/axi_rxd_arstn] [get_bd_pins Ethernet/axi_dma/s2mm_prmry_reset_out_n]
  connect_bd_net [get_bd_pins Ethernet/axi_ethernet/axi_rxs_arstn] [get_bd_pins Ethernet/axi_dma/s2mm_sts_reset_out_n]
  connect_bd_net [get_bd_pins Ethernet/axi_ethernet/s_axi_lite_resetn] [get_bd_pins Ethernet/axi_dma/axi_resetn]
  connect_bd_net [get_bd_pins Ethernet/axi_ethernet/s_axi_lite_resetn] [get_bd_pins Memory/peripheral_aresetn]
  connect_bd_intf_net [get_bd_intf_pins Ethernet/axi_ethernet/s_axis_txc] [get_bd_intf_pins Ethernet/axi_dma/M_AXIS_CNTRL]
  connect_bd_intf_net [get_bd_intf_pins Ethernet/axi_ethernet/s_axis_txd] [get_bd_intf_pins Ethernet/axi_dma/M_AXIS_MM2S]
  connect_bd_intf_net [get_bd_intf_pins Ethernet/axi_ethernet/s_axi] [get_bd_intf_pins CPU/interconnect_CPU/M09_AXI]
  connect_bd_net [get_bd_pins CPU/S_AXI_ARESETN] [get_bd_pins CPU/interconnect_CPU/M09_ARESETN]
  connect_bd_net [get_bd_pins CPU/Clk] [get_bd_pins CPU/interconnect_CPU/M09_ACLK]
  connect_bd_intf_net [get_bd_intf_pins Ethernet/axi_ethernet/m_axis_rxd] [get_bd_intf_pins Ethernet/axi_dma/S_AXIS_S2MM]
  connect_bd_intf_net [get_bd_intf_pins Ethernet/axi_ethernet/m_axis_rxs] [get_bd_intf_pins Ethernet/axi_dma/S_AXIS_STS]
  set MDIO [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_rtl:1.0 MDIO ]
  connect_bd_intf_net [get_bd_intf_ports MDIO] [get_bd_intf_pins Ethernet/axi_ethernet/mdio]
  set RGMII [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 RGMII ]
  connect_bd_intf_net [get_bd_intf_ports RGMII] [get_bd_intf_pins Ethernet/axi_ethernet/rgmii]
  connect_bd_intf_net [get_bd_intf_pins Ethernet/axi_dma/M_AXI_SG] [get_bd_intf_pins Memory/interconnect_DDR/S02_AXI]
  connect_bd_intf_net [get_bd_intf_pins Ethernet/axi_dma/M_AXI_MM2S] [get_bd_intf_pins Memory/interconnect_DDR/S03_AXI]
  connect_bd_intf_net [get_bd_intf_pins Ethernet/axi_dma/M_AXI_S2MM] [get_bd_intf_pins Memory/interconnect_DDR/S04_AXI]
  connect_bd_net [get_bd_pins Memory/CLK100] [get_bd_pins Memory/interconnect_DDR/S02_ACLK]
  connect_bd_net [get_bd_pins Memory/CLK100] [get_bd_pins Memory/interconnect_DDR/S03_ACLK]
  connect_bd_net [get_bd_pins Memory/CLK100] [get_bd_pins Memory/interconnect_DDR/S04_ACLK]
  connect_bd_net [get_bd_pins Memory/rst_mig_7series_0_100M_1/interconnect_aresetn] [get_bd_pins Memory/interconnect_DDR/S02_ARESETN]
  connect_bd_net [get_bd_pins Memory/rst_mig_7series_0_100M_1/interconnect_aresetn] [get_bd_pins Memory/interconnect_DDR/S03_ARESETN]
  connect_bd_net [get_bd_pins Memory/rst_mig_7series_0_100M_1/interconnect_aresetn] [get_bd_pins Memory/interconnect_DDR/S04_ARESETN]
  connect_bd_intf_net [get_bd_intf_pins Ethernet/axi_dma/S_AXI_LITE] [get_bd_intf_pins CPU/interconnect_CPU/M10_AXI]
  connect_bd_net [get_bd_pins CPU/S_AXI_ARESETN] [get_bd_pins CPU/interconnect_CPU/M10_ARESETN]
  connect_bd_net [get_bd_pins CPU/Clk] [get_bd_pins CPU/interconnect_CPU/M10_ACLK]
  connect_bd_net [get_bd_pins Ethernet/axi_dma/mm2s_introut] [get_bd_pins microblaze_xlconcat/In6]
  connect_bd_net [get_bd_pins Ethernet/axi_dma/s2mm_introut] [get_bd_pins microblaze_xlconcat/In7]
  create_bd_port -dir O -type rst ETH_RST_N
  connect_bd_net [get_bd_ports ETH_RST_N] [get_bd_pins Ethernet/axi_ethernet/phy_rst_n]
  connect_bd_net [get_bd_pins Ethernet/axi_ethernet/mac_irq] [get_bd_pins microblaze_xlconcat/In8]
  connect_bd_net [get_bd_pins Ethernet/axi_ethernet/interrupt] [get_bd_pins microblaze_xlconcat/In9]
}
set QSPI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 QSPI ]
connect_bd_intf_net [get_bd_intf_ports QSPI] [get_bd_intf_pins QSPI/SPI_0]
connect_bd_intf_net [get_bd_intf_pins QSPI/AXI_FULL] [get_bd_intf_pins CPU/interconnect_CPU/M06_AXI]
connect_bd_net [get_bd_pins QSPI/s_axi4_aclk] [get_bd_pins CPU/Clk]
connect_bd_net [get_bd_pins QSPI/s_axi4_aresetn] [get_bd_pins CPU/S_AXI_ARESETN]
set UART [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 UART ]
connect_bd_intf_net [get_bd_intf_ports UART] [get_bd_intf_pins UART/UART]
connect_bd_intf_net [get_bd_intf_pins UART/S_AXI] [get_bd_intf_pins CPU/interconnect_CPU/M03_AXI]
connect_bd_net [get_bd_pins UART/s_axi_aclk] [get_bd_pins CPU/Clk]
connect_bd_net [get_bd_pins UART/s_axi_aresetn] [get_bd_pins CPU/S_AXI_ARESETN]

set LED_N [ create_bd_port -dir O -from 3 -to 0 LED_N]
connect_bd_net [get_bd_ports LED_N] [get_bd_pins LEDs/gpio_io_o]
assign_bd_address
save_bd_design
validate_bd_design
save_bd_design
