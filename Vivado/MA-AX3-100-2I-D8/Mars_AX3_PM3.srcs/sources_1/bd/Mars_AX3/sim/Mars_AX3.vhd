--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Sat Mar 20 20:56:44 2021
--Host        : Artak-New running 64-bit major release  (build 9200)
--Command     : generate_target Mars_AX3.bd
--Design      : Mars_AX3
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Ethernet_imp_LIDQ5M is
  port (
    ETH_RST_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    MDIO_mdc : out STD_LOGIC;
    MDIO_mdio_i : in STD_LOGIC;
    MDIO_mdio_o : out STD_LOGIC;
    MDIO_mdio_t : out STD_LOGIC;
    M_AXI_MM2S_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_MM2S_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_MM2S_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_MM2S_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_MM2S_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_MM2S_arready : in STD_LOGIC;
    M_AXI_MM2S_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_MM2S_arvalid : out STD_LOGIC;
    M_AXI_MM2S_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_MM2S_rlast : in STD_LOGIC;
    M_AXI_MM2S_rready : out STD_LOGIC;
    M_AXI_MM2S_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_MM2S_rvalid : in STD_LOGIC;
    M_AXI_S2MM_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_S2MM_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_S2MM_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_S2MM_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_S2MM_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_S2MM_awready : in STD_LOGIC;
    M_AXI_S2MM_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_S2MM_awvalid : out STD_LOGIC;
    M_AXI_S2MM_bready : out STD_LOGIC;
    M_AXI_S2MM_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_S2MM_bvalid : in STD_LOGIC;
    M_AXI_S2MM_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_S2MM_wlast : out STD_LOGIC;
    M_AXI_S2MM_wready : in STD_LOGIC;
    M_AXI_S2MM_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_S2MM_wvalid : out STD_LOGIC;
    M_AXI_SG_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_SG_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_SG_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_SG_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_SG_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_SG_arready : in STD_LOGIC;
    M_AXI_SG_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_SG_arvalid : out STD_LOGIC;
    M_AXI_SG_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_SG_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_SG_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_SG_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_SG_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_SG_awready : in STD_LOGIC;
    M_AXI_SG_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_SG_awvalid : out STD_LOGIC;
    M_AXI_SG_bready : out STD_LOGIC;
    M_AXI_SG_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_SG_bvalid : in STD_LOGIC;
    M_AXI_SG_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_SG_rlast : in STD_LOGIC;
    M_AXI_SG_rready : out STD_LOGIC;
    M_AXI_SG_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_SG_rvalid : in STD_LOGIC;
    M_AXI_SG_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_SG_wlast : out STD_LOGIC;
    M_AXI_SG_wready : in STD_LOGIC;
    M_AXI_SG_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_SG_wvalid : out STD_LOGIC;
    RGMII_rd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RGMII_rx_ctl : in STD_LOGIC;
    RGMII_rxc : in STD_LOGIC;
    RGMII_td : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RGMII_tx_ctl : out STD_LOGIC;
    RGMII_txc : out STD_LOGIC;
    S_AXI_LITE_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_arready : out STD_LOGIC;
    S_AXI_LITE_arvalid : in STD_LOGIC;
    S_AXI_LITE_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_awready : out STD_LOGIC;
    S_AXI_LITE_awvalid : in STD_LOGIC;
    S_AXI_LITE_bready : in STD_LOGIC;
    S_AXI_LITE_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_bvalid : out STD_LOGIC;
    S_AXI_LITE_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_rready : in STD_LOGIC;
    S_AXI_LITE_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_rvalid : out STD_LOGIC;
    S_AXI_LITE_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_wready : out STD_LOGIC;
    S_AXI_LITE_wvalid : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    mac_irq : out STD_LOGIC;
    mm2s_introut : out STD_LOGIC;
    ref_clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    s2mm_introut : out STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_lite_resetn : in STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC
  );
end Ethernet_imp_LIDQ5M;

architecture STRUCTURE of Ethernet_imp_LIDQ5M is
  component Mars_AX3_axi_ethernet_0 is
  port (
    s_axi_lite_resetn : in STD_LOGIC;
    s_axi_lite_clk : in STD_LOGIC;
    mac_irq : out STD_LOGIC;
    axis_clk : in STD_LOGIC;
    axi_txd_arstn : in STD_LOGIC;
    axi_txc_arstn : in STD_LOGIC;
    axi_rxd_arstn : in STD_LOGIC;
    axi_rxs_arstn : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    gtx_clk : in STD_LOGIC;
    phy_rst_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ref_clk : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axis_txc_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_txc_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_txc_tlast : in STD_LOGIC;
    s_axis_txc_tready : out STD_LOGIC;
    s_axis_txc_tvalid : in STD_LOGIC;
    s_axis_txd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_txd_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_txd_tlast : in STD_LOGIC;
    s_axis_txd_tready : out STD_LOGIC;
    s_axis_txd_tvalid : in STD_LOGIC;
    m_axis_rxd_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_rxd_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_rxd_tlast : out STD_LOGIC;
    m_axis_rxd_tready : in STD_LOGIC;
    m_axis_rxd_tvalid : out STD_LOGIC;
    m_axis_rxs_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_rxs_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_rxs_tlast : out STD_LOGIC;
    m_axis_rxs_tready : in STD_LOGIC;
    m_axis_rxs_tvalid : out STD_LOGIC;
    mdio_mdc : out STD_LOGIC;
    mdio_mdio_i : in STD_LOGIC;
    mdio_mdio_o : out STD_LOGIC;
    mdio_mdio_t : out STD_LOGIC;
    gtx_clk90_out : out STD_LOGIC;
    gtx_clk_out : out STD_LOGIC;
    rgmii_rd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_rx_ctl : in STD_LOGIC;
    rgmii_rxc : in STD_LOGIC;
    rgmii_td : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_tx_ctl : out STD_LOGIC;
    rgmii_txc : out STD_LOGIC
  );
  end component Mars_AX3_axi_ethernet_0;
  component Mars_AX3_clk_wiz_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );
  end component Mars_AX3_clk_wiz_0;
  component Mars_AX3_axi_dma_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_sg_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_sg_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_awvalid : out STD_LOGIC;
    m_axi_sg_awready : in STD_LOGIC;
    m_axi_sg_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_wlast : out STD_LOGIC;
    m_axi_sg_wvalid : out STD_LOGIC;
    m_axi_sg_wready : in STD_LOGIC;
    m_axi_sg_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_bvalid : in STD_LOGIC;
    m_axi_sg_bready : out STD_LOGIC;
    m_axi_sg_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_sg_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_arvalid : out STD_LOGIC;
    m_axi_sg_arready : in STD_LOGIC;
    m_axi_sg_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_rlast : in STD_LOGIC;
    m_axi_sg_rvalid : in STD_LOGIC;
    m_axi_sg_rready : out STD_LOGIC;
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    mm2s_cntrl_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_cntrl_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_cntrl_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_cntrl_tvalid : out STD_LOGIC;
    m_axis_mm2s_cntrl_tready : in STD_LOGIC;
    m_axis_mm2s_cntrl_tlast : out STD_LOGIC;
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    s2mm_sts_reset_out_n : out STD_LOGIC;
    s_axis_s2mm_sts_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_sts_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_s2mm_sts_tvalid : in STD_LOGIC;
    s_axis_s2mm_sts_tready : out STD_LOGIC;
    s_axis_s2mm_sts_tlast : in STD_LOGIC;
    mm2s_introut : out STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component Mars_AX3_axi_dma_0;
  signal Conn1_MDC : STD_LOGIC;
  signal Conn1_MDIO_I : STD_LOGIC;
  signal Conn1_MDIO_O : STD_LOGIC;
  signal Conn1_MDIO_T : STD_LOGIC;
  signal Conn2_RD : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_RXC : STD_LOGIC;
  signal Conn2_RX_CTL : STD_LOGIC;
  signal Conn2_TD : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_TXC : STD_LOGIC;
  signal Conn2_TX_CTL : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC;
  signal S_AXI_LITE_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_LITE_1_ARREADY : STD_LOGIC;
  signal S_AXI_LITE_1_ARVALID : STD_LOGIC;
  signal S_AXI_LITE_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_LITE_1_AWREADY : STD_LOGIC;
  signal S_AXI_LITE_1_AWVALID : STD_LOGIC;
  signal S_AXI_LITE_1_BREADY : STD_LOGIC;
  signal S_AXI_LITE_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_LITE_1_BVALID : STD_LOGIC;
  signal S_AXI_LITE_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_LITE_1_RREADY : STD_LOGIC;
  signal S_AXI_LITE_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_LITE_1_RVALID : STD_LOGIC;
  signal S_AXI_LITE_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_LITE_1_WREADY : STD_LOGIC;
  signal S_AXI_LITE_1_WVALID : STD_LOGIC;
  signal axi_dma_M_AXIS_CNTRL_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_M_AXIS_CNTRL_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_M_AXIS_CNTRL_TLAST : STD_LOGIC;
  signal axi_dma_M_AXIS_CNTRL_TREADY : STD_LOGIC;
  signal axi_dma_M_AXIS_CNTRL_TVALID : STD_LOGIC;
  signal axi_dma_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_M_AXIS_MM2S_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_M_AXIS_MM2S_TLAST : STD_LOGIC;
  signal axi_dma_M_AXIS_MM2S_TREADY : STD_LOGIC;
  signal axi_dma_M_AXIS_MM2S_TVALID : STD_LOGIC;
  signal axi_dma_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_M_AXI_MM2S_ARREADY : STD_LOGIC;
  signal axi_dma_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_dma_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_M_AXI_MM2S_RLAST : STD_LOGIC;
  signal axi_dma_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_dma_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_M_AXI_MM2S_RVALID : STD_LOGIC;
  signal axi_dma_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_M_AXI_S2MM_AWREADY : STD_LOGIC;
  signal axi_dma_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_dma_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_dma_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_M_AXI_S2MM_BVALID : STD_LOGIC;
  signal axi_dma_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_dma_M_AXI_S2MM_WREADY : STD_LOGIC;
  signal axi_dma_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal axi_dma_M_AXI_SG_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_M_AXI_SG_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_M_AXI_SG_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_M_AXI_SG_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_M_AXI_SG_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_M_AXI_SG_ARREADY : STD_LOGIC;
  signal axi_dma_M_AXI_SG_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_M_AXI_SG_ARVALID : STD_LOGIC;
  signal axi_dma_M_AXI_SG_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_M_AXI_SG_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_M_AXI_SG_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_M_AXI_SG_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_M_AXI_SG_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_M_AXI_SG_AWREADY : STD_LOGIC;
  signal axi_dma_M_AXI_SG_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_M_AXI_SG_AWVALID : STD_LOGIC;
  signal axi_dma_M_AXI_SG_BREADY : STD_LOGIC;
  signal axi_dma_M_AXI_SG_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_M_AXI_SG_BVALID : STD_LOGIC;
  signal axi_dma_M_AXI_SG_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_M_AXI_SG_RLAST : STD_LOGIC;
  signal axi_dma_M_AXI_SG_RREADY : STD_LOGIC;
  signal axi_dma_M_AXI_SG_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_M_AXI_SG_RVALID : STD_LOGIC;
  signal axi_dma_M_AXI_SG_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_M_AXI_SG_WLAST : STD_LOGIC;
  signal axi_dma_M_AXI_SG_WREADY : STD_LOGIC;
  signal axi_dma_M_AXI_SG_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_M_AXI_SG_WVALID : STD_LOGIC;
  signal axi_dma_mm2s_cntrl_reset_out_n : STD_LOGIC;
  signal axi_dma_mm2s_introut : STD_LOGIC;
  signal axi_dma_mm2s_prmry_reset_out_n : STD_LOGIC;
  signal axi_dma_s2mm_introut : STD_LOGIC;
  signal axi_dma_s2mm_prmry_reset_out_n : STD_LOGIC;
  signal axi_dma_s2mm_sts_reset_out_n : STD_LOGIC;
  signal axi_ethernet_interrupt : STD_LOGIC;
  signal axi_ethernet_m_axis_rxd_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ethernet_m_axis_rxd_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ethernet_m_axis_rxd_TLAST : STD_LOGIC;
  signal axi_ethernet_m_axis_rxd_TREADY : STD_LOGIC;
  signal axi_ethernet_m_axis_rxd_TVALID : STD_LOGIC;
  signal axi_ethernet_m_axis_rxs_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ethernet_m_axis_rxs_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ethernet_m_axis_rxs_TLAST : STD_LOGIC;
  signal axi_ethernet_m_axis_rxs_TREADY : STD_LOGIC;
  signal axi_ethernet_m_axis_rxs_TVALID : STD_LOGIC;
  signal axi_ethernet_mac_irq : STD_LOGIC;
  signal axi_ethernet_phy_rst_n : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_wiz_clk_out1 : STD_LOGIC;
  signal ref_clk_1 : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal s_axi_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_ARREADY : STD_LOGIC;
  signal s_axi_1_ARVALID : STD_LOGIC;
  signal s_axi_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_AWREADY : STD_LOGIC;
  signal s_axi_1_AWVALID : STD_LOGIC;
  signal s_axi_1_BREADY : STD_LOGIC;
  signal s_axi_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_1_BVALID : STD_LOGIC;
  signal s_axi_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_RREADY : STD_LOGIC;
  signal s_axi_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_1_RVALID : STD_LOGIC;
  signal s_axi_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_WREADY : STD_LOGIC;
  signal s_axi_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_1_WVALID : STD_LOGIC;
  signal NLW_axi_ethernet_gtx_clk90_out_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_ethernet_gtx_clk_out_UNCONNECTED : STD_LOGIC;
begin
  Conn1_MDIO_I <= MDIO_mdio_i;
  Conn2_RD(3 downto 0) <= RGMII_rd(3 downto 0);
  Conn2_RXC <= RGMII_rxc;
  Conn2_RX_CTL <= RGMII_rx_ctl;
  ETH_RST_N(0) <= axi_ethernet_phy_rst_n(0);
  MDIO_mdc <= Conn1_MDC;
  MDIO_mdio_o <= Conn1_MDIO_O;
  MDIO_mdio_t <= Conn1_MDIO_T;
  M_AXI_MM2S_araddr(31 downto 0) <= axi_dma_M_AXI_MM2S_ARADDR(31 downto 0);
  M_AXI_MM2S_arburst(1 downto 0) <= axi_dma_M_AXI_MM2S_ARBURST(1 downto 0);
  M_AXI_MM2S_arcache(3 downto 0) <= axi_dma_M_AXI_MM2S_ARCACHE(3 downto 0);
  M_AXI_MM2S_arlen(7 downto 0) <= axi_dma_M_AXI_MM2S_ARLEN(7 downto 0);
  M_AXI_MM2S_arprot(2 downto 0) <= axi_dma_M_AXI_MM2S_ARPROT(2 downto 0);
  M_AXI_MM2S_arsize(2 downto 0) <= axi_dma_M_AXI_MM2S_ARSIZE(2 downto 0);
  M_AXI_MM2S_arvalid <= axi_dma_M_AXI_MM2S_ARVALID;
  M_AXI_MM2S_rready <= axi_dma_M_AXI_MM2S_RREADY;
  M_AXI_S2MM_awaddr(31 downto 0) <= axi_dma_M_AXI_S2MM_AWADDR(31 downto 0);
  M_AXI_S2MM_awburst(1 downto 0) <= axi_dma_M_AXI_S2MM_AWBURST(1 downto 0);
  M_AXI_S2MM_awcache(3 downto 0) <= axi_dma_M_AXI_S2MM_AWCACHE(3 downto 0);
  M_AXI_S2MM_awlen(7 downto 0) <= axi_dma_M_AXI_S2MM_AWLEN(7 downto 0);
  M_AXI_S2MM_awprot(2 downto 0) <= axi_dma_M_AXI_S2MM_AWPROT(2 downto 0);
  M_AXI_S2MM_awsize(2 downto 0) <= axi_dma_M_AXI_S2MM_AWSIZE(2 downto 0);
  M_AXI_S2MM_awvalid <= axi_dma_M_AXI_S2MM_AWVALID;
  M_AXI_S2MM_bready <= axi_dma_M_AXI_S2MM_BREADY;
  M_AXI_S2MM_wdata(31 downto 0) <= axi_dma_M_AXI_S2MM_WDATA(31 downto 0);
  M_AXI_S2MM_wlast <= axi_dma_M_AXI_S2MM_WLAST;
  M_AXI_S2MM_wstrb(3 downto 0) <= axi_dma_M_AXI_S2MM_WSTRB(3 downto 0);
  M_AXI_S2MM_wvalid <= axi_dma_M_AXI_S2MM_WVALID;
  M_AXI_SG_araddr(31 downto 0) <= axi_dma_M_AXI_SG_ARADDR(31 downto 0);
  M_AXI_SG_arburst(1 downto 0) <= axi_dma_M_AXI_SG_ARBURST(1 downto 0);
  M_AXI_SG_arcache(3 downto 0) <= axi_dma_M_AXI_SG_ARCACHE(3 downto 0);
  M_AXI_SG_arlen(7 downto 0) <= axi_dma_M_AXI_SG_ARLEN(7 downto 0);
  M_AXI_SG_arprot(2 downto 0) <= axi_dma_M_AXI_SG_ARPROT(2 downto 0);
  M_AXI_SG_arsize(2 downto 0) <= axi_dma_M_AXI_SG_ARSIZE(2 downto 0);
  M_AXI_SG_arvalid <= axi_dma_M_AXI_SG_ARVALID;
  M_AXI_SG_awaddr(31 downto 0) <= axi_dma_M_AXI_SG_AWADDR(31 downto 0);
  M_AXI_SG_awburst(1 downto 0) <= axi_dma_M_AXI_SG_AWBURST(1 downto 0);
  M_AXI_SG_awcache(3 downto 0) <= axi_dma_M_AXI_SG_AWCACHE(3 downto 0);
  M_AXI_SG_awlen(7 downto 0) <= axi_dma_M_AXI_SG_AWLEN(7 downto 0);
  M_AXI_SG_awprot(2 downto 0) <= axi_dma_M_AXI_SG_AWPROT(2 downto 0);
  M_AXI_SG_awsize(2 downto 0) <= axi_dma_M_AXI_SG_AWSIZE(2 downto 0);
  M_AXI_SG_awvalid <= axi_dma_M_AXI_SG_AWVALID;
  M_AXI_SG_bready <= axi_dma_M_AXI_SG_BREADY;
  M_AXI_SG_rready <= axi_dma_M_AXI_SG_RREADY;
  M_AXI_SG_wdata(31 downto 0) <= axi_dma_M_AXI_SG_WDATA(31 downto 0);
  M_AXI_SG_wlast <= axi_dma_M_AXI_SG_WLAST;
  M_AXI_SG_wstrb(3 downto 0) <= axi_dma_M_AXI_SG_WSTRB(3 downto 0);
  M_AXI_SG_wvalid <= axi_dma_M_AXI_SG_WVALID;
  Net <= clk_in1;
  Net1 <= s_axi_lite_resetn;
  RGMII_td(3 downto 0) <= Conn2_TD(3 downto 0);
  RGMII_tx_ctl <= Conn2_TX_CTL;
  RGMII_txc <= Conn2_TXC;
  S_AXI_LITE_1_ARADDR(31 downto 0) <= S_AXI_LITE_araddr(31 downto 0);
  S_AXI_LITE_1_ARVALID <= S_AXI_LITE_arvalid;
  S_AXI_LITE_1_AWADDR(31 downto 0) <= S_AXI_LITE_awaddr(31 downto 0);
  S_AXI_LITE_1_AWVALID <= S_AXI_LITE_awvalid;
  S_AXI_LITE_1_BREADY <= S_AXI_LITE_bready;
  S_AXI_LITE_1_RREADY <= S_AXI_LITE_rready;
  S_AXI_LITE_1_WDATA(31 downto 0) <= S_AXI_LITE_wdata(31 downto 0);
  S_AXI_LITE_1_WVALID <= S_AXI_LITE_wvalid;
  S_AXI_LITE_arready <= S_AXI_LITE_1_ARREADY;
  S_AXI_LITE_awready <= S_AXI_LITE_1_AWREADY;
  S_AXI_LITE_bresp(1 downto 0) <= S_AXI_LITE_1_BRESP(1 downto 0);
  S_AXI_LITE_bvalid <= S_AXI_LITE_1_BVALID;
  S_AXI_LITE_rdata(31 downto 0) <= S_AXI_LITE_1_RDATA(31 downto 0);
  S_AXI_LITE_rresp(1 downto 0) <= S_AXI_LITE_1_RRESP(1 downto 0);
  S_AXI_LITE_rvalid <= S_AXI_LITE_1_RVALID;
  S_AXI_LITE_wready <= S_AXI_LITE_1_WREADY;
  axi_dma_M_AXI_MM2S_ARREADY <= M_AXI_MM2S_arready;
  axi_dma_M_AXI_MM2S_RDATA(31 downto 0) <= M_AXI_MM2S_rdata(31 downto 0);
  axi_dma_M_AXI_MM2S_RLAST <= M_AXI_MM2S_rlast;
  axi_dma_M_AXI_MM2S_RRESP(1 downto 0) <= M_AXI_MM2S_rresp(1 downto 0);
  axi_dma_M_AXI_MM2S_RVALID <= M_AXI_MM2S_rvalid;
  axi_dma_M_AXI_S2MM_AWREADY <= M_AXI_S2MM_awready;
  axi_dma_M_AXI_S2MM_BRESP(1 downto 0) <= M_AXI_S2MM_bresp(1 downto 0);
  axi_dma_M_AXI_S2MM_BVALID <= M_AXI_S2MM_bvalid;
  axi_dma_M_AXI_S2MM_WREADY <= M_AXI_S2MM_wready;
  axi_dma_M_AXI_SG_ARREADY <= M_AXI_SG_arready;
  axi_dma_M_AXI_SG_AWREADY <= M_AXI_SG_awready;
  axi_dma_M_AXI_SG_BRESP(1 downto 0) <= M_AXI_SG_bresp(1 downto 0);
  axi_dma_M_AXI_SG_BVALID <= M_AXI_SG_bvalid;
  axi_dma_M_AXI_SG_RDATA(31 downto 0) <= M_AXI_SG_rdata(31 downto 0);
  axi_dma_M_AXI_SG_RLAST <= M_AXI_SG_rlast;
  axi_dma_M_AXI_SG_RRESP(1 downto 0) <= M_AXI_SG_rresp(1 downto 0);
  axi_dma_M_AXI_SG_RVALID <= M_AXI_SG_rvalid;
  axi_dma_M_AXI_SG_WREADY <= M_AXI_SG_wready;
  interrupt <= axi_ethernet_interrupt;
  mac_irq <= axi_ethernet_mac_irq;
  mm2s_introut <= axi_dma_mm2s_introut;
  ref_clk_1 <= ref_clk;
  reset_1 <= reset;
  s2mm_introut <= axi_dma_s2mm_introut;
  s_axi_1_ARADDR(31 downto 0) <= s_axi_araddr(31 downto 0);
  s_axi_1_ARVALID <= s_axi_arvalid;
  s_axi_1_AWADDR(31 downto 0) <= s_axi_awaddr(31 downto 0);
  s_axi_1_AWVALID <= s_axi_awvalid;
  s_axi_1_BREADY <= s_axi_bready;
  s_axi_1_RREADY <= s_axi_rready;
  s_axi_1_WDATA(31 downto 0) <= s_axi_wdata(31 downto 0);
  s_axi_1_WSTRB(3 downto 0) <= s_axi_wstrb(3 downto 0);
  s_axi_1_WVALID <= s_axi_wvalid;
  s_axi_arready <= s_axi_1_ARREADY;
  s_axi_awready <= s_axi_1_AWREADY;
  s_axi_bresp(1 downto 0) <= s_axi_1_BRESP(1 downto 0);
  s_axi_bvalid <= s_axi_1_BVALID;
  s_axi_rdata(31 downto 0) <= s_axi_1_RDATA(31 downto 0);
  s_axi_rresp(1 downto 0) <= s_axi_1_RRESP(1 downto 0);
  s_axi_rvalid <= s_axi_1_RVALID;
  s_axi_wready <= s_axi_1_WREADY;
axi_dma: component Mars_AX3_axi_dma_0
     port map (
      axi_resetn => Net1,
      m_axi_mm2s_aclk => Net,
      m_axi_mm2s_araddr(31 downto 0) => axi_dma_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_dma_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_dma_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_dma_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_dma_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_dma_M_AXI_MM2S_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => axi_dma_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_dma_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(31 downto 0) => axi_dma_M_AXI_MM2S_RDATA(31 downto 0),
      m_axi_mm2s_rlast => axi_dma_M_AXI_MM2S_RLAST,
      m_axi_mm2s_rready => axi_dma_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_dma_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_dma_M_AXI_MM2S_RVALID,
      m_axi_s2mm_aclk => Net,
      m_axi_s2mm_awaddr(31 downto 0) => axi_dma_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_dma_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_dma_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_dma_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_dma_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_dma_M_AXI_S2MM_AWREADY,
      m_axi_s2mm_awsize(2 downto 0) => axi_dma_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_dma_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_dma_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_dma_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_dma_M_AXI_S2MM_BVALID,
      m_axi_s2mm_wdata(31 downto 0) => axi_dma_M_AXI_S2MM_WDATA(31 downto 0),
      m_axi_s2mm_wlast => axi_dma_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_dma_M_AXI_S2MM_WREADY,
      m_axi_s2mm_wstrb(3 downto 0) => axi_dma_M_AXI_S2MM_WSTRB(3 downto 0),
      m_axi_s2mm_wvalid => axi_dma_M_AXI_S2MM_WVALID,
      m_axi_sg_aclk => Net,
      m_axi_sg_araddr(31 downto 0) => axi_dma_M_AXI_SG_ARADDR(31 downto 0),
      m_axi_sg_arburst(1 downto 0) => axi_dma_M_AXI_SG_ARBURST(1 downto 0),
      m_axi_sg_arcache(3 downto 0) => axi_dma_M_AXI_SG_ARCACHE(3 downto 0),
      m_axi_sg_arlen(7 downto 0) => axi_dma_M_AXI_SG_ARLEN(7 downto 0),
      m_axi_sg_arprot(2 downto 0) => axi_dma_M_AXI_SG_ARPROT(2 downto 0),
      m_axi_sg_arready => axi_dma_M_AXI_SG_ARREADY,
      m_axi_sg_arsize(2 downto 0) => axi_dma_M_AXI_SG_ARSIZE(2 downto 0),
      m_axi_sg_arvalid => axi_dma_M_AXI_SG_ARVALID,
      m_axi_sg_awaddr(31 downto 0) => axi_dma_M_AXI_SG_AWADDR(31 downto 0),
      m_axi_sg_awburst(1 downto 0) => axi_dma_M_AXI_SG_AWBURST(1 downto 0),
      m_axi_sg_awcache(3 downto 0) => axi_dma_M_AXI_SG_AWCACHE(3 downto 0),
      m_axi_sg_awlen(7 downto 0) => axi_dma_M_AXI_SG_AWLEN(7 downto 0),
      m_axi_sg_awprot(2 downto 0) => axi_dma_M_AXI_SG_AWPROT(2 downto 0),
      m_axi_sg_awready => axi_dma_M_AXI_SG_AWREADY,
      m_axi_sg_awsize(2 downto 0) => axi_dma_M_AXI_SG_AWSIZE(2 downto 0),
      m_axi_sg_awvalid => axi_dma_M_AXI_SG_AWVALID,
      m_axi_sg_bready => axi_dma_M_AXI_SG_BREADY,
      m_axi_sg_bresp(1 downto 0) => axi_dma_M_AXI_SG_BRESP(1 downto 0),
      m_axi_sg_bvalid => axi_dma_M_AXI_SG_BVALID,
      m_axi_sg_rdata(31 downto 0) => axi_dma_M_AXI_SG_RDATA(31 downto 0),
      m_axi_sg_rlast => axi_dma_M_AXI_SG_RLAST,
      m_axi_sg_rready => axi_dma_M_AXI_SG_RREADY,
      m_axi_sg_rresp(1 downto 0) => axi_dma_M_AXI_SG_RRESP(1 downto 0),
      m_axi_sg_rvalid => axi_dma_M_AXI_SG_RVALID,
      m_axi_sg_wdata(31 downto 0) => axi_dma_M_AXI_SG_WDATA(31 downto 0),
      m_axi_sg_wlast => axi_dma_M_AXI_SG_WLAST,
      m_axi_sg_wready => axi_dma_M_AXI_SG_WREADY,
      m_axi_sg_wstrb(3 downto 0) => axi_dma_M_AXI_SG_WSTRB(3 downto 0),
      m_axi_sg_wvalid => axi_dma_M_AXI_SG_WVALID,
      m_axis_mm2s_cntrl_tdata(31 downto 0) => axi_dma_M_AXIS_CNTRL_TDATA(31 downto 0),
      m_axis_mm2s_cntrl_tkeep(3 downto 0) => axi_dma_M_AXIS_CNTRL_TKEEP(3 downto 0),
      m_axis_mm2s_cntrl_tlast => axi_dma_M_AXIS_CNTRL_TLAST,
      m_axis_mm2s_cntrl_tready => axi_dma_M_AXIS_CNTRL_TREADY,
      m_axis_mm2s_cntrl_tvalid => axi_dma_M_AXIS_CNTRL_TVALID,
      m_axis_mm2s_tdata(31 downto 0) => axi_dma_M_AXIS_MM2S_TDATA(31 downto 0),
      m_axis_mm2s_tkeep(3 downto 0) => axi_dma_M_AXIS_MM2S_TKEEP(3 downto 0),
      m_axis_mm2s_tlast => axi_dma_M_AXIS_MM2S_TLAST,
      m_axis_mm2s_tready => axi_dma_M_AXIS_MM2S_TREADY,
      m_axis_mm2s_tvalid => axi_dma_M_AXIS_MM2S_TVALID,
      mm2s_cntrl_reset_out_n => axi_dma_mm2s_cntrl_reset_out_n,
      mm2s_introut => axi_dma_mm2s_introut,
      mm2s_prmry_reset_out_n => axi_dma_mm2s_prmry_reset_out_n,
      s2mm_introut => axi_dma_s2mm_introut,
      s2mm_prmry_reset_out_n => axi_dma_s2mm_prmry_reset_out_n,
      s2mm_sts_reset_out_n => axi_dma_s2mm_sts_reset_out_n,
      s_axi_lite_aclk => Net,
      s_axi_lite_araddr(9 downto 0) => S_AXI_LITE_1_ARADDR(9 downto 0),
      s_axi_lite_arready => S_AXI_LITE_1_ARREADY,
      s_axi_lite_arvalid => S_AXI_LITE_1_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => S_AXI_LITE_1_AWADDR(9 downto 0),
      s_axi_lite_awready => S_AXI_LITE_1_AWREADY,
      s_axi_lite_awvalid => S_AXI_LITE_1_AWVALID,
      s_axi_lite_bready => S_AXI_LITE_1_BREADY,
      s_axi_lite_bresp(1 downto 0) => S_AXI_LITE_1_BRESP(1 downto 0),
      s_axi_lite_bvalid => S_AXI_LITE_1_BVALID,
      s_axi_lite_rdata(31 downto 0) => S_AXI_LITE_1_RDATA(31 downto 0),
      s_axi_lite_rready => S_AXI_LITE_1_RREADY,
      s_axi_lite_rresp(1 downto 0) => S_AXI_LITE_1_RRESP(1 downto 0),
      s_axi_lite_rvalid => S_AXI_LITE_1_RVALID,
      s_axi_lite_wdata(31 downto 0) => S_AXI_LITE_1_WDATA(31 downto 0),
      s_axi_lite_wready => S_AXI_LITE_1_WREADY,
      s_axi_lite_wvalid => S_AXI_LITE_1_WVALID,
      s_axis_s2mm_sts_tdata(31 downto 0) => axi_ethernet_m_axis_rxs_TDATA(31 downto 0),
      s_axis_s2mm_sts_tkeep(3 downto 0) => axi_ethernet_m_axis_rxs_TKEEP(3 downto 0),
      s_axis_s2mm_sts_tlast => axi_ethernet_m_axis_rxs_TLAST,
      s_axis_s2mm_sts_tready => axi_ethernet_m_axis_rxs_TREADY,
      s_axis_s2mm_sts_tvalid => axi_ethernet_m_axis_rxs_TVALID,
      s_axis_s2mm_tdata(31 downto 0) => axi_ethernet_m_axis_rxd_TDATA(31 downto 0),
      s_axis_s2mm_tkeep(3 downto 0) => axi_ethernet_m_axis_rxd_TKEEP(3 downto 0),
      s_axis_s2mm_tlast => axi_ethernet_m_axis_rxd_TLAST,
      s_axis_s2mm_tready => axi_ethernet_m_axis_rxd_TREADY,
      s_axis_s2mm_tvalid => axi_ethernet_m_axis_rxd_TVALID
    );
axi_ethernet: component Mars_AX3_axi_ethernet_0
     port map (
      axi_rxd_arstn => axi_dma_s2mm_prmry_reset_out_n,
      axi_rxs_arstn => axi_dma_s2mm_sts_reset_out_n,
      axi_txc_arstn => axi_dma_mm2s_cntrl_reset_out_n,
      axi_txd_arstn => axi_dma_mm2s_prmry_reset_out_n,
      axis_clk => Net,
      gtx_clk => clk_wiz_clk_out1,
      gtx_clk90_out => NLW_axi_ethernet_gtx_clk90_out_UNCONNECTED,
      gtx_clk_out => NLW_axi_ethernet_gtx_clk_out_UNCONNECTED,
      interrupt => axi_ethernet_interrupt,
      m_axis_rxd_tdata(31 downto 0) => axi_ethernet_m_axis_rxd_TDATA(31 downto 0),
      m_axis_rxd_tkeep(3 downto 0) => axi_ethernet_m_axis_rxd_TKEEP(3 downto 0),
      m_axis_rxd_tlast => axi_ethernet_m_axis_rxd_TLAST,
      m_axis_rxd_tready => axi_ethernet_m_axis_rxd_TREADY,
      m_axis_rxd_tvalid => axi_ethernet_m_axis_rxd_TVALID,
      m_axis_rxs_tdata(31 downto 0) => axi_ethernet_m_axis_rxs_TDATA(31 downto 0),
      m_axis_rxs_tkeep(3 downto 0) => axi_ethernet_m_axis_rxs_TKEEP(3 downto 0),
      m_axis_rxs_tlast => axi_ethernet_m_axis_rxs_TLAST,
      m_axis_rxs_tready => axi_ethernet_m_axis_rxs_TREADY,
      m_axis_rxs_tvalid => axi_ethernet_m_axis_rxs_TVALID,
      mac_irq => axi_ethernet_mac_irq,
      mdio_mdc => Conn1_MDC,
      mdio_mdio_i => Conn1_MDIO_I,
      mdio_mdio_o => Conn1_MDIO_O,
      mdio_mdio_t => Conn1_MDIO_T,
      phy_rst_n(0) => axi_ethernet_phy_rst_n(0),
      ref_clk => ref_clk_1,
      rgmii_rd(3 downto 0) => Conn2_RD(3 downto 0),
      rgmii_rx_ctl => Conn2_RX_CTL,
      rgmii_rxc => Conn2_RXC,
      rgmii_td(3 downto 0) => Conn2_TD(3 downto 0),
      rgmii_tx_ctl => Conn2_TX_CTL,
      rgmii_txc => Conn2_TXC,
      s_axi_araddr(17 downto 0) => s_axi_1_ARADDR(17 downto 0),
      s_axi_arready => s_axi_1_ARREADY,
      s_axi_arvalid => s_axi_1_ARVALID,
      s_axi_awaddr(17 downto 0) => s_axi_1_AWADDR(17 downto 0),
      s_axi_awready => s_axi_1_AWREADY,
      s_axi_awvalid => s_axi_1_AWVALID,
      s_axi_bready => s_axi_1_BREADY,
      s_axi_bresp(1 downto 0) => s_axi_1_BRESP(1 downto 0),
      s_axi_bvalid => s_axi_1_BVALID,
      s_axi_lite_clk => Net,
      s_axi_lite_resetn => Net1,
      s_axi_rdata(31 downto 0) => s_axi_1_RDATA(31 downto 0),
      s_axi_rready => s_axi_1_RREADY,
      s_axi_rresp(1 downto 0) => s_axi_1_RRESP(1 downto 0),
      s_axi_rvalid => s_axi_1_RVALID,
      s_axi_wdata(31 downto 0) => s_axi_1_WDATA(31 downto 0),
      s_axi_wready => s_axi_1_WREADY,
      s_axi_wstrb(3 downto 0) => s_axi_1_WSTRB(3 downto 0),
      s_axi_wvalid => s_axi_1_WVALID,
      s_axis_txc_tdata(31 downto 0) => axi_dma_M_AXIS_CNTRL_TDATA(31 downto 0),
      s_axis_txc_tkeep(3 downto 0) => axi_dma_M_AXIS_CNTRL_TKEEP(3 downto 0),
      s_axis_txc_tlast => axi_dma_M_AXIS_CNTRL_TLAST,
      s_axis_txc_tready => axi_dma_M_AXIS_CNTRL_TREADY,
      s_axis_txc_tvalid => axi_dma_M_AXIS_CNTRL_TVALID,
      s_axis_txd_tdata(31 downto 0) => axi_dma_M_AXIS_MM2S_TDATA(31 downto 0),
      s_axis_txd_tkeep(3 downto 0) => axi_dma_M_AXIS_MM2S_TKEEP(3 downto 0),
      s_axis_txd_tlast => axi_dma_M_AXIS_MM2S_TLAST,
      s_axis_txd_tready => axi_dma_M_AXIS_MM2S_TREADY,
      s_axis_txd_tvalid => axi_dma_M_AXIS_MM2S_TVALID
    );
clk_wiz: component Mars_AX3_clk_wiz_0
     port map (
      clk_in1 => Net,
      clk_out1 => clk_wiz_clk_out1,
      reset => reset_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1BYIGWA is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 27 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 27 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_1BYIGWA;

architecture STRUCTURE of m00_couplers_imp_1BYIGWA is
  component Mars_AX3_auto_cc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 27 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 27 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component Mars_AX3_auto_cc_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_cc_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal auto_cc_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_cc_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m00_couplers_ARREADY : STD_LOGIC;
  signal auto_cc_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m00_couplers_ARVALID : STD_LOGIC;
  signal auto_cc_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal auto_cc_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_cc_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m00_couplers_AWREADY : STD_LOGIC;
  signal auto_cc_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m00_couplers_AWVALID : STD_LOGIC;
  signal auto_cc_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m00_couplers_BREADY : STD_LOGIC;
  signal auto_cc_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m00_couplers_BVALID : STD_LOGIC;
  signal auto_cc_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m00_couplers_RLAST : STD_LOGIC;
  signal auto_cc_to_m00_couplers_RREADY : STD_LOGIC;
  signal auto_cc_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m00_couplers_RVALID : STD_LOGIC;
  signal auto_cc_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m00_couplers_WLAST : STD_LOGIC;
  signal auto_cc_to_m00_couplers_WREADY : STD_LOGIC;
  signal auto_cc_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_cc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_cc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_cc_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_cc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_cc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_cc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_cc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_cc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_cc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_cc_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_cc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_cc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_cc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_cc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_cc_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_cc_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_cc_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_cc_WLAST : STD_LOGIC;
  signal m00_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_cc_WVALID : STD_LOGIC;
  signal NLW_auto_cc_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_cc_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(27 downto 0) <= auto_cc_to_m00_couplers_ARADDR(27 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_cc_to_m00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_cc_to_m00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(2 downto 0) <= auto_cc_to_m00_couplers_ARID(2 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_cc_to_m00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_cc_to_m00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_cc_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_cc_to_m00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_cc_to_m00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_cc_to_m00_couplers_ARVALID;
  M_AXI_awaddr(27 downto 0) <= auto_cc_to_m00_couplers_AWADDR(27 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_cc_to_m00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_cc_to_m00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(2 downto 0) <= auto_cc_to_m00_couplers_AWID(2 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_cc_to_m00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_cc_to_m00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_cc_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_cc_to_m00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_cc_to_m00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_cc_to_m00_couplers_AWVALID;
  M_AXI_bready <= auto_cc_to_m00_couplers_BREADY;
  M_AXI_rready <= auto_cc_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_cc_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_cc_to_m00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_cc_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_cc_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m00_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_cc_AWREADY;
  S_AXI_bid(2 downto 0) <= m00_couplers_to_auto_cc_BID(2 downto 0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rid(2 downto 0) <= m00_couplers_to_auto_cc_RID(2 downto 0);
  S_AXI_rlast <= m00_couplers_to_auto_cc_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_cc_WREADY;
  auto_cc_to_m00_couplers_ARREADY <= M_AXI_arready;
  auto_cc_to_m00_couplers_AWREADY <= M_AXI_awready;
  auto_cc_to_m00_couplers_BID(2 downto 0) <= M_AXI_bid(2 downto 0);
  auto_cc_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_cc_to_m00_couplers_BVALID <= M_AXI_bvalid;
  auto_cc_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_cc_to_m00_couplers_RID(2 downto 0) <= M_AXI_rid(2 downto 0);
  auto_cc_to_m00_couplers_RLAST <= M_AXI_rlast;
  auto_cc_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_cc_to_m00_couplers_RVALID <= M_AXI_rvalid;
  auto_cc_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_auto_cc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_cc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_cc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_cc_ARID(2 downto 0) <= S_AXI_arid(2 downto 0);
  m00_couplers_to_auto_cc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_auto_cc_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_cc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_auto_cc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_auto_cc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_cc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_auto_cc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_auto_cc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_auto_cc_AWID(2 downto 0) <= S_AXI_awid(2 downto 0);
  m00_couplers_to_auto_cc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_auto_cc_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_cc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_auto_cc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_auto_cc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_auto_cc_WLAST <= S_AXI_wlast;
  m00_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
auto_cc: component Mars_AX3_auto_cc_0
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(27 downto 0) => auto_cc_to_m00_couplers_ARADDR(27 downto 0),
      m_axi_arburst(1 downto 0) => auto_cc_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_cc_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arid(2 downto 0) => auto_cc_to_m00_couplers_ARID(2 downto 0),
      m_axi_arlen(7 downto 0) => auto_cc_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_cc_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_cc_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_cc_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_cc_to_m00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_cc_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_cc_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_cc_to_m00_couplers_ARVALID,
      m_axi_awaddr(27 downto 0) => auto_cc_to_m00_couplers_AWADDR(27 downto 0),
      m_axi_awburst(1 downto 0) => auto_cc_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_cc_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(2 downto 0) => auto_cc_to_m00_couplers_AWID(2 downto 0),
      m_axi_awlen(7 downto 0) => auto_cc_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_cc_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_cc_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_cc_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_cc_to_m00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_cc_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_cc_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_cc_to_m00_couplers_AWVALID,
      m_axi_bid(2 downto 0) => auto_cc_to_m00_couplers_BID(2 downto 0),
      m_axi_bready => auto_cc_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rid(2 downto 0) => auto_cc_to_m00_couplers_RID(2 downto 0),
      m_axi_rlast => auto_cc_to_m00_couplers_RLAST,
      m_axi_rready => auto_cc_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_cc_to_m00_couplers_WLAST,
      m_axi_wready => auto_cc_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_cc_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_cc_to_m00_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(27 downto 0) => m00_couplers_to_auto_cc_ARADDR(27 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_auto_cc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_auto_cc_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arid(2 downto 0) => m00_couplers_to_auto_cc_ARID(2 downto 0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_auto_cc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_auto_cc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_auto_cc_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_auto_cc_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_auto_cc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_auto_cc_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(27 downto 0) => m00_couplers_to_auto_cc_AWADDR(27 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_auto_cc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_auto_cc_AWCACHE(3 downto 0),
      s_axi_awid(2 downto 0) => m00_couplers_to_auto_cc_AWID(2 downto 0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_cc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_cc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_cc_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_cc_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_cc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_cc_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_auto_cc_AWVALID,
      s_axi_bid(2 downto 0) => m00_couplers_to_auto_cc_BID(2 downto 0),
      s_axi_bready => m00_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m00_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rid(2 downto 0) => m00_couplers_to_auto_cc_RID(2 downto 0),
      s_axi_rlast => m00_couplers_to_auto_cc_RLAST,
      s_axi_rready => m00_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => m00_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wlast => m00_couplers_to_auto_cc_WLAST,
      s_axi_wready => m00_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => m00_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_cc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_N60JKQ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_N60JKQ;

architecture STRUCTURE of m00_couplers_imp_N60JKQ is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m00_couplers_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m00_couplers_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_couplers_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_couplers_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m00_couplers_to_m00_couplers_WVALID;
  S_AXI_arready <= m00_couplers_to_m00_couplers_ARREADY;
  S_AXI_awready <= m00_couplers_to_m00_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_m00_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_m00_couplers_RVALID;
  S_AXI_wready <= m00_couplers_to_m00_couplers_WREADY;
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_couplers_to_m00_couplers_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_couplers_to_m00_couplers_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_m00_couplers_BREADY <= S_AXI_bready;
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY <= S_AXI_rready;
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_1G7LXIZ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_1G7LXIZ;

architecture STRUCTURE of m01_couplers_imp_1G7LXIZ is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_O1ONMH is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m02_couplers_imp_O1ONMH;

architecture STRUCTURE of m02_couplers_imp_O1ONMH is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m02_couplers_to_m02_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m02_couplers_to_m02_couplers_AWVALID(0);
  M_AXI_bready(0) <= m02_couplers_to_m02_couplers_BREADY(0);
  M_AXI_rready(0) <= m02_couplers_to_m02_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m02_couplers_to_m02_couplers_WVALID(0);
  S_AXI_arready(0) <= m02_couplers_to_m02_couplers_ARREADY(0);
  S_AXI_awready(0) <= m02_couplers_to_m02_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m02_couplers_to_m02_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m02_couplers_to_m02_couplers_RVALID(0);
  S_AXI_wready(0) <= m02_couplers_to_m02_couplers_WREADY(0);
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARREADY(0) <= M_AXI_arready(0);
  m02_couplers_to_m02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWREADY(0) <= M_AXI_awready(0);
  m02_couplers_to_m02_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m02_couplers_to_m02_couplers_BREADY(0) <= S_AXI_bready(0);
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY(0) <= S_AXI_rready(0);
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY(0) <= M_AXI_wready(0);
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_1FLLJSO is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m03_couplers_imp_1FLLJSO;

architecture STRUCTURE of m03_couplers_imp_1FLLJSO is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m03_couplers_to_m03_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m03_couplers_to_m03_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m03_couplers_to_m03_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m03_couplers_to_m03_couplers_AWVALID(0);
  M_AXI_bready(0) <= m03_couplers_to_m03_couplers_BREADY(0);
  M_AXI_rready(0) <= m03_couplers_to_m03_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m03_couplers_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m03_couplers_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m03_couplers_to_m03_couplers_WVALID(0);
  S_AXI_arready(0) <= m03_couplers_to_m03_couplers_ARREADY(0);
  S_AXI_awready(0) <= m03_couplers_to_m03_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_m03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m03_couplers_to_m03_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_m03_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_m03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m03_couplers_to_m03_couplers_RVALID(0);
  S_AXI_wready(0) <= m03_couplers_to_m03_couplers_WREADY(0);
  m03_couplers_to_m03_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_m03_couplers_ARREADY(0) <= M_AXI_arready(0);
  m03_couplers_to_m03_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m03_couplers_to_m03_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_m03_couplers_AWREADY(0) <= M_AXI_awready(0);
  m03_couplers_to_m03_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m03_couplers_to_m03_couplers_BREADY(0) <= S_AXI_bready(0);
  m03_couplers_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_couplers_to_m03_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m03_couplers_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m03_couplers_to_m03_couplers_RREADY(0) <= S_AXI_rready(0);
  m03_couplers_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_couplers_to_m03_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m03_couplers_to_m03_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_m03_couplers_WREADY(0) <= M_AXI_wready(0);
  m03_couplers_to_m03_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_m03_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_OND53W is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m04_couplers_imp_OND53W;

architecture STRUCTURE of m04_couplers_imp_OND53W is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m04_couplers_to_m04_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m04_couplers_to_m04_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m04_couplers_to_m04_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m04_couplers_to_m04_couplers_AWVALID(0);
  M_AXI_bready(0) <= m04_couplers_to_m04_couplers_BREADY(0);
  M_AXI_rready(0) <= m04_couplers_to_m04_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m04_couplers_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m04_couplers_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m04_couplers_to_m04_couplers_WVALID(0);
  S_AXI_arready(0) <= m04_couplers_to_m04_couplers_ARREADY(0);
  S_AXI_awready(0) <= m04_couplers_to_m04_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_m04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m04_couplers_to_m04_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_m04_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_m04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m04_couplers_to_m04_couplers_RVALID(0);
  S_AXI_wready(0) <= m04_couplers_to_m04_couplers_WREADY(0);
  m04_couplers_to_m04_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m04_couplers_to_m04_couplers_ARREADY(0) <= M_AXI_arready(0);
  m04_couplers_to_m04_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m04_couplers_to_m04_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m04_couplers_to_m04_couplers_AWREADY(0) <= M_AXI_awready(0);
  m04_couplers_to_m04_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m04_couplers_to_m04_couplers_BREADY(0) <= S_AXI_bready(0);
  m04_couplers_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_couplers_to_m04_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m04_couplers_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m04_couplers_to_m04_couplers_RREADY(0) <= S_AXI_rready(0);
  m04_couplers_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_couplers_to_m04_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m04_couplers_to_m04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_m04_couplers_WREADY(0) <= M_AXI_wready(0);
  m04_couplers_to_m04_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_m04_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_1EX3U9P is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m05_couplers_imp_1EX3U9P;

architecture STRUCTURE of m05_couplers_imp_1EX3U9P is
  signal m05_couplers_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m05_couplers_to_m05_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m05_couplers_to_m05_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m05_couplers_to_m05_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m05_couplers_to_m05_couplers_AWVALID(0);
  M_AXI_bready(0) <= m05_couplers_to_m05_couplers_BREADY(0);
  M_AXI_rready(0) <= m05_couplers_to_m05_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m05_couplers_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m05_couplers_to_m05_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m05_couplers_to_m05_couplers_WVALID(0);
  S_AXI_arready(0) <= m05_couplers_to_m05_couplers_ARREADY(0);
  S_AXI_awready(0) <= m05_couplers_to_m05_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_m05_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m05_couplers_to_m05_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_m05_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_m05_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m05_couplers_to_m05_couplers_RVALID(0);
  S_AXI_wready(0) <= m05_couplers_to_m05_couplers_WREADY(0);
  m05_couplers_to_m05_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m05_couplers_to_m05_couplers_ARREADY(0) <= M_AXI_arready(0);
  m05_couplers_to_m05_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m05_couplers_to_m05_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m05_couplers_to_m05_couplers_AWREADY(0) <= M_AXI_awready(0);
  m05_couplers_to_m05_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m05_couplers_to_m05_couplers_BREADY(0) <= S_AXI_bready(0);
  m05_couplers_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m05_couplers_to_m05_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m05_couplers_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m05_couplers_to_m05_couplers_RREADY(0) <= S_AXI_rready(0);
  m05_couplers_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m05_couplers_to_m05_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m05_couplers_to_m05_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_m05_couplers_WREADY(0) <= M_AXI_wready(0);
  m05_couplers_to_m05_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m05_couplers_to_m05_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_PT1JFJ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m06_couplers_imp_PT1JFJ;

architecture STRUCTURE of m06_couplers_imp_PT1JFJ is
  component Mars_AX3_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component Mars_AX3_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal auto_pc_to_m06_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m06_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m06_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_m06_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m06_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m06_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m06_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal auto_pc_to_m06_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m06_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m06_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_m06_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m06_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m06_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m06_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m06_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m06_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_m06_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m06_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m06_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_m06_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m06_couplers_WVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(23 downto 0) <= auto_pc_to_m06_couplers_ARADDR(23 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_m06_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_m06_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_pc_to_m06_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_pc_to_m06_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m06_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_m06_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m06_couplers_ARVALID;
  M_AXI_awaddr(23 downto 0) <= auto_pc_to_m06_couplers_AWADDR(23 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_m06_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_m06_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_pc_to_m06_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_pc_to_m06_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m06_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_m06_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m06_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m06_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m06_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m06_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_pc_to_m06_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m06_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m06_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m06_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m06_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m06_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m06_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m06_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m06_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m06_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m06_couplers_to_auto_pc_WREADY;
  auto_pc_to_m06_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m06_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m06_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m06_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m06_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m06_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_m06_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m06_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m06_couplers_WREADY <= M_AXI_wready;
  m06_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m06_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m06_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m06_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m06_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m06_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m06_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m06_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m06_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m06_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m06_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component Mars_AX3_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(23 downto 0) => auto_pc_to_m06_couplers_ARADDR(23 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_m06_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_m06_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_pc_to_m06_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_pc_to_m06_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m06_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_auto_pc_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => auto_pc_to_m06_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_pc_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_pc_to_m06_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_m06_couplers_ARVALID,
      m_axi_awaddr(23 downto 0) => auto_pc_to_m06_couplers_AWADDR(23 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_m06_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_m06_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_pc_to_m06_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_pc_to_m06_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m06_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_auto_pc_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => auto_pc_to_m06_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_pc_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_pc_to_m06_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_m06_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m06_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m06_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rlast => auto_pc_to_m06_couplers_RLAST,
      m_axi_rready => auto_pc_to_m06_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m06_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m06_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_pc_to_m06_couplers_WLAST,
      m_axi_wready => auto_pc_to_m06_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m06_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m06_couplers_WVALID,
      s_axi_araddr(23 downto 0) => m06_couplers_to_auto_pc_ARADDR(23 downto 0),
      s_axi_arprot(2 downto 0) => m06_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arready => m06_couplers_to_auto_pc_ARREADY,
      s_axi_arvalid => m06_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(23 downto 0) => m06_couplers_to_auto_pc_AWADDR(23 downto 0),
      s_axi_awprot(2 downto 0) => m06_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awready => m06_couplers_to_auto_pc_AWREADY,
      s_axi_awvalid => m06_couplers_to_auto_pc_AWVALID,
      s_axi_bready => m06_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m06_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m06_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m06_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rready => m06_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m06_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m06_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m06_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wready => m06_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m06_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m06_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m07_couplers_imp_1DH5EV2 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m07_couplers_imp_1DH5EV2;

architecture STRUCTURE of m07_couplers_imp_1DH5EV2 is
  signal m07_couplers_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_m07_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_m07_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_m07_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m07_couplers_to_m07_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m07_couplers_to_m07_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m07_couplers_to_m07_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m07_couplers_to_m07_couplers_AWVALID(0);
  M_AXI_bready(0) <= m07_couplers_to_m07_couplers_BREADY(0);
  M_AXI_rready(0) <= m07_couplers_to_m07_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m07_couplers_to_m07_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m07_couplers_to_m07_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m07_couplers_to_m07_couplers_WVALID(0);
  S_AXI_arready(0) <= m07_couplers_to_m07_couplers_ARREADY(0);
  S_AXI_awready(0) <= m07_couplers_to_m07_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m07_couplers_to_m07_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m07_couplers_to_m07_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m07_couplers_to_m07_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m07_couplers_to_m07_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m07_couplers_to_m07_couplers_RVALID(0);
  S_AXI_wready(0) <= m07_couplers_to_m07_couplers_WREADY(0);
  m07_couplers_to_m07_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m07_couplers_to_m07_couplers_ARREADY(0) <= M_AXI_arready(0);
  m07_couplers_to_m07_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m07_couplers_to_m07_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m07_couplers_to_m07_couplers_AWREADY(0) <= M_AXI_awready(0);
  m07_couplers_to_m07_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m07_couplers_to_m07_couplers_BREADY(0) <= S_AXI_bready(0);
  m07_couplers_to_m07_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m07_couplers_to_m07_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m07_couplers_to_m07_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m07_couplers_to_m07_couplers_RREADY(0) <= S_AXI_rready(0);
  m07_couplers_to_m07_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m07_couplers_to_m07_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m07_couplers_to_m07_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m07_couplers_to_m07_couplers_WREADY(0) <= M_AXI_wready(0);
  m07_couplers_to_m07_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m07_couplers_to_m07_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m08_couplers_imp_IX2TJQ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m08_couplers_imp_IX2TJQ;

architecture STRUCTURE of m08_couplers_imp_IX2TJQ is
  signal m08_couplers_to_m08_couplers_ARADDR : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARBURST : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARCACHE : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARLEN : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARLOCK : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARPROT : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARQOS : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARREGION : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARSIZE : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWADDR : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWBURST : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWCACHE : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWLEN : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWLOCK : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWPROT : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWQOS : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWREGION : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWSIZE : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_BREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_BRESP : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_BVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RDATA : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RLAST : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RRESP : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WDATA : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WLAST : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WSTRB : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m08_couplers_to_m08_couplers_ARADDR;
  M_AXI_arburst <= m08_couplers_to_m08_couplers_ARBURST;
  M_AXI_arcache <= m08_couplers_to_m08_couplers_ARCACHE;
  M_AXI_arlen <= m08_couplers_to_m08_couplers_ARLEN;
  M_AXI_arlock <= m08_couplers_to_m08_couplers_ARLOCK;
  M_AXI_arprot <= m08_couplers_to_m08_couplers_ARPROT;
  M_AXI_arqos <= m08_couplers_to_m08_couplers_ARQOS;
  M_AXI_arregion <= m08_couplers_to_m08_couplers_ARREGION;
  M_AXI_arsize <= m08_couplers_to_m08_couplers_ARSIZE;
  M_AXI_arvalid <= m08_couplers_to_m08_couplers_ARVALID;
  M_AXI_awaddr <= m08_couplers_to_m08_couplers_AWADDR;
  M_AXI_awburst <= m08_couplers_to_m08_couplers_AWBURST;
  M_AXI_awcache <= m08_couplers_to_m08_couplers_AWCACHE;
  M_AXI_awlen <= m08_couplers_to_m08_couplers_AWLEN;
  M_AXI_awlock <= m08_couplers_to_m08_couplers_AWLOCK;
  M_AXI_awprot <= m08_couplers_to_m08_couplers_AWPROT;
  M_AXI_awqos <= m08_couplers_to_m08_couplers_AWQOS;
  M_AXI_awregion <= m08_couplers_to_m08_couplers_AWREGION;
  M_AXI_awsize <= m08_couplers_to_m08_couplers_AWSIZE;
  M_AXI_awvalid <= m08_couplers_to_m08_couplers_AWVALID;
  M_AXI_bready <= m08_couplers_to_m08_couplers_BREADY;
  M_AXI_rready <= m08_couplers_to_m08_couplers_RREADY;
  M_AXI_wdata <= m08_couplers_to_m08_couplers_WDATA;
  M_AXI_wlast <= m08_couplers_to_m08_couplers_WLAST;
  M_AXI_wstrb <= m08_couplers_to_m08_couplers_WSTRB;
  M_AXI_wvalid <= m08_couplers_to_m08_couplers_WVALID;
  S_AXI_arready <= m08_couplers_to_m08_couplers_ARREADY;
  S_AXI_awready <= m08_couplers_to_m08_couplers_AWREADY;
  S_AXI_bresp <= m08_couplers_to_m08_couplers_BRESP;
  S_AXI_bvalid <= m08_couplers_to_m08_couplers_BVALID;
  S_AXI_rdata <= m08_couplers_to_m08_couplers_RDATA;
  S_AXI_rlast <= m08_couplers_to_m08_couplers_RLAST;
  S_AXI_rresp <= m08_couplers_to_m08_couplers_RRESP;
  S_AXI_rvalid <= m08_couplers_to_m08_couplers_RVALID;
  S_AXI_wready <= m08_couplers_to_m08_couplers_WREADY;
  m08_couplers_to_m08_couplers_ARADDR <= S_AXI_araddr;
  m08_couplers_to_m08_couplers_ARBURST <= S_AXI_arburst;
  m08_couplers_to_m08_couplers_ARCACHE <= S_AXI_arcache;
  m08_couplers_to_m08_couplers_ARLEN <= S_AXI_arlen;
  m08_couplers_to_m08_couplers_ARLOCK <= S_AXI_arlock;
  m08_couplers_to_m08_couplers_ARPROT <= S_AXI_arprot;
  m08_couplers_to_m08_couplers_ARQOS <= S_AXI_arqos;
  m08_couplers_to_m08_couplers_ARREADY <= M_AXI_arready;
  m08_couplers_to_m08_couplers_ARREGION <= S_AXI_arregion;
  m08_couplers_to_m08_couplers_ARSIZE <= S_AXI_arsize;
  m08_couplers_to_m08_couplers_ARVALID <= S_AXI_arvalid;
  m08_couplers_to_m08_couplers_AWADDR <= S_AXI_awaddr;
  m08_couplers_to_m08_couplers_AWBURST <= S_AXI_awburst;
  m08_couplers_to_m08_couplers_AWCACHE <= S_AXI_awcache;
  m08_couplers_to_m08_couplers_AWLEN <= S_AXI_awlen;
  m08_couplers_to_m08_couplers_AWLOCK <= S_AXI_awlock;
  m08_couplers_to_m08_couplers_AWPROT <= S_AXI_awprot;
  m08_couplers_to_m08_couplers_AWQOS <= S_AXI_awqos;
  m08_couplers_to_m08_couplers_AWREADY <= M_AXI_awready;
  m08_couplers_to_m08_couplers_AWREGION <= S_AXI_awregion;
  m08_couplers_to_m08_couplers_AWSIZE <= S_AXI_awsize;
  m08_couplers_to_m08_couplers_AWVALID <= S_AXI_awvalid;
  m08_couplers_to_m08_couplers_BREADY <= S_AXI_bready;
  m08_couplers_to_m08_couplers_BRESP <= M_AXI_bresp;
  m08_couplers_to_m08_couplers_BVALID <= M_AXI_bvalid;
  m08_couplers_to_m08_couplers_RDATA <= M_AXI_rdata;
  m08_couplers_to_m08_couplers_RLAST <= M_AXI_rlast;
  m08_couplers_to_m08_couplers_RREADY <= S_AXI_rready;
  m08_couplers_to_m08_couplers_RRESP <= M_AXI_rresp;
  m08_couplers_to_m08_couplers_RVALID <= M_AXI_rvalid;
  m08_couplers_to_m08_couplers_WDATA <= S_AXI_wdata;
  m08_couplers_to_m08_couplers_WLAST <= S_AXI_wlast;
  m08_couplers_to_m08_couplers_WREADY <= M_AXI_wready;
  m08_couplers_to_m08_couplers_WSTRB <= S_AXI_wstrb;
  m08_couplers_to_m08_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m09_couplers_imp_1BKZJLJ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m09_couplers_imp_1BKZJLJ;

architecture STRUCTURE of m09_couplers_imp_1BKZJLJ is
  signal m09_couplers_to_m09_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_ARREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_ARVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_AWREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_BREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_m09_couplers_BVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_RREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_m09_couplers_RVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_WREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_m09_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m09_couplers_to_m09_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m09_couplers_to_m09_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m09_couplers_to_m09_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m09_couplers_to_m09_couplers_AWVALID;
  M_AXI_bready <= m09_couplers_to_m09_couplers_BREADY;
  M_AXI_rready <= m09_couplers_to_m09_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m09_couplers_to_m09_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m09_couplers_to_m09_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m09_couplers_to_m09_couplers_WVALID;
  S_AXI_arready <= m09_couplers_to_m09_couplers_ARREADY;
  S_AXI_awready <= m09_couplers_to_m09_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m09_couplers_to_m09_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m09_couplers_to_m09_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m09_couplers_to_m09_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m09_couplers_to_m09_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m09_couplers_to_m09_couplers_RVALID;
  S_AXI_wready <= m09_couplers_to_m09_couplers_WREADY;
  m09_couplers_to_m09_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m09_couplers_to_m09_couplers_ARREADY <= M_AXI_arready;
  m09_couplers_to_m09_couplers_ARVALID <= S_AXI_arvalid;
  m09_couplers_to_m09_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m09_couplers_to_m09_couplers_AWREADY <= M_AXI_awready;
  m09_couplers_to_m09_couplers_AWVALID <= S_AXI_awvalid;
  m09_couplers_to_m09_couplers_BREADY <= S_AXI_bready;
  m09_couplers_to_m09_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m09_couplers_to_m09_couplers_BVALID <= M_AXI_bvalid;
  m09_couplers_to_m09_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m09_couplers_to_m09_couplers_RREADY <= S_AXI_rready;
  m09_couplers_to_m09_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m09_couplers_to_m09_couplers_RVALID <= M_AXI_rvalid;
  m09_couplers_to_m09_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m09_couplers_to_m09_couplers_WREADY <= M_AXI_wready;
  m09_couplers_to_m09_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m09_couplers_to_m09_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m10_couplers_imp_10SM342 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m10_couplers_imp_10SM342;

architecture STRUCTURE of m10_couplers_imp_10SM342 is
  signal m10_couplers_to_m10_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_ARREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_ARVALID : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_AWREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_AWVALID : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_BREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_m10_couplers_BVALID : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_RREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_m10_couplers_RVALID : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_WREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m10_couplers_to_m10_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m10_couplers_to_m10_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m10_couplers_to_m10_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m10_couplers_to_m10_couplers_AWVALID;
  M_AXI_bready <= m10_couplers_to_m10_couplers_BREADY;
  M_AXI_rready <= m10_couplers_to_m10_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m10_couplers_to_m10_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= m10_couplers_to_m10_couplers_WVALID;
  S_AXI_arready <= m10_couplers_to_m10_couplers_ARREADY;
  S_AXI_awready <= m10_couplers_to_m10_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m10_couplers_to_m10_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m10_couplers_to_m10_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m10_couplers_to_m10_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m10_couplers_to_m10_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m10_couplers_to_m10_couplers_RVALID;
  S_AXI_wready <= m10_couplers_to_m10_couplers_WREADY;
  m10_couplers_to_m10_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m10_couplers_to_m10_couplers_ARREADY <= M_AXI_arready;
  m10_couplers_to_m10_couplers_ARVALID <= S_AXI_arvalid;
  m10_couplers_to_m10_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m10_couplers_to_m10_couplers_AWREADY <= M_AXI_awready;
  m10_couplers_to_m10_couplers_AWVALID <= S_AXI_awvalid;
  m10_couplers_to_m10_couplers_BREADY <= S_AXI_bready;
  m10_couplers_to_m10_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m10_couplers_to_m10_couplers_BVALID <= M_AXI_bvalid;
  m10_couplers_to_m10_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m10_couplers_to_m10_couplers_RREADY <= S_AXI_rready;
  m10_couplers_to_m10_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m10_couplers_to_m10_couplers_RVALID <= M_AXI_rvalid;
  m10_couplers_to_m10_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m10_couplers_to_m10_couplers_WREADY <= M_AXI_wready;
  m10_couplers_to_m10_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_local_memory_imp_1QA78GH is
  port (
    Clk : in STD_LOGIC;
    LMB_M1_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_M1_addrstrobe : in STD_LOGIC;
    LMB_M1_ce : out STD_LOGIC;
    LMB_M1_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_M1_readstrobe : in STD_LOGIC;
    LMB_M1_ready : out STD_LOGIC;
    LMB_M1_ue : out STD_LOGIC;
    LMB_M1_wait : out STD_LOGIC;
    LMB_M_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_M_addrstrobe : in STD_LOGIC;
    LMB_M_be : in STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_M_ce : out STD_LOGIC;
    LMB_M_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_M_readstrobe : in STD_LOGIC;
    LMB_M_ready : out STD_LOGIC;
    LMB_M_ue : out STD_LOGIC;
    LMB_M_wait : out STD_LOGIC;
    LMB_M_writedbus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_M_writestrobe : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC
  );
end microblaze_local_memory_imp_1QA78GH;

architecture STRUCTURE of microblaze_local_memory_imp_1QA78GH is
  component Mars_AX3_dlmb_v10_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component Mars_AX3_dlmb_v10_0;
  component Mars_AX3_ilmb_v10_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component Mars_AX3_ilmb_v10_0;
  component Mars_AX3_dlmb_bram_if_cntlr_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component Mars_AX3_dlmb_bram_if_cntlr_0;
  component Mars_AX3_ilmb_bram_if_cntlr_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component Mars_AX3_ilmb_bram_if_cntlr_0;
  component Mars_AX3_lmb_bram_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component Mars_AX3_lmb_bram_0;
  signal Conn1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal Conn1_ADDRSTROBE : STD_LOGIC;
  signal Conn1_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal Conn1_CE : STD_LOGIC;
  signal Conn1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal Conn1_READSTROBE : STD_LOGIC;
  signal Conn1_READY : STD_LOGIC;
  signal Conn1_UE : STD_LOGIC;
  signal Conn1_WAIT : STD_LOGIC;
  signal Conn1_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal Conn1_WRITESTROBE : STD_LOGIC;
  signal Conn2_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal Conn2_ADDRSTROBE : STD_LOGIC;
  signal Conn2_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal Conn2_CE : STD_LOGIC;
  signal Conn2_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal Conn2_READSTROBE : STD_LOGIC;
  signal Conn2_READY : STD_LOGIC;
  signal Conn2_UE : STD_LOGIC;
  signal Conn2_WAIT : STD_LOGIC;
  signal Conn2_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal Conn2_WRITESTROBE : STD_LOGIC;
  signal Conn3_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal Conn3_ADDRSTROBE : STD_LOGIC;
  signal Conn3_CE : STD_LOGIC;
  signal Conn3_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal Conn3_READSTROBE : STD_LOGIC;
  signal Conn3_READY : STD_LOGIC;
  signal Conn3_UE : STD_LOGIC;
  signal Conn3_WAIT : STD_LOGIC;
  signal Conn_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal Conn_ADDRSTROBE : STD_LOGIC;
  signal Conn_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal Conn_CE : STD_LOGIC;
  signal Conn_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal Conn_READSTROBE : STD_LOGIC;
  signal Conn_READY : STD_LOGIC;
  signal Conn_UE : STD_LOGIC;
  signal Conn_WAIT : STD_LOGIC;
  signal Conn_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal Conn_WRITESTROBE : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC;
  signal dlmb_bram_if_cntlr_BRAM_PORT_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal dlmb_bram_if_cntlr_BRAM_PORT_CLK : STD_LOGIC;
  signal dlmb_bram_if_cntlr_BRAM_PORT_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal dlmb_bram_if_cntlr_BRAM_PORT_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dlmb_bram_if_cntlr_BRAM_PORT_EN : STD_LOGIC;
  signal dlmb_bram_if_cntlr_BRAM_PORT_RST : STD_LOGIC;
  signal dlmb_bram_if_cntlr_BRAM_PORT_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal ilmb_bram_if_cntlr_BRAM_PORT_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ilmb_bram_if_cntlr_BRAM_PORT_CLK : STD_LOGIC;
  signal ilmb_bram_if_cntlr_BRAM_PORT_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ilmb_bram_if_cntlr_BRAM_PORT_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ilmb_bram_if_cntlr_BRAM_PORT_EN : STD_LOGIC;
  signal ilmb_bram_if_cntlr_BRAM_PORT_RST : STD_LOGIC;
  signal ilmb_bram_if_cntlr_BRAM_PORT_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_dlmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_ilmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_lmb_bram_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_lmb_bram_rstb_busy_UNCONNECTED : STD_LOGIC;
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of dlmb_bram_if_cntlr : label is "byte  0x00000000 32 > Mars_AX3 CPU/microblaze_local_memory/lmb_bram";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dlmb_bram_if_cntlr : label is "yes";
begin
  Conn2_ABUS(0 to 31) <= LMB_M_abus(0 to 31);
  Conn2_ADDRSTROBE <= LMB_M_addrstrobe;
  Conn2_BE(0 to 3) <= LMB_M_be(0 to 3);
  Conn2_READSTROBE <= LMB_M_readstrobe;
  Conn2_WRITEDBUS(0 to 31) <= LMB_M_writedbus(0 to 31);
  Conn2_WRITESTROBE <= LMB_M_writestrobe;
  Conn3_ABUS(0 to 31) <= LMB_M1_abus(0 to 31);
  Conn3_ADDRSTROBE <= LMB_M1_addrstrobe;
  Conn3_READSTROBE <= LMB_M1_readstrobe;
  LMB_M1_ce <= Conn3_CE;
  LMB_M1_readdbus(0 to 31) <= Conn3_READDBUS(0 to 31);
  LMB_M1_ready <= Conn3_READY;
  LMB_M1_ue <= Conn3_UE;
  LMB_M1_wait <= Conn3_WAIT;
  LMB_M_ce <= Conn2_CE;
  LMB_M_readdbus(0 to 31) <= Conn2_READDBUS(0 to 31);
  LMB_M_ready <= Conn2_READY;
  LMB_M_ue <= Conn2_UE;
  LMB_M_wait <= Conn2_WAIT;
  Net <= LMB_Rst;
  Net1 <= Clk;
dlmb_bram_if_cntlr: component Mars_AX3_dlmb_bram_if_cntlr_0
     port map (
      BRAM_Addr_A(0 to 31) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(0 to 31),
      BRAM_Clk_A => dlmb_bram_if_cntlr_BRAM_PORT_CLK,
      BRAM_Din_A(0) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(31),
      BRAM_Din_A(1) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(30),
      BRAM_Din_A(2) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(29),
      BRAM_Din_A(3) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(28),
      BRAM_Din_A(4) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(27),
      BRAM_Din_A(5) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(26),
      BRAM_Din_A(6) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(25),
      BRAM_Din_A(7) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(24),
      BRAM_Din_A(8) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(23),
      BRAM_Din_A(9) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(22),
      BRAM_Din_A(10) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(21),
      BRAM_Din_A(11) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(20),
      BRAM_Din_A(12) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(19),
      BRAM_Din_A(13) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(18),
      BRAM_Din_A(14) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(17),
      BRAM_Din_A(15) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(16),
      BRAM_Din_A(16) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(15),
      BRAM_Din_A(17) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(14),
      BRAM_Din_A(18) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(13),
      BRAM_Din_A(19) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(12),
      BRAM_Din_A(20) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(11),
      BRAM_Din_A(21) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(10),
      BRAM_Din_A(22) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(9),
      BRAM_Din_A(23) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(8),
      BRAM_Din_A(24) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(7),
      BRAM_Din_A(25) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(6),
      BRAM_Din_A(26) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(5),
      BRAM_Din_A(27) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(4),
      BRAM_Din_A(28) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(3),
      BRAM_Din_A(29) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(2),
      BRAM_Din_A(30) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(1),
      BRAM_Din_A(31) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(0),
      BRAM_Dout_A(0 to 31) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(0 to 31),
      BRAM_EN_A => dlmb_bram_if_cntlr_BRAM_PORT_EN,
      BRAM_Rst_A => dlmb_bram_if_cntlr_BRAM_PORT_RST,
      BRAM_WEN_A(0 to 3) => dlmb_bram_if_cntlr_BRAM_PORT_WE(0 to 3),
      LMB_ABus(0 to 31) => Conn_ABUS(0 to 31),
      LMB_AddrStrobe => Conn_ADDRSTROBE,
      LMB_BE(0 to 3) => Conn_BE(0 to 3),
      LMB_Clk => Net1,
      LMB_ReadStrobe => Conn_READSTROBE,
      LMB_Rst => Net,
      LMB_WriteDBus(0 to 31) => Conn_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => Conn_WRITESTROBE,
      Sl_CE => Conn_CE,
      Sl_DBus(0 to 31) => Conn_READDBUS(0 to 31),
      Sl_Ready => Conn_READY,
      Sl_UE => Conn_UE,
      Sl_Wait => Conn_WAIT
    );
dlmb_v10: component Mars_AX3_dlmb_v10_0
     port map (
      LMB_ABus(0 to 31) => Conn_ABUS(0 to 31),
      LMB_AddrStrobe => Conn_ADDRSTROBE,
      LMB_BE(0 to 3) => Conn_BE(0 to 3),
      LMB_CE => Conn2_CE,
      LMB_Clk => Net1,
      LMB_ReadDBus(0 to 31) => Conn2_READDBUS(0 to 31),
      LMB_ReadStrobe => Conn_READSTROBE,
      LMB_Ready => Conn2_READY,
      LMB_Rst => NLW_dlmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => Conn2_UE,
      LMB_Wait => Conn2_WAIT,
      LMB_WriteDBus(0 to 31) => Conn_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => Conn_WRITESTROBE,
      M_ABus(0 to 31) => Conn2_ABUS(0 to 31),
      M_AddrStrobe => Conn2_ADDRSTROBE,
      M_BE(0 to 3) => Conn2_BE(0 to 3),
      M_DBus(0 to 31) => Conn2_WRITEDBUS(0 to 31),
      M_ReadStrobe => Conn2_READSTROBE,
      M_WriteStrobe => Conn2_WRITESTROBE,
      SYS_Rst => Net,
      Sl_CE(0) => Conn_CE,
      Sl_DBus(0 to 31) => Conn_READDBUS(0 to 31),
      Sl_Ready(0) => Conn_READY,
      Sl_UE(0) => Conn_UE,
      Sl_Wait(0) => Conn_WAIT
    );
ilmb_bram_if_cntlr: component Mars_AX3_ilmb_bram_if_cntlr_0
     port map (
      BRAM_Addr_A(0 to 31) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(0 to 31),
      BRAM_Clk_A => ilmb_bram_if_cntlr_BRAM_PORT_CLK,
      BRAM_Din_A(0) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(31),
      BRAM_Din_A(1) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(30),
      BRAM_Din_A(2) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(29),
      BRAM_Din_A(3) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(28),
      BRAM_Din_A(4) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(27),
      BRAM_Din_A(5) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(26),
      BRAM_Din_A(6) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(25),
      BRAM_Din_A(7) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(24),
      BRAM_Din_A(8) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(23),
      BRAM_Din_A(9) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(22),
      BRAM_Din_A(10) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(21),
      BRAM_Din_A(11) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(20),
      BRAM_Din_A(12) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(19),
      BRAM_Din_A(13) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(18),
      BRAM_Din_A(14) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(17),
      BRAM_Din_A(15) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(16),
      BRAM_Din_A(16) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(15),
      BRAM_Din_A(17) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(14),
      BRAM_Din_A(18) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(13),
      BRAM_Din_A(19) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(12),
      BRAM_Din_A(20) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(11),
      BRAM_Din_A(21) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(10),
      BRAM_Din_A(22) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(9),
      BRAM_Din_A(23) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(8),
      BRAM_Din_A(24) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(7),
      BRAM_Din_A(25) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(6),
      BRAM_Din_A(26) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(5),
      BRAM_Din_A(27) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(4),
      BRAM_Din_A(28) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(3),
      BRAM_Din_A(29) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(2),
      BRAM_Din_A(30) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(1),
      BRAM_Din_A(31) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(0),
      BRAM_Dout_A(0 to 31) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(0 to 31),
      BRAM_EN_A => ilmb_bram_if_cntlr_BRAM_PORT_EN,
      BRAM_Rst_A => ilmb_bram_if_cntlr_BRAM_PORT_RST,
      BRAM_WEN_A(0 to 3) => ilmb_bram_if_cntlr_BRAM_PORT_WE(0 to 3),
      LMB_ABus(0 to 31) => Conn1_ABUS(0 to 31),
      LMB_AddrStrobe => Conn1_ADDRSTROBE,
      LMB_BE(0 to 3) => Conn1_BE(0 to 3),
      LMB_Clk => Net1,
      LMB_ReadStrobe => Conn1_READSTROBE,
      LMB_Rst => Net,
      LMB_WriteDBus(0 to 31) => Conn1_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => Conn1_WRITESTROBE,
      Sl_CE => Conn1_CE,
      Sl_DBus(0 to 31) => Conn1_READDBUS(0 to 31),
      Sl_Ready => Conn1_READY,
      Sl_UE => Conn1_UE,
      Sl_Wait => Conn1_WAIT
    );
ilmb_v10: component Mars_AX3_ilmb_v10_0
     port map (
      LMB_ABus(0 to 31) => Conn1_ABUS(0 to 31),
      LMB_AddrStrobe => Conn1_ADDRSTROBE,
      LMB_BE(0 to 3) => Conn1_BE(0 to 3),
      LMB_CE => Conn3_CE,
      LMB_Clk => Net1,
      LMB_ReadDBus(0 to 31) => Conn3_READDBUS(0 to 31),
      LMB_ReadStrobe => Conn1_READSTROBE,
      LMB_Ready => Conn3_READY,
      LMB_Rst => NLW_ilmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => Conn3_UE,
      LMB_Wait => Conn3_WAIT,
      LMB_WriteDBus(0 to 31) => Conn1_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => Conn1_WRITESTROBE,
      M_ABus(0 to 31) => Conn3_ABUS(0 to 31),
      M_AddrStrobe => Conn3_ADDRSTROBE,
      M_BE(0 to 3) => B"0000",
      M_DBus(0 to 31) => B"00000000000000000000000000000000",
      M_ReadStrobe => Conn3_READSTROBE,
      M_WriteStrobe => '0',
      SYS_Rst => Net,
      Sl_CE(0) => Conn1_CE,
      Sl_DBus(0 to 31) => Conn1_READDBUS(0 to 31),
      Sl_Ready(0) => Conn1_READY,
      Sl_UE(0) => Conn1_UE,
      Sl_Wait(0) => Conn1_WAIT
    );
lmb_bram: component Mars_AX3_lmb_bram_0
     port map (
      addra(31) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(0),
      addra(30) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(1),
      addra(29) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(2),
      addra(28) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(3),
      addra(27) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(4),
      addra(26) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(5),
      addra(25) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(6),
      addra(24) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(7),
      addra(23) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(8),
      addra(22) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(9),
      addra(21) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(10),
      addra(20) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(11),
      addra(19) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(12),
      addra(18) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(13),
      addra(17) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(14),
      addra(16) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(15),
      addra(15) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(16),
      addra(14) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(17),
      addra(13) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(18),
      addra(12) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(19),
      addra(11) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(20),
      addra(10) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(21),
      addra(9) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(22),
      addra(8) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(23),
      addra(7) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(24),
      addra(6) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(25),
      addra(5) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(26),
      addra(4) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(27),
      addra(3) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(28),
      addra(2) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(29),
      addra(1) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(30),
      addra(0) => dlmb_bram_if_cntlr_BRAM_PORT_ADDR(31),
      addrb(31) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(0),
      addrb(30) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(1),
      addrb(29) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(2),
      addrb(28) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(3),
      addrb(27) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(4),
      addrb(26) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(5),
      addrb(25) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(6),
      addrb(24) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(7),
      addrb(23) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(8),
      addrb(22) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(9),
      addrb(21) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(10),
      addrb(20) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(11),
      addrb(19) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(12),
      addrb(18) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(13),
      addrb(17) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(14),
      addrb(16) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(15),
      addrb(15) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(16),
      addrb(14) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(17),
      addrb(13) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(18),
      addrb(12) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(19),
      addrb(11) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(20),
      addrb(10) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(21),
      addrb(9) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(22),
      addrb(8) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(23),
      addrb(7) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(24),
      addrb(6) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(25),
      addrb(5) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(26),
      addrb(4) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(27),
      addrb(3) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(28),
      addrb(2) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(29),
      addrb(1) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(30),
      addrb(0) => ilmb_bram_if_cntlr_BRAM_PORT_ADDR(31),
      clka => dlmb_bram_if_cntlr_BRAM_PORT_CLK,
      clkb => ilmb_bram_if_cntlr_BRAM_PORT_CLK,
      dina(31) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(0),
      dina(30) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(1),
      dina(29) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(2),
      dina(28) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(3),
      dina(27) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(4),
      dina(26) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(5),
      dina(25) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(6),
      dina(24) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(7),
      dina(23) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(8),
      dina(22) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(9),
      dina(21) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(10),
      dina(20) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(11),
      dina(19) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(12),
      dina(18) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(13),
      dina(17) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(14),
      dina(16) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(15),
      dina(15) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(16),
      dina(14) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(17),
      dina(13) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(18),
      dina(12) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(19),
      dina(11) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(20),
      dina(10) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(21),
      dina(9) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(22),
      dina(8) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(23),
      dina(7) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(24),
      dina(6) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(25),
      dina(5) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(26),
      dina(4) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(27),
      dina(3) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(28),
      dina(2) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(29),
      dina(1) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(30),
      dina(0) => dlmb_bram_if_cntlr_BRAM_PORT_DIN(31),
      dinb(31) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(0),
      dinb(30) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(1),
      dinb(29) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(2),
      dinb(28) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(3),
      dinb(27) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(4),
      dinb(26) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(5),
      dinb(25) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(6),
      dinb(24) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(7),
      dinb(23) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(8),
      dinb(22) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(9),
      dinb(21) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(10),
      dinb(20) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(11),
      dinb(19) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(12),
      dinb(18) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(13),
      dinb(17) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(14),
      dinb(16) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(15),
      dinb(15) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(16),
      dinb(14) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(17),
      dinb(13) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(18),
      dinb(12) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(19),
      dinb(11) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(20),
      dinb(10) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(21),
      dinb(9) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(22),
      dinb(8) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(23),
      dinb(7) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(24),
      dinb(6) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(25),
      dinb(5) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(26),
      dinb(4) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(27),
      dinb(3) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(28),
      dinb(2) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(29),
      dinb(1) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(30),
      dinb(0) => ilmb_bram_if_cntlr_BRAM_PORT_DIN(31),
      douta(31 downto 0) => dlmb_bram_if_cntlr_BRAM_PORT_DOUT(31 downto 0),
      doutb(31 downto 0) => ilmb_bram_if_cntlr_BRAM_PORT_DOUT(31 downto 0),
      ena => dlmb_bram_if_cntlr_BRAM_PORT_EN,
      enb => ilmb_bram_if_cntlr_BRAM_PORT_EN,
      rsta => dlmb_bram_if_cntlr_BRAM_PORT_RST,
      rsta_busy => NLW_lmb_bram_rsta_busy_UNCONNECTED,
      rstb => ilmb_bram_if_cntlr_BRAM_PORT_RST,
      rstb_busy => NLW_lmb_bram_rstb_busy_UNCONNECTED,
      wea(3) => dlmb_bram_if_cntlr_BRAM_PORT_WE(0),
      wea(2) => dlmb_bram_if_cntlr_BRAM_PORT_WE(1),
      wea(1) => dlmb_bram_if_cntlr_BRAM_PORT_WE(2),
      wea(0) => dlmb_bram_if_cntlr_BRAM_PORT_WE(3),
      web(3) => ilmb_bram_if_cntlr_BRAM_PORT_WE(0),
      web(2) => ilmb_bram_if_cntlr_BRAM_PORT_WE(1),
      web(1) => ilmb_bram_if_cntlr_BRAM_PORT_WE(2),
      web(0) => ilmb_bram_if_cntlr_BRAM_PORT_WE(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1B8KWGO is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s00_couplers_imp_1B8KWGO;

architecture STRUCTURE of s00_couplers_imp_1B8KWGO is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= s00_couplers_to_s00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= s00_couplers_to_s00_couplers_AWVALID(0);
  M_AXI_bready(0) <= s00_couplers_to_s00_couplers_BREADY(0);
  M_AXI_rready(0) <= s00_couplers_to_s00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= s00_couplers_to_s00_couplers_WVALID(0);
  S_AXI_arready(0) <= s00_couplers_to_s00_couplers_ARREADY(0);
  S_AXI_awready(0) <= s00_couplers_to_s00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s00_couplers_to_s00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s00_couplers_to_s00_couplers_RVALID(0);
  S_AXI_wready(0) <= s00_couplers_to_s00_couplers_WREADY(0);
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARREADY(0) <= M_AXI_arready(0);
  s00_couplers_to_s00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWREADY(0) <= M_AXI_awready(0);
  s00_couplers_to_s00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s00_couplers_to_s00_couplers_BREADY(0) <= S_AXI_bready(0);
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RREADY(0) <= S_AXI_rready(0);
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WREADY(0) <= M_AXI_wready(0);
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_NU0XMW is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s00_couplers_imp_NU0XMW;

architecture STRUCTURE of s00_couplers_imp_NU0XMW is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s00_couplers_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s00_couplers_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= s00_couplers_to_s00_couplers_ARID(0);
  M_AXI_arlen(7 downto 0) <= s00_couplers_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= s00_couplers_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s00_couplers_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s00_couplers_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid(0) <= s00_couplers_to_s00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s00_couplers_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s00_couplers_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= s00_couplers_to_s00_couplers_AWID(0);
  M_AXI_awlen(7 downto 0) <= s00_couplers_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= s00_couplers_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s00_couplers_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s00_couplers_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= s00_couplers_to_s00_couplers_AWVALID(0);
  M_AXI_bready(0) <= s00_couplers_to_s00_couplers_BREADY(0);
  M_AXI_rready(0) <= s00_couplers_to_s00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wlast(0) <= s00_couplers_to_s00_couplers_WLAST(0);
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= s00_couplers_to_s00_couplers_WVALID(0);
  S_AXI_arready(0) <= s00_couplers_to_s00_couplers_ARREADY(0);
  S_AXI_awready(0) <= s00_couplers_to_s00_couplers_AWREADY(0);
  S_AXI_bid(2 downto 0) <= s00_couplers_to_s00_couplers_BID(2 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s00_couplers_to_s00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rid(2 downto 0) <= s00_couplers_to_s00_couplers_RID(2 downto 0);
  S_AXI_rlast(0) <= s00_couplers_to_s00_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s00_couplers_to_s00_couplers_RVALID(0);
  S_AXI_wready(0) <= s00_couplers_to_s00_couplers_WREADY(0);
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_s00_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_s00_couplers_ARID(0) <= S_AXI_arid(0);
  s00_couplers_to_s00_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_s00_couplers_ARLOCK(0) <= S_AXI_arlock(0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_s00_couplers_ARREADY(0) <= M_AXI_arready(0);
  s00_couplers_to_s00_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_s00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_s00_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_s00_couplers_AWID(0) <= S_AXI_awid(0);
  s00_couplers_to_s00_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_s00_couplers_AWLOCK(0) <= S_AXI_awlock(0);
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_s00_couplers_AWREADY(0) <= M_AXI_awready(0);
  s00_couplers_to_s00_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_s00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s00_couplers_to_s00_couplers_BID(2 downto 0) <= M_AXI_bid(2 downto 0);
  s00_couplers_to_s00_couplers_BREADY(0) <= S_AXI_bready(0);
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RID(2 downto 0) <= M_AXI_rid(2 downto 0);
  s00_couplers_to_s00_couplers_RLAST(0) <= M_AXI_rlast(0);
  s00_couplers_to_s00_couplers_RREADY(0) <= S_AXI_rready(0);
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WLAST(0) <= S_AXI_wlast(0);
  s00_couplers_to_s00_couplers_WREADY(0) <= M_AXI_wready(0);
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_1FSYNC9 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s01_couplers_imp_1FSYNC9;

architecture STRUCTURE of s01_couplers_imp_1FSYNC9 is
  signal s01_couplers_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s01_couplers_to_s01_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s01_couplers_to_s01_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s01_couplers_to_s01_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= s01_couplers_to_s01_couplers_ARID(0);
  M_AXI_arlen(7 downto 0) <= s01_couplers_to_s01_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= s01_couplers_to_s01_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= s01_couplers_to_s01_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s01_couplers_to_s01_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s01_couplers_to_s01_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid(0) <= s01_couplers_to_s01_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= s01_couplers_to_s01_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s01_couplers_to_s01_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s01_couplers_to_s01_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= s01_couplers_to_s01_couplers_AWID(0);
  M_AXI_awlen(7 downto 0) <= s01_couplers_to_s01_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= s01_couplers_to_s01_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= s01_couplers_to_s01_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s01_couplers_to_s01_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s01_couplers_to_s01_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= s01_couplers_to_s01_couplers_AWVALID(0);
  M_AXI_bready(0) <= s01_couplers_to_s01_couplers_BREADY(0);
  M_AXI_rready(0) <= s01_couplers_to_s01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= s01_couplers_to_s01_couplers_WDATA(31 downto 0);
  M_AXI_wlast(0) <= s01_couplers_to_s01_couplers_WLAST(0);
  M_AXI_wstrb(3 downto 0) <= s01_couplers_to_s01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= s01_couplers_to_s01_couplers_WVALID(0);
  S_AXI_arready(0) <= s01_couplers_to_s01_couplers_ARREADY(0);
  S_AXI_awready(0) <= s01_couplers_to_s01_couplers_AWREADY(0);
  S_AXI_bid(2 downto 0) <= s01_couplers_to_s01_couplers_BID(2 downto 0);
  S_AXI_bresp(1 downto 0) <= s01_couplers_to_s01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s01_couplers_to_s01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= s01_couplers_to_s01_couplers_RDATA(31 downto 0);
  S_AXI_rid(2 downto 0) <= s01_couplers_to_s01_couplers_RID(2 downto 0);
  S_AXI_rlast(0) <= s01_couplers_to_s01_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= s01_couplers_to_s01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s01_couplers_to_s01_couplers_RVALID(0);
  S_AXI_wready(0) <= s01_couplers_to_s01_couplers_WREADY(0);
  s01_couplers_to_s01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s01_couplers_to_s01_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s01_couplers_to_s01_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s01_couplers_to_s01_couplers_ARID(0) <= S_AXI_arid(0);
  s01_couplers_to_s01_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s01_couplers_to_s01_couplers_ARLOCK(0) <= S_AXI_arlock(0);
  s01_couplers_to_s01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s01_couplers_to_s01_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s01_couplers_to_s01_couplers_ARREADY(0) <= M_AXI_arready(0);
  s01_couplers_to_s01_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s01_couplers_to_s01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s01_couplers_to_s01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s01_couplers_to_s01_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s01_couplers_to_s01_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s01_couplers_to_s01_couplers_AWID(0) <= S_AXI_awid(0);
  s01_couplers_to_s01_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s01_couplers_to_s01_couplers_AWLOCK(0) <= S_AXI_awlock(0);
  s01_couplers_to_s01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s01_couplers_to_s01_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s01_couplers_to_s01_couplers_AWREADY(0) <= M_AXI_awready(0);
  s01_couplers_to_s01_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s01_couplers_to_s01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s01_couplers_to_s01_couplers_BID(2 downto 0) <= M_AXI_bid(2 downto 0);
  s01_couplers_to_s01_couplers_BREADY(0) <= S_AXI_bready(0);
  s01_couplers_to_s01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s01_couplers_to_s01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s01_couplers_to_s01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s01_couplers_to_s01_couplers_RID(2 downto 0) <= M_AXI_rid(2 downto 0);
  s01_couplers_to_s01_couplers_RLAST(0) <= M_AXI_rlast(0);
  s01_couplers_to_s01_couplers_RREADY(0) <= S_AXI_rready(0);
  s01_couplers_to_s01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s01_couplers_to_s01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  s01_couplers_to_s01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s01_couplers_to_s01_couplers_WLAST(0) <= S_AXI_wlast(0);
  s01_couplers_to_s01_couplers_WREADY(0) <= M_AXI_wready(0);
  s01_couplers_to_s01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s01_couplers_to_s01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s02_couplers_imp_M920GB is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s02_couplers_imp_M920GB;

architecture STRUCTURE of s02_couplers_imp_M920GB is
  signal s02_couplers_to_s02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_s02_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_s02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_s02_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_s02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_s02_couplers_ARREADY : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_s02_couplers_ARVALID : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_s02_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_s02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_s02_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_s02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_s02_couplers_AWREADY : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_s02_couplers_AWVALID : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_BREADY : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_s02_couplers_BVALID : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_s02_couplers_RLAST : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_RREADY : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_s02_couplers_RVALID : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_s02_couplers_WLAST : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_WREADY : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_s02_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s02_couplers_to_s02_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s02_couplers_to_s02_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s02_couplers_to_s02_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= s02_couplers_to_s02_couplers_ARLEN(7 downto 0);
  M_AXI_arprot(2 downto 0) <= s02_couplers_to_s02_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= s02_couplers_to_s02_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s02_couplers_to_s02_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s02_couplers_to_s02_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s02_couplers_to_s02_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s02_couplers_to_s02_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= s02_couplers_to_s02_couplers_AWLEN(7 downto 0);
  M_AXI_awprot(2 downto 0) <= s02_couplers_to_s02_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= s02_couplers_to_s02_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= s02_couplers_to_s02_couplers_AWVALID;
  M_AXI_bready <= s02_couplers_to_s02_couplers_BREADY;
  M_AXI_rready <= s02_couplers_to_s02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s02_couplers_to_s02_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= s02_couplers_to_s02_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= s02_couplers_to_s02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s02_couplers_to_s02_couplers_WVALID;
  S_AXI_arready <= s02_couplers_to_s02_couplers_ARREADY;
  S_AXI_awready <= s02_couplers_to_s02_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= s02_couplers_to_s02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s02_couplers_to_s02_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s02_couplers_to_s02_couplers_RDATA(31 downto 0);
  S_AXI_rlast <= s02_couplers_to_s02_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= s02_couplers_to_s02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s02_couplers_to_s02_couplers_RVALID;
  S_AXI_wready <= s02_couplers_to_s02_couplers_WREADY;
  s02_couplers_to_s02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s02_couplers_to_s02_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s02_couplers_to_s02_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s02_couplers_to_s02_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s02_couplers_to_s02_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s02_couplers_to_s02_couplers_ARREADY <= M_AXI_arready;
  s02_couplers_to_s02_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s02_couplers_to_s02_couplers_ARVALID <= S_AXI_arvalid;
  s02_couplers_to_s02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s02_couplers_to_s02_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s02_couplers_to_s02_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s02_couplers_to_s02_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s02_couplers_to_s02_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s02_couplers_to_s02_couplers_AWREADY <= M_AXI_awready;
  s02_couplers_to_s02_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s02_couplers_to_s02_couplers_AWVALID <= S_AXI_awvalid;
  s02_couplers_to_s02_couplers_BREADY <= S_AXI_bready;
  s02_couplers_to_s02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s02_couplers_to_s02_couplers_BVALID <= M_AXI_bvalid;
  s02_couplers_to_s02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s02_couplers_to_s02_couplers_RLAST <= M_AXI_rlast;
  s02_couplers_to_s02_couplers_RREADY <= S_AXI_rready;
  s02_couplers_to_s02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s02_couplers_to_s02_couplers_RVALID <= M_AXI_rvalid;
  s02_couplers_to_s02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s02_couplers_to_s02_couplers_WLAST <= S_AXI_wlast;
  s02_couplers_to_s02_couplers_WREADY <= M_AXI_wready;
  s02_couplers_to_s02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s02_couplers_to_s02_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s03_couplers_imp_1H3M4VE is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC
  );
end s03_couplers_imp_1H3M4VE;

architecture STRUCTURE of s03_couplers_imp_1H3M4VE is
  signal s03_couplers_to_s03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_s03_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_s03_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_s03_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s03_couplers_to_s03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_s03_couplers_ARREADY : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_s03_couplers_ARVALID : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_s03_couplers_RLAST : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_RREADY : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_s03_couplers_RVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s03_couplers_to_s03_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s03_couplers_to_s03_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s03_couplers_to_s03_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= s03_couplers_to_s03_couplers_ARLEN(7 downto 0);
  M_AXI_arprot(2 downto 0) <= s03_couplers_to_s03_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= s03_couplers_to_s03_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s03_couplers_to_s03_couplers_ARVALID;
  M_AXI_rready <= s03_couplers_to_s03_couplers_RREADY;
  S_AXI_arready <= s03_couplers_to_s03_couplers_ARREADY;
  S_AXI_rdata(31 downto 0) <= s03_couplers_to_s03_couplers_RDATA(31 downto 0);
  S_AXI_rlast <= s03_couplers_to_s03_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= s03_couplers_to_s03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s03_couplers_to_s03_couplers_RVALID;
  s03_couplers_to_s03_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s03_couplers_to_s03_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s03_couplers_to_s03_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s03_couplers_to_s03_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s03_couplers_to_s03_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s03_couplers_to_s03_couplers_ARREADY <= M_AXI_arready;
  s03_couplers_to_s03_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s03_couplers_to_s03_couplers_ARVALID <= S_AXI_arvalid;
  s03_couplers_to_s03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s03_couplers_to_s03_couplers_RLAST <= M_AXI_rlast;
  s03_couplers_to_s03_couplers_RREADY <= S_AXI_rready;
  s03_couplers_to_s03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s03_couplers_to_s03_couplers_RVALID <= M_AXI_rvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s04_couplers_imp_Q607DA is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s04_couplers_imp_Q607DA;

architecture STRUCTURE of s04_couplers_imp_Q607DA is
  signal s04_couplers_to_s04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_s04_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_s04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_s04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_s04_couplers_AWREADY : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_s04_couplers_AWVALID : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_BREADY : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_s04_couplers_BVALID : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_s04_couplers_WLAST : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_WREADY : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_awaddr(31 downto 0) <= s04_couplers_to_s04_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s04_couplers_to_s04_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s04_couplers_to_s04_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= s04_couplers_to_s04_couplers_AWLEN(7 downto 0);
  M_AXI_awprot(2 downto 0) <= s04_couplers_to_s04_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= s04_couplers_to_s04_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= s04_couplers_to_s04_couplers_AWVALID;
  M_AXI_bready <= s04_couplers_to_s04_couplers_BREADY;
  M_AXI_wdata(31 downto 0) <= s04_couplers_to_s04_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= s04_couplers_to_s04_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= s04_couplers_to_s04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s04_couplers_to_s04_couplers_WVALID;
  S_AXI_awready <= s04_couplers_to_s04_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= s04_couplers_to_s04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s04_couplers_to_s04_couplers_BVALID;
  S_AXI_wready <= s04_couplers_to_s04_couplers_WREADY;
  s04_couplers_to_s04_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s04_couplers_to_s04_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s04_couplers_to_s04_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s04_couplers_to_s04_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s04_couplers_to_s04_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s04_couplers_to_s04_couplers_AWREADY <= M_AXI_awready;
  s04_couplers_to_s04_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s04_couplers_to_s04_couplers_AWVALID <= S_AXI_awvalid;
  s04_couplers_to_s04_couplers_BREADY <= S_AXI_bready;
  s04_couplers_to_s04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s04_couplers_to_s04_couplers_BVALID <= M_AXI_bvalid;
  s04_couplers_to_s04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s04_couplers_to_s04_couplers_WLAST <= S_AXI_wlast;
  s04_couplers_to_s04_couplers_WREADY <= M_AXI_wready;
  s04_couplers_to_s04_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s04_couplers_to_s04_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mars_AX3_interconnect_CPU_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M06_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M06_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M06_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M06_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rlast : in STD_LOGIC;
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wlast : out STD_LOGIC;
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    M07_ACLK : in STD_LOGIC;
    M07_ARESETN : in STD_LOGIC;
    M07_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_ACLK : in STD_LOGIC;
    M08_ARESETN : in STD_LOGIC;
    M08_AXI_araddr : out STD_LOGIC;
    M08_AXI_arburst : out STD_LOGIC;
    M08_AXI_arcache : out STD_LOGIC;
    M08_AXI_arlen : out STD_LOGIC;
    M08_AXI_arlock : out STD_LOGIC;
    M08_AXI_arprot : out STD_LOGIC;
    M08_AXI_arqos : out STD_LOGIC;
    M08_AXI_arready : in STD_LOGIC;
    M08_AXI_arregion : out STD_LOGIC;
    M08_AXI_arsize : out STD_LOGIC;
    M08_AXI_arvalid : out STD_LOGIC;
    M08_AXI_awaddr : out STD_LOGIC;
    M08_AXI_awburst : out STD_LOGIC;
    M08_AXI_awcache : out STD_LOGIC;
    M08_AXI_awlen : out STD_LOGIC;
    M08_AXI_awlock : out STD_LOGIC;
    M08_AXI_awprot : out STD_LOGIC;
    M08_AXI_awqos : out STD_LOGIC;
    M08_AXI_awready : in STD_LOGIC;
    M08_AXI_awregion : out STD_LOGIC;
    M08_AXI_awsize : out STD_LOGIC;
    M08_AXI_awvalid : out STD_LOGIC;
    M08_AXI_bready : out STD_LOGIC;
    M08_AXI_bresp : in STD_LOGIC;
    M08_AXI_bvalid : in STD_LOGIC;
    M08_AXI_rdata : in STD_LOGIC;
    M08_AXI_rlast : in STD_LOGIC;
    M08_AXI_rready : out STD_LOGIC;
    M08_AXI_rresp : in STD_LOGIC;
    M08_AXI_rvalid : in STD_LOGIC;
    M08_AXI_wdata : out STD_LOGIC;
    M08_AXI_wlast : out STD_LOGIC;
    M08_AXI_wready : in STD_LOGIC;
    M08_AXI_wstrb : out STD_LOGIC;
    M08_AXI_wvalid : out STD_LOGIC;
    M09_ACLK : in STD_LOGIC;
    M09_ARESETN : in STD_LOGIC;
    M09_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_arready : in STD_LOGIC;
    M09_AXI_arvalid : out STD_LOGIC;
    M09_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_awready : in STD_LOGIC;
    M09_AXI_awvalid : out STD_LOGIC;
    M09_AXI_bready : out STD_LOGIC;
    M09_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_bvalid : in STD_LOGIC;
    M09_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_rready : out STD_LOGIC;
    M09_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_rvalid : in STD_LOGIC;
    M09_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_wready : in STD_LOGIC;
    M09_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_wvalid : out STD_LOGIC;
    M10_ACLK : in STD_LOGIC;
    M10_ARESETN : in STD_LOGIC;
    M10_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_arready : in STD_LOGIC;
    M10_AXI_arvalid : out STD_LOGIC;
    M10_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_awready : in STD_LOGIC;
    M10_AXI_awvalid : out STD_LOGIC;
    M10_AXI_bready : out STD_LOGIC;
    M10_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_bvalid : in STD_LOGIC;
    M10_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_rready : out STD_LOGIC;
    M10_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_rvalid : in STD_LOGIC;
    M10_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_wready : in STD_LOGIC;
    M10_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Mars_AX3_interconnect_CPU_0;

architecture STRUCTURE of Mars_AX3_interconnect_CPU_0 is
  component Mars_AX3_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 351 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 351 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 43 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 21 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 351 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 351 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 21 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  end component Mars_AX3_xbar_0;
  signal interconnect_CPU_ACLK_net : STD_LOGIC;
  signal interconnect_CPU_ARESETN_net : STD_LOGIC;
  signal interconnect_CPU_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_CPU_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_CPU_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_CPU_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_CPU_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_CPU_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_CPU_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_CPU_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_CPU_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_CPU_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_CPU_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_CPU_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_CPU_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_CPU_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_CPU_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_CPU_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_CPU_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_CPU_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_CPU_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_interconnect_CPU_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_interconnect_CPU_ARREADY : STD_LOGIC;
  signal m00_couplers_to_interconnect_CPU_ARVALID : STD_LOGIC;
  signal m00_couplers_to_interconnect_CPU_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_interconnect_CPU_AWREADY : STD_LOGIC;
  signal m00_couplers_to_interconnect_CPU_AWVALID : STD_LOGIC;
  signal m00_couplers_to_interconnect_CPU_BREADY : STD_LOGIC;
  signal m00_couplers_to_interconnect_CPU_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_interconnect_CPU_BVALID : STD_LOGIC;
  signal m00_couplers_to_interconnect_CPU_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_interconnect_CPU_RREADY : STD_LOGIC;
  signal m00_couplers_to_interconnect_CPU_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_interconnect_CPU_RVALID : STD_LOGIC;
  signal m00_couplers_to_interconnect_CPU_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_interconnect_CPU_WREADY : STD_LOGIC;
  signal m00_couplers_to_interconnect_CPU_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_interconnect_CPU_WVALID : STD_LOGIC;
  signal m01_couplers_to_interconnect_CPU_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_interconnect_CPU_ARREADY : STD_LOGIC;
  signal m01_couplers_to_interconnect_CPU_ARVALID : STD_LOGIC;
  signal m01_couplers_to_interconnect_CPU_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_interconnect_CPU_AWREADY : STD_LOGIC;
  signal m01_couplers_to_interconnect_CPU_AWVALID : STD_LOGIC;
  signal m01_couplers_to_interconnect_CPU_BREADY : STD_LOGIC;
  signal m01_couplers_to_interconnect_CPU_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_interconnect_CPU_BVALID : STD_LOGIC;
  signal m01_couplers_to_interconnect_CPU_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_interconnect_CPU_RREADY : STD_LOGIC;
  signal m01_couplers_to_interconnect_CPU_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_interconnect_CPU_RVALID : STD_LOGIC;
  signal m01_couplers_to_interconnect_CPU_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_interconnect_CPU_WREADY : STD_LOGIC;
  signal m01_couplers_to_interconnect_CPU_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_interconnect_CPU_WVALID : STD_LOGIC;
  signal m02_couplers_to_interconnect_CPU_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_interconnect_CPU_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_interconnect_CPU_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_interconnect_CPU_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_interconnect_CPU_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_interconnect_CPU_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_interconnect_CPU_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_interconnect_CPU_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_interconnect_CPU_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_interconnect_CPU_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_interconnect_CPU_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_interconnect_CPU_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_interconnect_CPU_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_interconnect_CPU_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_interconnect_CPU_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_interconnect_CPU_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_interconnect_CPU_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_interconnect_CPU_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_interconnect_CPU_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_interconnect_CPU_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_interconnect_CPU_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_interconnect_CPU_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_interconnect_CPU_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_interconnect_CPU_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_interconnect_CPU_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_interconnect_CPU_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_interconnect_CPU_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_interconnect_CPU_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_interconnect_CPU_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_interconnect_CPU_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_interconnect_CPU_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_interconnect_CPU_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_interconnect_CPU_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_interconnect_CPU_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_interconnect_CPU_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_interconnect_CPU_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_interconnect_CPU_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_interconnect_CPU_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_interconnect_CPU_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_interconnect_CPU_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_interconnect_CPU_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_interconnect_CPU_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_interconnect_CPU_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_interconnect_CPU_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_interconnect_CPU_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_interconnect_CPU_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_interconnect_CPU_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_interconnect_CPU_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_interconnect_CPU_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_interconnect_CPU_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_interconnect_CPU_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_interconnect_CPU_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_interconnect_CPU_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_interconnect_CPU_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_interconnect_CPU_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_interconnect_CPU_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_interconnect_CPU_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_interconnect_CPU_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_interconnect_CPU_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_interconnect_CPU_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_interconnect_CPU_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_interconnect_CPU_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_interconnect_CPU_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_interconnect_CPU_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_interconnect_CPU_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_interconnect_CPU_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_interconnect_CPU_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_interconnect_CPU_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_interconnect_CPU_ARADDR : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m06_couplers_to_interconnect_CPU_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_interconnect_CPU_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_interconnect_CPU_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m06_couplers_to_interconnect_CPU_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_interconnect_CPU_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_interconnect_CPU_ARREADY : STD_LOGIC;
  signal m06_couplers_to_interconnect_CPU_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_interconnect_CPU_ARVALID : STD_LOGIC;
  signal m06_couplers_to_interconnect_CPU_AWADDR : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m06_couplers_to_interconnect_CPU_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_interconnect_CPU_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_interconnect_CPU_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m06_couplers_to_interconnect_CPU_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_interconnect_CPU_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_interconnect_CPU_AWREADY : STD_LOGIC;
  signal m06_couplers_to_interconnect_CPU_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_interconnect_CPU_AWVALID : STD_LOGIC;
  signal m06_couplers_to_interconnect_CPU_BREADY : STD_LOGIC;
  signal m06_couplers_to_interconnect_CPU_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_interconnect_CPU_BVALID : STD_LOGIC;
  signal m06_couplers_to_interconnect_CPU_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_interconnect_CPU_RLAST : STD_LOGIC;
  signal m06_couplers_to_interconnect_CPU_RREADY : STD_LOGIC;
  signal m06_couplers_to_interconnect_CPU_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_interconnect_CPU_RVALID : STD_LOGIC;
  signal m06_couplers_to_interconnect_CPU_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_interconnect_CPU_WLAST : STD_LOGIC;
  signal m06_couplers_to_interconnect_CPU_WREADY : STD_LOGIC;
  signal m06_couplers_to_interconnect_CPU_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_interconnect_CPU_WVALID : STD_LOGIC;
  signal m07_couplers_to_interconnect_CPU_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_interconnect_CPU_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_interconnect_CPU_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_interconnect_CPU_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_interconnect_CPU_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_interconnect_CPU_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_interconnect_CPU_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_interconnect_CPU_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_interconnect_CPU_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_interconnect_CPU_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_interconnect_CPU_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_interconnect_CPU_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_interconnect_CPU_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_interconnect_CPU_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_interconnect_CPU_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_interconnect_CPU_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_interconnect_CPU_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_interconnect_CPU_ARADDR : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_ARBURST : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_ARCACHE : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_ARLEN : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_ARLOCK : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_ARPROT : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_ARQOS : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_ARREADY : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_ARREGION : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_ARSIZE : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_ARVALID : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_AWADDR : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_AWBURST : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_AWCACHE : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_AWLEN : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_AWLOCK : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_AWPROT : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_AWQOS : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_AWREADY : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_AWREGION : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_AWSIZE : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_AWVALID : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_BREADY : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_BRESP : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_BVALID : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_RDATA : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_RLAST : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_RREADY : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_RRESP : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_RVALID : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_WDATA : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_WLAST : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_WREADY : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_WSTRB : STD_LOGIC;
  signal m08_couplers_to_interconnect_CPU_WVALID : STD_LOGIC;
  signal m09_couplers_to_interconnect_CPU_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_interconnect_CPU_ARREADY : STD_LOGIC;
  signal m09_couplers_to_interconnect_CPU_ARVALID : STD_LOGIC;
  signal m09_couplers_to_interconnect_CPU_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_interconnect_CPU_AWREADY : STD_LOGIC;
  signal m09_couplers_to_interconnect_CPU_AWVALID : STD_LOGIC;
  signal m09_couplers_to_interconnect_CPU_BREADY : STD_LOGIC;
  signal m09_couplers_to_interconnect_CPU_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_interconnect_CPU_BVALID : STD_LOGIC;
  signal m09_couplers_to_interconnect_CPU_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_interconnect_CPU_RREADY : STD_LOGIC;
  signal m09_couplers_to_interconnect_CPU_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_interconnect_CPU_RVALID : STD_LOGIC;
  signal m09_couplers_to_interconnect_CPU_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_interconnect_CPU_WREADY : STD_LOGIC;
  signal m09_couplers_to_interconnect_CPU_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_interconnect_CPU_WVALID : STD_LOGIC;
  signal m10_couplers_to_interconnect_CPU_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_interconnect_CPU_ARREADY : STD_LOGIC;
  signal m10_couplers_to_interconnect_CPU_ARVALID : STD_LOGIC;
  signal m10_couplers_to_interconnect_CPU_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_interconnect_CPU_AWREADY : STD_LOGIC;
  signal m10_couplers_to_interconnect_CPU_AWVALID : STD_LOGIC;
  signal m10_couplers_to_interconnect_CPU_BREADY : STD_LOGIC;
  signal m10_couplers_to_interconnect_CPU_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_interconnect_CPU_BVALID : STD_LOGIC;
  signal m10_couplers_to_interconnect_CPU_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_interconnect_CPU_RREADY : STD_LOGIC;
  signal m10_couplers_to_interconnect_CPU_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_interconnect_CPU_RVALID : STD_LOGIC;
  signal m10_couplers_to_interconnect_CPU_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_interconnect_CPU_WREADY : STD_LOGIC;
  signal m10_couplers_to_interconnect_CPU_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_ARPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_AWPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_ARVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_AWVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m07_couplers_RREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_WVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_ARPROT : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_ARVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_AWPROT : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_AWVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m08_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m08_couplers_RREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m08_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_WVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m09_couplers_ARADDR : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_ARVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_AWADDR : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_AWVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_BREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m09_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m09_couplers_RREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m09_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m09_couplers_WDATA : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_WSTRB : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_WVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m10_couplers_ARADDR : STD_LOGIC_VECTOR ( 351 downto 320 );
  signal xbar_to_m10_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m10_couplers_ARVALID : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_AWADDR : STD_LOGIC_VECTOR ( 351 downto 320 );
  signal xbar_to_m10_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m10_couplers_AWVALID : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_BREADY : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m10_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m10_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m10_couplers_RREADY : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m10_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m10_couplers_WDATA : STD_LOGIC_VECTOR ( 351 downto 320 );
  signal xbar_to_m10_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m10_couplers_WVALID : STD_LOGIC_VECTOR ( 10 to 10 );
  signal NLW_m08_couplers_S_AXI_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_xbar_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 43 downto 40 );
begin
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_interconnect_CPU_ARADDR(31 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_interconnect_CPU_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_interconnect_CPU_AWADDR(31 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_interconnect_CPU_AWVALID;
  M00_AXI_bready <= m00_couplers_to_interconnect_CPU_BREADY;
  M00_AXI_rready <= m00_couplers_to_interconnect_CPU_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_interconnect_CPU_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_interconnect_CPU_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_interconnect_CPU_WVALID;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_interconnect_CPU_ARADDR(31 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_interconnect_CPU_ARVALID;
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_interconnect_CPU_AWADDR(31 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_interconnect_CPU_AWVALID;
  M01_AXI_bready <= m01_couplers_to_interconnect_CPU_BREADY;
  M01_AXI_rready <= m01_couplers_to_interconnect_CPU_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_interconnect_CPU_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_interconnect_CPU_WSTRB(3 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_interconnect_CPU_WVALID;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_interconnect_CPU_ARADDR(31 downto 0);
  M02_AXI_arvalid(0) <= m02_couplers_to_interconnect_CPU_ARVALID(0);
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_interconnect_CPU_AWADDR(31 downto 0);
  M02_AXI_awvalid(0) <= m02_couplers_to_interconnect_CPU_AWVALID(0);
  M02_AXI_bready(0) <= m02_couplers_to_interconnect_CPU_BREADY(0);
  M02_AXI_rready(0) <= m02_couplers_to_interconnect_CPU_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_interconnect_CPU_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_interconnect_CPU_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= m02_couplers_to_interconnect_CPU_WVALID(0);
  M03_AXI_araddr(31 downto 0) <= m03_couplers_to_interconnect_CPU_ARADDR(31 downto 0);
  M03_AXI_arvalid(0) <= m03_couplers_to_interconnect_CPU_ARVALID(0);
  M03_AXI_awaddr(31 downto 0) <= m03_couplers_to_interconnect_CPU_AWADDR(31 downto 0);
  M03_AXI_awvalid(0) <= m03_couplers_to_interconnect_CPU_AWVALID(0);
  M03_AXI_bready(0) <= m03_couplers_to_interconnect_CPU_BREADY(0);
  M03_AXI_rready(0) <= m03_couplers_to_interconnect_CPU_RREADY(0);
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_interconnect_CPU_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_interconnect_CPU_WSTRB(3 downto 0);
  M03_AXI_wvalid(0) <= m03_couplers_to_interconnect_CPU_WVALID(0);
  M04_AXI_araddr(31 downto 0) <= m04_couplers_to_interconnect_CPU_ARADDR(31 downto 0);
  M04_AXI_arvalid(0) <= m04_couplers_to_interconnect_CPU_ARVALID(0);
  M04_AXI_awaddr(31 downto 0) <= m04_couplers_to_interconnect_CPU_AWADDR(31 downto 0);
  M04_AXI_awvalid(0) <= m04_couplers_to_interconnect_CPU_AWVALID(0);
  M04_AXI_bready(0) <= m04_couplers_to_interconnect_CPU_BREADY(0);
  M04_AXI_rready(0) <= m04_couplers_to_interconnect_CPU_RREADY(0);
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_interconnect_CPU_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_interconnect_CPU_WSTRB(3 downto 0);
  M04_AXI_wvalid(0) <= m04_couplers_to_interconnect_CPU_WVALID(0);
  M05_AXI_araddr(31 downto 0) <= m05_couplers_to_interconnect_CPU_ARADDR(31 downto 0);
  M05_AXI_arvalid(0) <= m05_couplers_to_interconnect_CPU_ARVALID(0);
  M05_AXI_awaddr(31 downto 0) <= m05_couplers_to_interconnect_CPU_AWADDR(31 downto 0);
  M05_AXI_awvalid(0) <= m05_couplers_to_interconnect_CPU_AWVALID(0);
  M05_AXI_bready(0) <= m05_couplers_to_interconnect_CPU_BREADY(0);
  M05_AXI_rready(0) <= m05_couplers_to_interconnect_CPU_RREADY(0);
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_interconnect_CPU_WDATA(31 downto 0);
  M05_AXI_wstrb(3 downto 0) <= m05_couplers_to_interconnect_CPU_WSTRB(3 downto 0);
  M05_AXI_wvalid(0) <= m05_couplers_to_interconnect_CPU_WVALID(0);
  M06_AXI_araddr(23 downto 0) <= m06_couplers_to_interconnect_CPU_ARADDR(23 downto 0);
  M06_AXI_arburst(1 downto 0) <= m06_couplers_to_interconnect_CPU_ARBURST(1 downto 0);
  M06_AXI_arcache(3 downto 0) <= m06_couplers_to_interconnect_CPU_ARCACHE(3 downto 0);
  M06_AXI_arlen(7 downto 0) <= m06_couplers_to_interconnect_CPU_ARLEN(7 downto 0);
  M06_AXI_arlock(0) <= m06_couplers_to_interconnect_CPU_ARLOCK(0);
  M06_AXI_arprot(2 downto 0) <= m06_couplers_to_interconnect_CPU_ARPROT(2 downto 0);
  M06_AXI_arsize(2 downto 0) <= m06_couplers_to_interconnect_CPU_ARSIZE(2 downto 0);
  M06_AXI_arvalid <= m06_couplers_to_interconnect_CPU_ARVALID;
  M06_AXI_awaddr(23 downto 0) <= m06_couplers_to_interconnect_CPU_AWADDR(23 downto 0);
  M06_AXI_awburst(1 downto 0) <= m06_couplers_to_interconnect_CPU_AWBURST(1 downto 0);
  M06_AXI_awcache(3 downto 0) <= m06_couplers_to_interconnect_CPU_AWCACHE(3 downto 0);
  M06_AXI_awlen(7 downto 0) <= m06_couplers_to_interconnect_CPU_AWLEN(7 downto 0);
  M06_AXI_awlock(0) <= m06_couplers_to_interconnect_CPU_AWLOCK(0);
  M06_AXI_awprot(2 downto 0) <= m06_couplers_to_interconnect_CPU_AWPROT(2 downto 0);
  M06_AXI_awsize(2 downto 0) <= m06_couplers_to_interconnect_CPU_AWSIZE(2 downto 0);
  M06_AXI_awvalid <= m06_couplers_to_interconnect_CPU_AWVALID;
  M06_AXI_bready <= m06_couplers_to_interconnect_CPU_BREADY;
  M06_AXI_rready <= m06_couplers_to_interconnect_CPU_RREADY;
  M06_AXI_wdata(31 downto 0) <= m06_couplers_to_interconnect_CPU_WDATA(31 downto 0);
  M06_AXI_wlast <= m06_couplers_to_interconnect_CPU_WLAST;
  M06_AXI_wstrb(3 downto 0) <= m06_couplers_to_interconnect_CPU_WSTRB(3 downto 0);
  M06_AXI_wvalid <= m06_couplers_to_interconnect_CPU_WVALID;
  M07_AXI_araddr(31 downto 0) <= m07_couplers_to_interconnect_CPU_ARADDR(31 downto 0);
  M07_AXI_arvalid(0) <= m07_couplers_to_interconnect_CPU_ARVALID(0);
  M07_AXI_awaddr(31 downto 0) <= m07_couplers_to_interconnect_CPU_AWADDR(31 downto 0);
  M07_AXI_awvalid(0) <= m07_couplers_to_interconnect_CPU_AWVALID(0);
  M07_AXI_bready(0) <= m07_couplers_to_interconnect_CPU_BREADY(0);
  M07_AXI_rready(0) <= m07_couplers_to_interconnect_CPU_RREADY(0);
  M07_AXI_wdata(31 downto 0) <= m07_couplers_to_interconnect_CPU_WDATA(31 downto 0);
  M07_AXI_wstrb(3 downto 0) <= m07_couplers_to_interconnect_CPU_WSTRB(3 downto 0);
  M07_AXI_wvalid(0) <= m07_couplers_to_interconnect_CPU_WVALID(0);
  M08_AXI_araddr <= m08_couplers_to_interconnect_CPU_ARADDR;
  M08_AXI_arburst <= m08_couplers_to_interconnect_CPU_ARBURST;
  M08_AXI_arcache <= m08_couplers_to_interconnect_CPU_ARCACHE;
  M08_AXI_arlen <= m08_couplers_to_interconnect_CPU_ARLEN;
  M08_AXI_arlock <= m08_couplers_to_interconnect_CPU_ARLOCK;
  M08_AXI_arprot <= m08_couplers_to_interconnect_CPU_ARPROT;
  M08_AXI_arqos <= m08_couplers_to_interconnect_CPU_ARQOS;
  M08_AXI_arregion <= m08_couplers_to_interconnect_CPU_ARREGION;
  M08_AXI_arsize <= m08_couplers_to_interconnect_CPU_ARSIZE;
  M08_AXI_arvalid <= m08_couplers_to_interconnect_CPU_ARVALID;
  M08_AXI_awaddr <= m08_couplers_to_interconnect_CPU_AWADDR;
  M08_AXI_awburst <= m08_couplers_to_interconnect_CPU_AWBURST;
  M08_AXI_awcache <= m08_couplers_to_interconnect_CPU_AWCACHE;
  M08_AXI_awlen <= m08_couplers_to_interconnect_CPU_AWLEN;
  M08_AXI_awlock <= m08_couplers_to_interconnect_CPU_AWLOCK;
  M08_AXI_awprot <= m08_couplers_to_interconnect_CPU_AWPROT;
  M08_AXI_awqos <= m08_couplers_to_interconnect_CPU_AWQOS;
  M08_AXI_awregion <= m08_couplers_to_interconnect_CPU_AWREGION;
  M08_AXI_awsize <= m08_couplers_to_interconnect_CPU_AWSIZE;
  M08_AXI_awvalid <= m08_couplers_to_interconnect_CPU_AWVALID;
  M08_AXI_bready <= m08_couplers_to_interconnect_CPU_BREADY;
  M08_AXI_rready <= m08_couplers_to_interconnect_CPU_RREADY;
  M08_AXI_wdata <= m08_couplers_to_interconnect_CPU_WDATA;
  M08_AXI_wlast <= m08_couplers_to_interconnect_CPU_WLAST;
  M08_AXI_wstrb <= m08_couplers_to_interconnect_CPU_WSTRB;
  M08_AXI_wvalid <= m08_couplers_to_interconnect_CPU_WVALID;
  M09_AXI_araddr(31 downto 0) <= m09_couplers_to_interconnect_CPU_ARADDR(31 downto 0);
  M09_AXI_arvalid <= m09_couplers_to_interconnect_CPU_ARVALID;
  M09_AXI_awaddr(31 downto 0) <= m09_couplers_to_interconnect_CPU_AWADDR(31 downto 0);
  M09_AXI_awvalid <= m09_couplers_to_interconnect_CPU_AWVALID;
  M09_AXI_bready <= m09_couplers_to_interconnect_CPU_BREADY;
  M09_AXI_rready <= m09_couplers_to_interconnect_CPU_RREADY;
  M09_AXI_wdata(31 downto 0) <= m09_couplers_to_interconnect_CPU_WDATA(31 downto 0);
  M09_AXI_wstrb(3 downto 0) <= m09_couplers_to_interconnect_CPU_WSTRB(3 downto 0);
  M09_AXI_wvalid <= m09_couplers_to_interconnect_CPU_WVALID;
  M10_AXI_araddr(31 downto 0) <= m10_couplers_to_interconnect_CPU_ARADDR(31 downto 0);
  M10_AXI_arvalid <= m10_couplers_to_interconnect_CPU_ARVALID;
  M10_AXI_awaddr(31 downto 0) <= m10_couplers_to_interconnect_CPU_AWADDR(31 downto 0);
  M10_AXI_awvalid <= m10_couplers_to_interconnect_CPU_AWVALID;
  M10_AXI_bready <= m10_couplers_to_interconnect_CPU_BREADY;
  M10_AXI_rready <= m10_couplers_to_interconnect_CPU_RREADY;
  M10_AXI_wdata(31 downto 0) <= m10_couplers_to_interconnect_CPU_WDATA(31 downto 0);
  M10_AXI_wvalid <= m10_couplers_to_interconnect_CPU_WVALID;
  S00_AXI_arready(0) <= interconnect_CPU_to_s00_couplers_ARREADY(0);
  S00_AXI_awready(0) <= interconnect_CPU_to_s00_couplers_AWREADY(0);
  S00_AXI_bresp(1 downto 0) <= interconnect_CPU_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= interconnect_CPU_to_s00_couplers_BVALID(0);
  S00_AXI_rdata(31 downto 0) <= interconnect_CPU_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= interconnect_CPU_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= interconnect_CPU_to_s00_couplers_RVALID(0);
  S00_AXI_wready(0) <= interconnect_CPU_to_s00_couplers_WREADY(0);
  interconnect_CPU_ACLK_net <= ACLK;
  interconnect_CPU_ARESETN_net <= ARESETN;
  interconnect_CPU_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  interconnect_CPU_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  interconnect_CPU_to_s00_couplers_ARVALID(0) <= S00_AXI_arvalid(0);
  interconnect_CPU_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  interconnect_CPU_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  interconnect_CPU_to_s00_couplers_AWVALID(0) <= S00_AXI_awvalid(0);
  interconnect_CPU_to_s00_couplers_BREADY(0) <= S00_AXI_bready(0);
  interconnect_CPU_to_s00_couplers_RREADY(0) <= S00_AXI_rready(0);
  interconnect_CPU_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  interconnect_CPU_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  interconnect_CPU_to_s00_couplers_WVALID(0) <= S00_AXI_wvalid(0);
  m00_couplers_to_interconnect_CPU_ARREADY <= M00_AXI_arready;
  m00_couplers_to_interconnect_CPU_AWREADY <= M00_AXI_awready;
  m00_couplers_to_interconnect_CPU_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_interconnect_CPU_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_interconnect_CPU_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_interconnect_CPU_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_interconnect_CPU_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_interconnect_CPU_WREADY <= M00_AXI_wready;
  m01_couplers_to_interconnect_CPU_ARREADY <= M01_AXI_arready;
  m01_couplers_to_interconnect_CPU_AWREADY <= M01_AXI_awready;
  m01_couplers_to_interconnect_CPU_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_interconnect_CPU_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_interconnect_CPU_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_interconnect_CPU_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_interconnect_CPU_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_interconnect_CPU_WREADY <= M01_AXI_wready;
  m02_couplers_to_interconnect_CPU_ARREADY(0) <= M02_AXI_arready(0);
  m02_couplers_to_interconnect_CPU_AWREADY(0) <= M02_AXI_awready(0);
  m02_couplers_to_interconnect_CPU_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_interconnect_CPU_BVALID(0) <= M02_AXI_bvalid(0);
  m02_couplers_to_interconnect_CPU_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_interconnect_CPU_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_interconnect_CPU_RVALID(0) <= M02_AXI_rvalid(0);
  m02_couplers_to_interconnect_CPU_WREADY(0) <= M02_AXI_wready(0);
  m03_couplers_to_interconnect_CPU_ARREADY(0) <= M03_AXI_arready(0);
  m03_couplers_to_interconnect_CPU_AWREADY(0) <= M03_AXI_awready(0);
  m03_couplers_to_interconnect_CPU_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_interconnect_CPU_BVALID(0) <= M03_AXI_bvalid(0);
  m03_couplers_to_interconnect_CPU_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_interconnect_CPU_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_interconnect_CPU_RVALID(0) <= M03_AXI_rvalid(0);
  m03_couplers_to_interconnect_CPU_WREADY(0) <= M03_AXI_wready(0);
  m04_couplers_to_interconnect_CPU_ARREADY(0) <= M04_AXI_arready(0);
  m04_couplers_to_interconnect_CPU_AWREADY(0) <= M04_AXI_awready(0);
  m04_couplers_to_interconnect_CPU_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_interconnect_CPU_BVALID(0) <= M04_AXI_bvalid(0);
  m04_couplers_to_interconnect_CPU_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_interconnect_CPU_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_interconnect_CPU_RVALID(0) <= M04_AXI_rvalid(0);
  m04_couplers_to_interconnect_CPU_WREADY(0) <= M04_AXI_wready(0);
  m05_couplers_to_interconnect_CPU_ARREADY(0) <= M05_AXI_arready(0);
  m05_couplers_to_interconnect_CPU_AWREADY(0) <= M05_AXI_awready(0);
  m05_couplers_to_interconnect_CPU_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_interconnect_CPU_BVALID(0) <= M05_AXI_bvalid(0);
  m05_couplers_to_interconnect_CPU_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_interconnect_CPU_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_interconnect_CPU_RVALID(0) <= M05_AXI_rvalid(0);
  m05_couplers_to_interconnect_CPU_WREADY(0) <= M05_AXI_wready(0);
  m06_couplers_to_interconnect_CPU_ARREADY <= M06_AXI_arready;
  m06_couplers_to_interconnect_CPU_AWREADY <= M06_AXI_awready;
  m06_couplers_to_interconnect_CPU_BRESP(1 downto 0) <= M06_AXI_bresp(1 downto 0);
  m06_couplers_to_interconnect_CPU_BVALID <= M06_AXI_bvalid;
  m06_couplers_to_interconnect_CPU_RDATA(31 downto 0) <= M06_AXI_rdata(31 downto 0);
  m06_couplers_to_interconnect_CPU_RLAST <= M06_AXI_rlast;
  m06_couplers_to_interconnect_CPU_RRESP(1 downto 0) <= M06_AXI_rresp(1 downto 0);
  m06_couplers_to_interconnect_CPU_RVALID <= M06_AXI_rvalid;
  m06_couplers_to_interconnect_CPU_WREADY <= M06_AXI_wready;
  m07_couplers_to_interconnect_CPU_ARREADY(0) <= M07_AXI_arready(0);
  m07_couplers_to_interconnect_CPU_AWREADY(0) <= M07_AXI_awready(0);
  m07_couplers_to_interconnect_CPU_BRESP(1 downto 0) <= M07_AXI_bresp(1 downto 0);
  m07_couplers_to_interconnect_CPU_BVALID(0) <= M07_AXI_bvalid(0);
  m07_couplers_to_interconnect_CPU_RDATA(31 downto 0) <= M07_AXI_rdata(31 downto 0);
  m07_couplers_to_interconnect_CPU_RRESP(1 downto 0) <= M07_AXI_rresp(1 downto 0);
  m07_couplers_to_interconnect_CPU_RVALID(0) <= M07_AXI_rvalid(0);
  m07_couplers_to_interconnect_CPU_WREADY(0) <= M07_AXI_wready(0);
  m08_couplers_to_interconnect_CPU_ARREADY <= M08_AXI_arready;
  m08_couplers_to_interconnect_CPU_AWREADY <= M08_AXI_awready;
  m08_couplers_to_interconnect_CPU_BRESP <= M08_AXI_bresp;
  m08_couplers_to_interconnect_CPU_BVALID <= M08_AXI_bvalid;
  m08_couplers_to_interconnect_CPU_RDATA <= M08_AXI_rdata;
  m08_couplers_to_interconnect_CPU_RLAST <= M08_AXI_rlast;
  m08_couplers_to_interconnect_CPU_RRESP <= M08_AXI_rresp;
  m08_couplers_to_interconnect_CPU_RVALID <= M08_AXI_rvalid;
  m08_couplers_to_interconnect_CPU_WREADY <= M08_AXI_wready;
  m09_couplers_to_interconnect_CPU_ARREADY <= M09_AXI_arready;
  m09_couplers_to_interconnect_CPU_AWREADY <= M09_AXI_awready;
  m09_couplers_to_interconnect_CPU_BRESP(1 downto 0) <= M09_AXI_bresp(1 downto 0);
  m09_couplers_to_interconnect_CPU_BVALID <= M09_AXI_bvalid;
  m09_couplers_to_interconnect_CPU_RDATA(31 downto 0) <= M09_AXI_rdata(31 downto 0);
  m09_couplers_to_interconnect_CPU_RRESP(1 downto 0) <= M09_AXI_rresp(1 downto 0);
  m09_couplers_to_interconnect_CPU_RVALID <= M09_AXI_rvalid;
  m09_couplers_to_interconnect_CPU_WREADY <= M09_AXI_wready;
  m10_couplers_to_interconnect_CPU_ARREADY <= M10_AXI_arready;
  m10_couplers_to_interconnect_CPU_AWREADY <= M10_AXI_awready;
  m10_couplers_to_interconnect_CPU_BRESP(1 downto 0) <= M10_AXI_bresp(1 downto 0);
  m10_couplers_to_interconnect_CPU_BVALID <= M10_AXI_bvalid;
  m10_couplers_to_interconnect_CPU_RDATA(31 downto 0) <= M10_AXI_rdata(31 downto 0);
  m10_couplers_to_interconnect_CPU_RRESP(1 downto 0) <= M10_AXI_rresp(1 downto 0);
  m10_couplers_to_interconnect_CPU_RVALID <= M10_AXI_rvalid;
  m10_couplers_to_interconnect_CPU_WREADY <= M10_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_N60JKQ
     port map (
      M_ACLK => interconnect_CPU_ACLK_net,
      M_ARESETN => interconnect_CPU_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_interconnect_CPU_ARADDR(31 downto 0),
      M_AXI_arready => m00_couplers_to_interconnect_CPU_ARREADY,
      M_AXI_arvalid => m00_couplers_to_interconnect_CPU_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_interconnect_CPU_AWADDR(31 downto 0),
      M_AXI_awready => m00_couplers_to_interconnect_CPU_AWREADY,
      M_AXI_awvalid => m00_couplers_to_interconnect_CPU_AWVALID,
      M_AXI_bready => m00_couplers_to_interconnect_CPU_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_interconnect_CPU_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_interconnect_CPU_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_interconnect_CPU_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_interconnect_CPU_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_interconnect_CPU_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_interconnect_CPU_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_interconnect_CPU_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_interconnect_CPU_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_interconnect_CPU_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_interconnect_CPU_WVALID,
      S_ACLK => interconnect_CPU_ACLK_net,
      S_ARESETN => interconnect_CPU_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_1G7LXIZ
     port map (
      M_ACLK => interconnect_CPU_ACLK_net,
      M_ARESETN => interconnect_CPU_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_interconnect_CPU_ARADDR(31 downto 0),
      M_AXI_arready => m01_couplers_to_interconnect_CPU_ARREADY,
      M_AXI_arvalid => m01_couplers_to_interconnect_CPU_ARVALID,
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_interconnect_CPU_AWADDR(31 downto 0),
      M_AXI_awready => m01_couplers_to_interconnect_CPU_AWREADY,
      M_AXI_awvalid => m01_couplers_to_interconnect_CPU_AWVALID,
      M_AXI_bready => m01_couplers_to_interconnect_CPU_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_interconnect_CPU_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_interconnect_CPU_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_interconnect_CPU_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_interconnect_CPU_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_interconnect_CPU_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_interconnect_CPU_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_interconnect_CPU_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_interconnect_CPU_WREADY,
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_interconnect_CPU_WSTRB(3 downto 0),
      M_AXI_wvalid => m01_couplers_to_interconnect_CPU_WVALID,
      S_ACLK => interconnect_CPU_ACLK_net,
      S_ARESETN => interconnect_CPU_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_O1ONMH
     port map (
      M_ACLK => interconnect_CPU_ACLK_net,
      M_ARESETN => interconnect_CPU_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_interconnect_CPU_ARADDR(31 downto 0),
      M_AXI_arready(0) => m02_couplers_to_interconnect_CPU_ARREADY(0),
      M_AXI_arvalid(0) => m02_couplers_to_interconnect_CPU_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_interconnect_CPU_AWADDR(31 downto 0),
      M_AXI_awready(0) => m02_couplers_to_interconnect_CPU_AWREADY(0),
      M_AXI_awvalid(0) => m02_couplers_to_interconnect_CPU_AWVALID(0),
      M_AXI_bready(0) => m02_couplers_to_interconnect_CPU_BREADY(0),
      M_AXI_bresp(1 downto 0) => m02_couplers_to_interconnect_CPU_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m02_couplers_to_interconnect_CPU_BVALID(0),
      M_AXI_rdata(31 downto 0) => m02_couplers_to_interconnect_CPU_RDATA(31 downto 0),
      M_AXI_rready(0) => m02_couplers_to_interconnect_CPU_RREADY(0),
      M_AXI_rresp(1 downto 0) => m02_couplers_to_interconnect_CPU_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m02_couplers_to_interconnect_CPU_RVALID(0),
      M_AXI_wdata(31 downto 0) => m02_couplers_to_interconnect_CPU_WDATA(31 downto 0),
      M_AXI_wready(0) => m02_couplers_to_interconnect_CPU_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_interconnect_CPU_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m02_couplers_to_interconnect_CPU_WVALID(0),
      S_ACLK => interconnect_CPU_ACLK_net,
      S_ARESETN => interconnect_CPU_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arready(0) => xbar_to_m02_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awready(0) => xbar_to_m02_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready(0) => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m02_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m02_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready(0) => xbar_to_m02_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_1FLLJSO
     port map (
      M_ACLK => interconnect_CPU_ACLK_net,
      M_ARESETN => interconnect_CPU_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m03_couplers_to_interconnect_CPU_ARADDR(31 downto 0),
      M_AXI_arready(0) => m03_couplers_to_interconnect_CPU_ARREADY(0),
      M_AXI_arvalid(0) => m03_couplers_to_interconnect_CPU_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m03_couplers_to_interconnect_CPU_AWADDR(31 downto 0),
      M_AXI_awready(0) => m03_couplers_to_interconnect_CPU_AWREADY(0),
      M_AXI_awvalid(0) => m03_couplers_to_interconnect_CPU_AWVALID(0),
      M_AXI_bready(0) => m03_couplers_to_interconnect_CPU_BREADY(0),
      M_AXI_bresp(1 downto 0) => m03_couplers_to_interconnect_CPU_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m03_couplers_to_interconnect_CPU_BVALID(0),
      M_AXI_rdata(31 downto 0) => m03_couplers_to_interconnect_CPU_RDATA(31 downto 0),
      M_AXI_rready(0) => m03_couplers_to_interconnect_CPU_RREADY(0),
      M_AXI_rresp(1 downto 0) => m03_couplers_to_interconnect_CPU_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m03_couplers_to_interconnect_CPU_RVALID(0),
      M_AXI_wdata(31 downto 0) => m03_couplers_to_interconnect_CPU_WDATA(31 downto 0),
      M_AXI_wready(0) => m03_couplers_to_interconnect_CPU_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_interconnect_CPU_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m03_couplers_to_interconnect_CPU_WVALID(0),
      S_ACLK => interconnect_CPU_ACLK_net,
      S_ARESETN => interconnect_CPU_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arready(0) => xbar_to_m03_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awready(0) => xbar_to_m03_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready(0) => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m03_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m03_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready(0) => xbar_to_m03_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid(0) => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_OND53W
     port map (
      M_ACLK => interconnect_CPU_ACLK_net,
      M_ARESETN => interconnect_CPU_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m04_couplers_to_interconnect_CPU_ARADDR(31 downto 0),
      M_AXI_arready(0) => m04_couplers_to_interconnect_CPU_ARREADY(0),
      M_AXI_arvalid(0) => m04_couplers_to_interconnect_CPU_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m04_couplers_to_interconnect_CPU_AWADDR(31 downto 0),
      M_AXI_awready(0) => m04_couplers_to_interconnect_CPU_AWREADY(0),
      M_AXI_awvalid(0) => m04_couplers_to_interconnect_CPU_AWVALID(0),
      M_AXI_bready(0) => m04_couplers_to_interconnect_CPU_BREADY(0),
      M_AXI_bresp(1 downto 0) => m04_couplers_to_interconnect_CPU_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m04_couplers_to_interconnect_CPU_BVALID(0),
      M_AXI_rdata(31 downto 0) => m04_couplers_to_interconnect_CPU_RDATA(31 downto 0),
      M_AXI_rready(0) => m04_couplers_to_interconnect_CPU_RREADY(0),
      M_AXI_rresp(1 downto 0) => m04_couplers_to_interconnect_CPU_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m04_couplers_to_interconnect_CPU_RVALID(0),
      M_AXI_wdata(31 downto 0) => m04_couplers_to_interconnect_CPU_WDATA(31 downto 0),
      M_AXI_wready(0) => m04_couplers_to_interconnect_CPU_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_interconnect_CPU_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m04_couplers_to_interconnect_CPU_WVALID(0),
      S_ACLK => interconnect_CPU_ACLK_net,
      S_ARESETN => interconnect_CPU_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arready(0) => xbar_to_m04_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awready(0) => xbar_to_m04_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready(0) => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m04_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m04_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wready(0) => xbar_to_m04_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid(0) => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_1EX3U9P
     port map (
      M_ACLK => interconnect_CPU_ACLK_net,
      M_ARESETN => interconnect_CPU_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m05_couplers_to_interconnect_CPU_ARADDR(31 downto 0),
      M_AXI_arready(0) => m05_couplers_to_interconnect_CPU_ARREADY(0),
      M_AXI_arvalid(0) => m05_couplers_to_interconnect_CPU_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m05_couplers_to_interconnect_CPU_AWADDR(31 downto 0),
      M_AXI_awready(0) => m05_couplers_to_interconnect_CPU_AWREADY(0),
      M_AXI_awvalid(0) => m05_couplers_to_interconnect_CPU_AWVALID(0),
      M_AXI_bready(0) => m05_couplers_to_interconnect_CPU_BREADY(0),
      M_AXI_bresp(1 downto 0) => m05_couplers_to_interconnect_CPU_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m05_couplers_to_interconnect_CPU_BVALID(0),
      M_AXI_rdata(31 downto 0) => m05_couplers_to_interconnect_CPU_RDATA(31 downto 0),
      M_AXI_rready(0) => m05_couplers_to_interconnect_CPU_RREADY(0),
      M_AXI_rresp(1 downto 0) => m05_couplers_to_interconnect_CPU_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m05_couplers_to_interconnect_CPU_RVALID(0),
      M_AXI_wdata(31 downto 0) => m05_couplers_to_interconnect_CPU_WDATA(31 downto 0),
      M_AXI_wready(0) => m05_couplers_to_interconnect_CPU_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m05_couplers_to_interconnect_CPU_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m05_couplers_to_interconnect_CPU_WVALID(0),
      S_ACLK => interconnect_CPU_ACLK_net,
      S_ARESETN => interconnect_CPU_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arready(0) => xbar_to_m05_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awready(0) => xbar_to_m05_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bready(0) => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m05_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m05_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wready(0) => xbar_to_m05_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      S_AXI_wvalid(0) => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_PT1JFJ
     port map (
      M_ACLK => interconnect_CPU_ACLK_net,
      M_ARESETN => interconnect_CPU_ARESETN_net,
      M_AXI_araddr(23 downto 0) => m06_couplers_to_interconnect_CPU_ARADDR(23 downto 0),
      M_AXI_arburst(1 downto 0) => m06_couplers_to_interconnect_CPU_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m06_couplers_to_interconnect_CPU_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => m06_couplers_to_interconnect_CPU_ARLEN(7 downto 0),
      M_AXI_arlock(0) => m06_couplers_to_interconnect_CPU_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => m06_couplers_to_interconnect_CPU_ARPROT(2 downto 0),
      M_AXI_arready => m06_couplers_to_interconnect_CPU_ARREADY,
      M_AXI_arsize(2 downto 0) => m06_couplers_to_interconnect_CPU_ARSIZE(2 downto 0),
      M_AXI_arvalid => m06_couplers_to_interconnect_CPU_ARVALID,
      M_AXI_awaddr(23 downto 0) => m06_couplers_to_interconnect_CPU_AWADDR(23 downto 0),
      M_AXI_awburst(1 downto 0) => m06_couplers_to_interconnect_CPU_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m06_couplers_to_interconnect_CPU_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => m06_couplers_to_interconnect_CPU_AWLEN(7 downto 0),
      M_AXI_awlock(0) => m06_couplers_to_interconnect_CPU_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => m06_couplers_to_interconnect_CPU_AWPROT(2 downto 0),
      M_AXI_awready => m06_couplers_to_interconnect_CPU_AWREADY,
      M_AXI_awsize(2 downto 0) => m06_couplers_to_interconnect_CPU_AWSIZE(2 downto 0),
      M_AXI_awvalid => m06_couplers_to_interconnect_CPU_AWVALID,
      M_AXI_bready => m06_couplers_to_interconnect_CPU_BREADY,
      M_AXI_bresp(1 downto 0) => m06_couplers_to_interconnect_CPU_BRESP(1 downto 0),
      M_AXI_bvalid => m06_couplers_to_interconnect_CPU_BVALID,
      M_AXI_rdata(31 downto 0) => m06_couplers_to_interconnect_CPU_RDATA(31 downto 0),
      M_AXI_rlast => m06_couplers_to_interconnect_CPU_RLAST,
      M_AXI_rready => m06_couplers_to_interconnect_CPU_RREADY,
      M_AXI_rresp(1 downto 0) => m06_couplers_to_interconnect_CPU_RRESP(1 downto 0),
      M_AXI_rvalid => m06_couplers_to_interconnect_CPU_RVALID,
      M_AXI_wdata(31 downto 0) => m06_couplers_to_interconnect_CPU_WDATA(31 downto 0),
      M_AXI_wlast => m06_couplers_to_interconnect_CPU_WLAST,
      M_AXI_wready => m06_couplers_to_interconnect_CPU_WREADY,
      M_AXI_wstrb(3 downto 0) => m06_couplers_to_interconnect_CPU_WSTRB(3 downto 0),
      M_AXI_wvalid => m06_couplers_to_interconnect_CPU_WVALID,
      S_ACLK => interconnect_CPU_ACLK_net,
      S_ARESETN => interconnect_CPU_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      S_AXI_arprot(2 downto 0) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      S_AXI_arready => xbar_to_m06_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr(31 downto 0) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      S_AXI_awprot(2 downto 0) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      S_AXI_awready => xbar_to_m06_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bready => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => xbar_to_m06_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m06_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m06_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => xbar_to_m06_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m06_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m06_couplers_WDATA(223 downto 192),
      S_AXI_wready => xbar_to_m06_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      S_AXI_wvalid => xbar_to_m06_couplers_WVALID(6)
    );
m07_couplers: entity work.m07_couplers_imp_1DH5EV2
     port map (
      M_ACLK => interconnect_CPU_ACLK_net,
      M_ARESETN => interconnect_CPU_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m07_couplers_to_interconnect_CPU_ARADDR(31 downto 0),
      M_AXI_arready(0) => m07_couplers_to_interconnect_CPU_ARREADY(0),
      M_AXI_arvalid(0) => m07_couplers_to_interconnect_CPU_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m07_couplers_to_interconnect_CPU_AWADDR(31 downto 0),
      M_AXI_awready(0) => m07_couplers_to_interconnect_CPU_AWREADY(0),
      M_AXI_awvalid(0) => m07_couplers_to_interconnect_CPU_AWVALID(0),
      M_AXI_bready(0) => m07_couplers_to_interconnect_CPU_BREADY(0),
      M_AXI_bresp(1 downto 0) => m07_couplers_to_interconnect_CPU_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m07_couplers_to_interconnect_CPU_BVALID(0),
      M_AXI_rdata(31 downto 0) => m07_couplers_to_interconnect_CPU_RDATA(31 downto 0),
      M_AXI_rready(0) => m07_couplers_to_interconnect_CPU_RREADY(0),
      M_AXI_rresp(1 downto 0) => m07_couplers_to_interconnect_CPU_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m07_couplers_to_interconnect_CPU_RVALID(0),
      M_AXI_wdata(31 downto 0) => m07_couplers_to_interconnect_CPU_WDATA(31 downto 0),
      M_AXI_wready(0) => m07_couplers_to_interconnect_CPU_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m07_couplers_to_interconnect_CPU_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m07_couplers_to_interconnect_CPU_WVALID(0),
      S_ACLK => interconnect_CPU_ACLK_net,
      S_ARESETN => interconnect_CPU_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      S_AXI_arready(0) => xbar_to_m07_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m07_couplers_ARVALID(7),
      S_AXI_awaddr(31 downto 0) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      S_AXI_awready(0) => xbar_to_m07_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m07_couplers_AWVALID(7),
      S_AXI_bready(0) => xbar_to_m07_couplers_BREADY(7),
      S_AXI_bresp(1 downto 0) => xbar_to_m07_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m07_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m07_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m07_couplers_RREADY(7),
      S_AXI_rresp(1 downto 0) => xbar_to_m07_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m07_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m07_couplers_WDATA(255 downto 224),
      S_AXI_wready(0) => xbar_to_m07_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      S_AXI_wvalid(0) => xbar_to_m07_couplers_WVALID(7)
    );
m08_couplers: entity work.m08_couplers_imp_IX2TJQ
     port map (
      M_ACLK => interconnect_CPU_ACLK_net,
      M_ARESETN => interconnect_CPU_ARESETN_net,
      M_AXI_araddr => m08_couplers_to_interconnect_CPU_ARADDR,
      M_AXI_arburst => m08_couplers_to_interconnect_CPU_ARBURST,
      M_AXI_arcache => m08_couplers_to_interconnect_CPU_ARCACHE,
      M_AXI_arlen => m08_couplers_to_interconnect_CPU_ARLEN,
      M_AXI_arlock => m08_couplers_to_interconnect_CPU_ARLOCK,
      M_AXI_arprot => m08_couplers_to_interconnect_CPU_ARPROT,
      M_AXI_arqos => m08_couplers_to_interconnect_CPU_ARQOS,
      M_AXI_arready => m08_couplers_to_interconnect_CPU_ARREADY,
      M_AXI_arregion => m08_couplers_to_interconnect_CPU_ARREGION,
      M_AXI_arsize => m08_couplers_to_interconnect_CPU_ARSIZE,
      M_AXI_arvalid => m08_couplers_to_interconnect_CPU_ARVALID,
      M_AXI_awaddr => m08_couplers_to_interconnect_CPU_AWADDR,
      M_AXI_awburst => m08_couplers_to_interconnect_CPU_AWBURST,
      M_AXI_awcache => m08_couplers_to_interconnect_CPU_AWCACHE,
      M_AXI_awlen => m08_couplers_to_interconnect_CPU_AWLEN,
      M_AXI_awlock => m08_couplers_to_interconnect_CPU_AWLOCK,
      M_AXI_awprot => m08_couplers_to_interconnect_CPU_AWPROT,
      M_AXI_awqos => m08_couplers_to_interconnect_CPU_AWQOS,
      M_AXI_awready => m08_couplers_to_interconnect_CPU_AWREADY,
      M_AXI_awregion => m08_couplers_to_interconnect_CPU_AWREGION,
      M_AXI_awsize => m08_couplers_to_interconnect_CPU_AWSIZE,
      M_AXI_awvalid => m08_couplers_to_interconnect_CPU_AWVALID,
      M_AXI_bready => m08_couplers_to_interconnect_CPU_BREADY,
      M_AXI_bresp => m08_couplers_to_interconnect_CPU_BRESP,
      M_AXI_bvalid => m08_couplers_to_interconnect_CPU_BVALID,
      M_AXI_rdata => m08_couplers_to_interconnect_CPU_RDATA,
      M_AXI_rlast => m08_couplers_to_interconnect_CPU_RLAST,
      M_AXI_rready => m08_couplers_to_interconnect_CPU_RREADY,
      M_AXI_rresp => m08_couplers_to_interconnect_CPU_RRESP,
      M_AXI_rvalid => m08_couplers_to_interconnect_CPU_RVALID,
      M_AXI_wdata => m08_couplers_to_interconnect_CPU_WDATA,
      M_AXI_wlast => m08_couplers_to_interconnect_CPU_WLAST,
      M_AXI_wready => m08_couplers_to_interconnect_CPU_WREADY,
      M_AXI_wstrb => m08_couplers_to_interconnect_CPU_WSTRB,
      M_AXI_wvalid => m08_couplers_to_interconnect_CPU_WVALID,
      S_ACLK => interconnect_CPU_ACLK_net,
      S_ARESETN => interconnect_CPU_ARESETN_net,
      S_AXI_araddr => xbar_to_m08_couplers_ARADDR(256),
      S_AXI_arburst => '0',
      S_AXI_arcache => '0',
      S_AXI_arlen => '0',
      S_AXI_arlock => '0',
      S_AXI_arprot => xbar_to_m08_couplers_ARPROT(24),
      S_AXI_arqos => '0',
      S_AXI_arready => xbar_to_m08_couplers_ARREADY,
      S_AXI_arregion => '0',
      S_AXI_arsize => '0',
      S_AXI_arvalid => xbar_to_m08_couplers_ARVALID(8),
      S_AXI_awaddr => xbar_to_m08_couplers_AWADDR(256),
      S_AXI_awburst => '0',
      S_AXI_awcache => '0',
      S_AXI_awlen => '0',
      S_AXI_awlock => '0',
      S_AXI_awprot => xbar_to_m08_couplers_AWPROT(24),
      S_AXI_awqos => '0',
      S_AXI_awready => xbar_to_m08_couplers_AWREADY,
      S_AXI_awregion => '0',
      S_AXI_awsize => '0',
      S_AXI_awvalid => xbar_to_m08_couplers_AWVALID(8),
      S_AXI_bready => xbar_to_m08_couplers_BREADY(8),
      S_AXI_bresp => xbar_to_m08_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m08_couplers_BVALID,
      S_AXI_rdata => xbar_to_m08_couplers_RDATA,
      S_AXI_rlast => NLW_m08_couplers_S_AXI_rlast_UNCONNECTED,
      S_AXI_rready => xbar_to_m08_couplers_RREADY(8),
      S_AXI_rresp => xbar_to_m08_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m08_couplers_RVALID,
      S_AXI_wdata => xbar_to_m08_couplers_WDATA(256),
      S_AXI_wlast => '0',
      S_AXI_wready => xbar_to_m08_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m08_couplers_WSTRB(32),
      S_AXI_wvalid => xbar_to_m08_couplers_WVALID(8)
    );
m09_couplers: entity work.m09_couplers_imp_1BKZJLJ
     port map (
      M_ACLK => interconnect_CPU_ACLK_net,
      M_ARESETN => interconnect_CPU_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m09_couplers_to_interconnect_CPU_ARADDR(31 downto 0),
      M_AXI_arready => m09_couplers_to_interconnect_CPU_ARREADY,
      M_AXI_arvalid => m09_couplers_to_interconnect_CPU_ARVALID,
      M_AXI_awaddr(31 downto 0) => m09_couplers_to_interconnect_CPU_AWADDR(31 downto 0),
      M_AXI_awready => m09_couplers_to_interconnect_CPU_AWREADY,
      M_AXI_awvalid => m09_couplers_to_interconnect_CPU_AWVALID,
      M_AXI_bready => m09_couplers_to_interconnect_CPU_BREADY,
      M_AXI_bresp(1 downto 0) => m09_couplers_to_interconnect_CPU_BRESP(1 downto 0),
      M_AXI_bvalid => m09_couplers_to_interconnect_CPU_BVALID,
      M_AXI_rdata(31 downto 0) => m09_couplers_to_interconnect_CPU_RDATA(31 downto 0),
      M_AXI_rready => m09_couplers_to_interconnect_CPU_RREADY,
      M_AXI_rresp(1 downto 0) => m09_couplers_to_interconnect_CPU_RRESP(1 downto 0),
      M_AXI_rvalid => m09_couplers_to_interconnect_CPU_RVALID,
      M_AXI_wdata(31 downto 0) => m09_couplers_to_interconnect_CPU_WDATA(31 downto 0),
      M_AXI_wready => m09_couplers_to_interconnect_CPU_WREADY,
      M_AXI_wstrb(3 downto 0) => m09_couplers_to_interconnect_CPU_WSTRB(3 downto 0),
      M_AXI_wvalid => m09_couplers_to_interconnect_CPU_WVALID,
      S_ACLK => interconnect_CPU_ACLK_net,
      S_ARESETN => interconnect_CPU_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m09_couplers_ARADDR(319 downto 288),
      S_AXI_arready => xbar_to_m09_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m09_couplers_ARVALID(9),
      S_AXI_awaddr(31 downto 0) => xbar_to_m09_couplers_AWADDR(319 downto 288),
      S_AXI_awready => xbar_to_m09_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m09_couplers_AWVALID(9),
      S_AXI_bready => xbar_to_m09_couplers_BREADY(9),
      S_AXI_bresp(1 downto 0) => xbar_to_m09_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m09_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m09_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m09_couplers_RREADY(9),
      S_AXI_rresp(1 downto 0) => xbar_to_m09_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m09_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m09_couplers_WDATA(319 downto 288),
      S_AXI_wready => xbar_to_m09_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m09_couplers_WSTRB(39 downto 36),
      S_AXI_wvalid => xbar_to_m09_couplers_WVALID(9)
    );
m10_couplers: entity work.m10_couplers_imp_10SM342
     port map (
      M_ACLK => interconnect_CPU_ACLK_net,
      M_ARESETN => interconnect_CPU_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m10_couplers_to_interconnect_CPU_ARADDR(31 downto 0),
      M_AXI_arready => m10_couplers_to_interconnect_CPU_ARREADY,
      M_AXI_arvalid => m10_couplers_to_interconnect_CPU_ARVALID,
      M_AXI_awaddr(31 downto 0) => m10_couplers_to_interconnect_CPU_AWADDR(31 downto 0),
      M_AXI_awready => m10_couplers_to_interconnect_CPU_AWREADY,
      M_AXI_awvalid => m10_couplers_to_interconnect_CPU_AWVALID,
      M_AXI_bready => m10_couplers_to_interconnect_CPU_BREADY,
      M_AXI_bresp(1 downto 0) => m10_couplers_to_interconnect_CPU_BRESP(1 downto 0),
      M_AXI_bvalid => m10_couplers_to_interconnect_CPU_BVALID,
      M_AXI_rdata(31 downto 0) => m10_couplers_to_interconnect_CPU_RDATA(31 downto 0),
      M_AXI_rready => m10_couplers_to_interconnect_CPU_RREADY,
      M_AXI_rresp(1 downto 0) => m10_couplers_to_interconnect_CPU_RRESP(1 downto 0),
      M_AXI_rvalid => m10_couplers_to_interconnect_CPU_RVALID,
      M_AXI_wdata(31 downto 0) => m10_couplers_to_interconnect_CPU_WDATA(31 downto 0),
      M_AXI_wready => m10_couplers_to_interconnect_CPU_WREADY,
      M_AXI_wvalid => m10_couplers_to_interconnect_CPU_WVALID,
      S_ACLK => interconnect_CPU_ACLK_net,
      S_ARESETN => interconnect_CPU_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m10_couplers_ARADDR(351 downto 320),
      S_AXI_arready => xbar_to_m10_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m10_couplers_ARVALID(10),
      S_AXI_awaddr(31 downto 0) => xbar_to_m10_couplers_AWADDR(351 downto 320),
      S_AXI_awready => xbar_to_m10_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m10_couplers_AWVALID(10),
      S_AXI_bready => xbar_to_m10_couplers_BREADY(10),
      S_AXI_bresp(1 downto 0) => xbar_to_m10_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m10_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m10_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m10_couplers_RREADY(10),
      S_AXI_rresp(1 downto 0) => xbar_to_m10_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m10_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m10_couplers_WDATA(351 downto 320),
      S_AXI_wready => xbar_to_m10_couplers_WREADY,
      S_AXI_wvalid => xbar_to_m10_couplers_WVALID(10)
    );
s00_couplers: entity work.s00_couplers_imp_1B8KWGO
     port map (
      M_ACLK => interconnect_CPU_ACLK_net,
      M_ARESETN => interconnect_CPU_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      M_AXI_bready(0) => s00_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready(0) => s00_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready(0) => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => s00_couplers_to_xbar_WVALID(0),
      S_ACLK => interconnect_CPU_ACLK_net,
      S_ARESETN => interconnect_CPU_ARESETN_net,
      S_AXI_araddr(31 downto 0) => interconnect_CPU_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => interconnect_CPU_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => interconnect_CPU_to_s00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => interconnect_CPU_to_s00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => interconnect_CPU_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => interconnect_CPU_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => interconnect_CPU_to_s00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => interconnect_CPU_to_s00_couplers_AWVALID(0),
      S_AXI_bready(0) => interconnect_CPU_to_s00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => interconnect_CPU_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => interconnect_CPU_to_s00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => interconnect_CPU_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => interconnect_CPU_to_s00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => interconnect_CPU_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => interconnect_CPU_to_s00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => interconnect_CPU_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => interconnect_CPU_to_s00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => interconnect_CPU_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => interconnect_CPU_to_s00_couplers_WVALID(0)
    );
xbar: component Mars_AX3_xbar_0
     port map (
      aclk => interconnect_CPU_ACLK_net,
      aresetn => interconnect_CPU_ARESETN_net,
      m_axi_araddr(351 downto 320) => xbar_to_m10_couplers_ARADDR(351 downto 320),
      m_axi_araddr(319 downto 288) => xbar_to_m09_couplers_ARADDR(319 downto 288),
      m_axi_araddr(287 downto 256) => xbar_to_m08_couplers_ARADDR(287 downto 256),
      m_axi_araddr(255 downto 224) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      m_axi_araddr(223 downto 192) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(32 downto 27) => NLW_xbar_m_axi_arprot_UNCONNECTED(32 downto 27),
      m_axi_arprot(26 downto 24) => xbar_to_m08_couplers_ARPROT(26 downto 24),
      m_axi_arprot(23 downto 21) => NLW_xbar_m_axi_arprot_UNCONNECTED(23 downto 21),
      m_axi_arprot(20 downto 18) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      m_axi_arprot(17 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(17 downto 0),
      m_axi_arready(10) => xbar_to_m10_couplers_ARREADY,
      m_axi_arready(9) => xbar_to_m09_couplers_ARREADY,
      m_axi_arready(8) => xbar_to_m08_couplers_ARREADY,
      m_axi_arready(7) => xbar_to_m07_couplers_ARREADY(0),
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY,
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY(0),
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY(0),
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY(0),
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY(0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arvalid(10) => xbar_to_m10_couplers_ARVALID(10),
      m_axi_arvalid(9) => xbar_to_m09_couplers_ARVALID(9),
      m_axi_arvalid(8) => xbar_to_m08_couplers_ARVALID(8),
      m_axi_arvalid(7) => xbar_to_m07_couplers_ARVALID(7),
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(351 downto 320) => xbar_to_m10_couplers_AWADDR(351 downto 320),
      m_axi_awaddr(319 downto 288) => xbar_to_m09_couplers_AWADDR(319 downto 288),
      m_axi_awaddr(287 downto 256) => xbar_to_m08_couplers_AWADDR(287 downto 256),
      m_axi_awaddr(255 downto 224) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      m_axi_awaddr(223 downto 192) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(32 downto 27) => NLW_xbar_m_axi_awprot_UNCONNECTED(32 downto 27),
      m_axi_awprot(26 downto 24) => xbar_to_m08_couplers_AWPROT(26 downto 24),
      m_axi_awprot(23 downto 21) => NLW_xbar_m_axi_awprot_UNCONNECTED(23 downto 21),
      m_axi_awprot(20 downto 18) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      m_axi_awprot(17 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(17 downto 0),
      m_axi_awready(10) => xbar_to_m10_couplers_AWREADY,
      m_axi_awready(9) => xbar_to_m09_couplers_AWREADY,
      m_axi_awready(8) => xbar_to_m08_couplers_AWREADY,
      m_axi_awready(7) => xbar_to_m07_couplers_AWREADY(0),
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY,
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY(0),
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY(0),
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY(0),
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY(0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awvalid(10) => xbar_to_m10_couplers_AWVALID(10),
      m_axi_awvalid(9) => xbar_to_m09_couplers_AWVALID(9),
      m_axi_awvalid(8) => xbar_to_m08_couplers_AWVALID(8),
      m_axi_awvalid(7) => xbar_to_m07_couplers_AWVALID(7),
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(10) => xbar_to_m10_couplers_BREADY(10),
      m_axi_bready(9) => xbar_to_m09_couplers_BREADY(9),
      m_axi_bready(8) => xbar_to_m08_couplers_BREADY(8),
      m_axi_bready(7) => xbar_to_m07_couplers_BREADY(7),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(21 downto 20) => xbar_to_m10_couplers_BRESP(1 downto 0),
      m_axi_bresp(19 downto 18) => xbar_to_m09_couplers_BRESP(1 downto 0),
      m_axi_bresp(17) => xbar_to_m08_couplers_BRESP,
      m_axi_bresp(16) => xbar_to_m08_couplers_BRESP,
      m_axi_bresp(15 downto 14) => xbar_to_m07_couplers_BRESP(1 downto 0),
      m_axi_bresp(13 downto 12) => xbar_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(10) => xbar_to_m10_couplers_BVALID,
      m_axi_bvalid(9) => xbar_to_m09_couplers_BVALID,
      m_axi_bvalid(8) => xbar_to_m08_couplers_BVALID,
      m_axi_bvalid(7) => xbar_to_m07_couplers_BVALID(0),
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID,
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID(0),
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID(0),
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID(0),
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID(0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(351 downto 320) => xbar_to_m10_couplers_RDATA(31 downto 0),
      m_axi_rdata(319 downto 288) => xbar_to_m09_couplers_RDATA(31 downto 0),
      m_axi_rdata(287) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(286) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(285) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(284) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(283) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(282) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(281) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(280) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(279) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(278) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(277) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(276) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(275) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(274) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(273) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(272) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(271) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(270) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(269) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(268) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(267) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(266) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(265) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(264) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(263) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(262) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(261) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(260) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(259) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(258) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(257) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(256) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(255 downto 224) => xbar_to_m07_couplers_RDATA(31 downto 0),
      m_axi_rdata(223 downto 192) => xbar_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(10) => xbar_to_m10_couplers_RREADY(10),
      m_axi_rready(9) => xbar_to_m09_couplers_RREADY(9),
      m_axi_rready(8) => xbar_to_m08_couplers_RREADY(8),
      m_axi_rready(7) => xbar_to_m07_couplers_RREADY(7),
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(21 downto 20) => xbar_to_m10_couplers_RRESP(1 downto 0),
      m_axi_rresp(19 downto 18) => xbar_to_m09_couplers_RRESP(1 downto 0),
      m_axi_rresp(17) => xbar_to_m08_couplers_RRESP,
      m_axi_rresp(16) => xbar_to_m08_couplers_RRESP,
      m_axi_rresp(15 downto 14) => xbar_to_m07_couplers_RRESP(1 downto 0),
      m_axi_rresp(13 downto 12) => xbar_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(10) => xbar_to_m10_couplers_RVALID,
      m_axi_rvalid(9) => xbar_to_m09_couplers_RVALID,
      m_axi_rvalid(8) => xbar_to_m08_couplers_RVALID,
      m_axi_rvalid(7) => xbar_to_m07_couplers_RVALID(0),
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID,
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID(0),
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID(0),
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID(0),
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID(0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(351 downto 320) => xbar_to_m10_couplers_WDATA(351 downto 320),
      m_axi_wdata(319 downto 288) => xbar_to_m09_couplers_WDATA(319 downto 288),
      m_axi_wdata(287 downto 256) => xbar_to_m08_couplers_WDATA(287 downto 256),
      m_axi_wdata(255 downto 224) => xbar_to_m07_couplers_WDATA(255 downto 224),
      m_axi_wdata(223 downto 192) => xbar_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(10) => xbar_to_m10_couplers_WREADY,
      m_axi_wready(9) => xbar_to_m09_couplers_WREADY,
      m_axi_wready(8) => xbar_to_m08_couplers_WREADY,
      m_axi_wready(7) => xbar_to_m07_couplers_WREADY(0),
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY,
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY(0),
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY(0),
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY(0),
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(43 downto 40) => NLW_xbar_m_axi_wstrb_UNCONNECTED(43 downto 40),
      m_axi_wstrb(39 downto 36) => xbar_to_m09_couplers_WSTRB(39 downto 36),
      m_axi_wstrb(35 downto 32) => xbar_to_m08_couplers_WSTRB(35 downto 32),
      m_axi_wstrb(31 downto 28) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      m_axi_wstrb(27 downto 24) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(10) => xbar_to_m10_couplers_WVALID(10),
      m_axi_wvalid(9) => xbar_to_m09_couplers_WVALID(9),
      m_axi_wvalid(8) => xbar_to_m08_couplers_WVALID(8),
      m_axi_wvalid(7) => xbar_to_m07_couplers_WVALID(7),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY(0),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY(0),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mars_AX3_interconnect_DDR_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 27 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 27 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_ACLK : in STD_LOGIC;
    S02_ARESETN : in STD_LOGIC;
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arready : out STD_LOGIC;
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC;
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_bready : in STD_LOGIC;
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_rlast : out STD_LOGIC;
    S02_AXI_rready : in STD_LOGIC;
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rvalid : out STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_wvalid : in STD_LOGIC;
    S03_ACLK : in STD_LOGIC;
    S03_ARESETN : in STD_LOGIC;
    S03_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S03_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arready : out STD_LOGIC;
    S03_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arvalid : in STD_LOGIC;
    S03_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_rlast : out STD_LOGIC;
    S03_AXI_rready : in STD_LOGIC;
    S03_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_rvalid : out STD_LOGIC;
    S04_ACLK : in STD_LOGIC;
    S04_ARESETN : in STD_LOGIC;
    S04_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awready : out STD_LOGIC;
    S04_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awvalid : in STD_LOGIC;
    S04_AXI_bready : in STD_LOGIC;
    S04_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_bvalid : out STD_LOGIC;
    S04_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_wlast : in STD_LOGIC;
    S04_AXI_wready : out STD_LOGIC;
    S04_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_wvalid : in STD_LOGIC
  );
end Mars_AX3_interconnect_DDR_0;

architecture STRUCTURE of Mars_AX3_interconnect_DDR_0 is
  component Mars_AX3_xbar_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 159 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 159 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 159 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 159 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Mars_AX3_xbar_1;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal S01_ACLK_1 : STD_LOGIC;
  signal S01_ARESETN_1 : STD_LOGIC;
  signal S02_ACLK_1 : STD_LOGIC;
  signal S02_ARESETN_1 : STD_LOGIC;
  signal S03_ACLK_1 : STD_LOGIC;
  signal S03_ARESETN_1 : STD_LOGIC;
  signal S04_ACLK_1 : STD_LOGIC;
  signal S04_ARESETN_1 : STD_LOGIC;
  signal interconnect_DDR_ACLK_net : STD_LOGIC;
  signal interconnect_DDR_ARESETN_net : STD_LOGIC;
  signal interconnect_DDR_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_DDR_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_DDR_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_DDR_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal interconnect_DDR_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_DDR_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_DDR_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_DDR_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_DDR_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal interconnect_DDR_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_DDR_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_DDR_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_DDR_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_to_s00_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_DDR_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_DDR_to_s00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_DDR_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_DDR_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_DDR_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_DDR_to_s01_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal interconnect_DDR_to_s01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_to_s01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_DDR_to_s01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_to_s01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_DDR_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_DDR_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_DDR_to_s01_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal interconnect_DDR_to_s01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_to_s01_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_DDR_to_s01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_to_s01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s01_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_to_s01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_DDR_to_s01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_DDR_to_s01_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_to_s01_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_DDR_to_s01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_DDR_to_s01_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_DDR_to_s01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_to_s02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_DDR_to_s02_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_DDR_to_s02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_DDR_to_s02_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal interconnect_DDR_to_s02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_to_s02_couplers_ARREADY : STD_LOGIC;
  signal interconnect_DDR_to_s02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_to_s02_couplers_ARVALID : STD_LOGIC;
  signal interconnect_DDR_to_s02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_DDR_to_s02_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_DDR_to_s02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_DDR_to_s02_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal interconnect_DDR_to_s02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_to_s02_couplers_AWREADY : STD_LOGIC;
  signal interconnect_DDR_to_s02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_to_s02_couplers_AWVALID : STD_LOGIC;
  signal interconnect_DDR_to_s02_couplers_BREADY : STD_LOGIC;
  signal interconnect_DDR_to_s02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_DDR_to_s02_couplers_BVALID : STD_LOGIC;
  signal interconnect_DDR_to_s02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_DDR_to_s02_couplers_RLAST : STD_LOGIC;
  signal interconnect_DDR_to_s02_couplers_RREADY : STD_LOGIC;
  signal interconnect_DDR_to_s02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_DDR_to_s02_couplers_RVALID : STD_LOGIC;
  signal interconnect_DDR_to_s02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_DDR_to_s02_couplers_WLAST : STD_LOGIC;
  signal interconnect_DDR_to_s02_couplers_WREADY : STD_LOGIC;
  signal interconnect_DDR_to_s02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_DDR_to_s02_couplers_WVALID : STD_LOGIC;
  signal interconnect_DDR_to_s03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_DDR_to_s03_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_DDR_to_s03_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_DDR_to_s03_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal interconnect_DDR_to_s03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_to_s03_couplers_ARREADY : STD_LOGIC;
  signal interconnect_DDR_to_s03_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_to_s03_couplers_ARVALID : STD_LOGIC;
  signal interconnect_DDR_to_s03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_DDR_to_s03_couplers_RLAST : STD_LOGIC;
  signal interconnect_DDR_to_s03_couplers_RREADY : STD_LOGIC;
  signal interconnect_DDR_to_s03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_DDR_to_s03_couplers_RVALID : STD_LOGIC;
  signal interconnect_DDR_to_s04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_DDR_to_s04_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_DDR_to_s04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_DDR_to_s04_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal interconnect_DDR_to_s04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_to_s04_couplers_AWREADY : STD_LOGIC;
  signal interconnect_DDR_to_s04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_to_s04_couplers_AWVALID : STD_LOGIC;
  signal interconnect_DDR_to_s04_couplers_BREADY : STD_LOGIC;
  signal interconnect_DDR_to_s04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_DDR_to_s04_couplers_BVALID : STD_LOGIC;
  signal interconnect_DDR_to_s04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_DDR_to_s04_couplers_WLAST : STD_LOGIC;
  signal interconnect_DDR_to_s04_couplers_WREADY : STD_LOGIC;
  signal interconnect_DDR_to_s04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_DDR_to_s04_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_interconnect_DDR_ARADDR : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal m00_couplers_to_interconnect_DDR_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_interconnect_DDR_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_interconnect_DDR_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_interconnect_DDR_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_interconnect_DDR_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_interconnect_DDR_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_interconnect_DDR_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_interconnect_DDR_ARREADY : STD_LOGIC;
  signal m00_couplers_to_interconnect_DDR_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_interconnect_DDR_ARVALID : STD_LOGIC;
  signal m00_couplers_to_interconnect_DDR_AWADDR : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal m00_couplers_to_interconnect_DDR_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_interconnect_DDR_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_interconnect_DDR_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_interconnect_DDR_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_interconnect_DDR_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_interconnect_DDR_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_interconnect_DDR_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_interconnect_DDR_AWREADY : STD_LOGIC;
  signal m00_couplers_to_interconnect_DDR_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_interconnect_DDR_AWVALID : STD_LOGIC;
  signal m00_couplers_to_interconnect_DDR_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_interconnect_DDR_BREADY : STD_LOGIC;
  signal m00_couplers_to_interconnect_DDR_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_interconnect_DDR_BVALID : STD_LOGIC;
  signal m00_couplers_to_interconnect_DDR_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_interconnect_DDR_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_interconnect_DDR_RLAST : STD_LOGIC;
  signal m00_couplers_to_interconnect_DDR_RREADY : STD_LOGIC;
  signal m00_couplers_to_interconnect_DDR_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_interconnect_DDR_RVALID : STD_LOGIC;
  signal m00_couplers_to_interconnect_DDR_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_interconnect_DDR_WLAST : STD_LOGIC;
  signal m00_couplers_to_interconnect_DDR_WREADY : STD_LOGIC;
  signal m00_couplers_to_interconnect_DDR_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_interconnect_DDR_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal s01_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal s01_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal s02_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s02_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s03_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s03_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s03_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal s03_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s03_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal s03_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s04_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s04_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s04_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal s04_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s04_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_arready_UNCONNECTED : STD_LOGIC_VECTOR ( 4 to 4 );
  signal NLW_xbar_s_axi_awready_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 6 );
  signal NLW_xbar_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_xbar_s_axi_bvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_xbar_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 6 );
  signal NLW_xbar_s_axi_rlast_UNCONNECTED : STD_LOGIC_VECTOR ( 4 to 4 );
  signal NLW_xbar_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal NLW_xbar_s_axi_rvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 4 to 4 );
  signal NLW_xbar_s_axi_wready_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(27 downto 0) <= m00_couplers_to_interconnect_DDR_ARADDR(27 downto 0);
  M00_AXI_arburst(1 downto 0) <= m00_couplers_to_interconnect_DDR_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= m00_couplers_to_interconnect_DDR_ARCACHE(3 downto 0);
  M00_AXI_arid(2 downto 0) <= m00_couplers_to_interconnect_DDR_ARID(2 downto 0);
  M00_AXI_arlen(7 downto 0) <= m00_couplers_to_interconnect_DDR_ARLEN(7 downto 0);
  M00_AXI_arlock(0) <= m00_couplers_to_interconnect_DDR_ARLOCK(0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_interconnect_DDR_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= m00_couplers_to_interconnect_DDR_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= m00_couplers_to_interconnect_DDR_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_interconnect_DDR_ARVALID;
  M00_AXI_awaddr(27 downto 0) <= m00_couplers_to_interconnect_DDR_AWADDR(27 downto 0);
  M00_AXI_awburst(1 downto 0) <= m00_couplers_to_interconnect_DDR_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= m00_couplers_to_interconnect_DDR_AWCACHE(3 downto 0);
  M00_AXI_awid(2 downto 0) <= m00_couplers_to_interconnect_DDR_AWID(2 downto 0);
  M00_AXI_awlen(7 downto 0) <= m00_couplers_to_interconnect_DDR_AWLEN(7 downto 0);
  M00_AXI_awlock(0) <= m00_couplers_to_interconnect_DDR_AWLOCK(0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_interconnect_DDR_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= m00_couplers_to_interconnect_DDR_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= m00_couplers_to_interconnect_DDR_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_interconnect_DDR_AWVALID;
  M00_AXI_bready <= m00_couplers_to_interconnect_DDR_BREADY;
  M00_AXI_rready <= m00_couplers_to_interconnect_DDR_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_interconnect_DDR_WDATA(31 downto 0);
  M00_AXI_wlast <= m00_couplers_to_interconnect_DDR_WLAST;
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_interconnect_DDR_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_interconnect_DDR_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready(0) <= interconnect_DDR_to_s00_couplers_ARREADY(0);
  S00_AXI_awready(0) <= interconnect_DDR_to_s00_couplers_AWREADY(0);
  S00_AXI_bid(2 downto 0) <= interconnect_DDR_to_s00_couplers_BID(2 downto 0);
  S00_AXI_bresp(1 downto 0) <= interconnect_DDR_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= interconnect_DDR_to_s00_couplers_BVALID(0);
  S00_AXI_rdata(31 downto 0) <= interconnect_DDR_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(2 downto 0) <= interconnect_DDR_to_s00_couplers_RID(2 downto 0);
  S00_AXI_rlast(0) <= interconnect_DDR_to_s00_couplers_RLAST(0);
  S00_AXI_rresp(1 downto 0) <= interconnect_DDR_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= interconnect_DDR_to_s00_couplers_RVALID(0);
  S00_AXI_wready(0) <= interconnect_DDR_to_s00_couplers_WREADY(0);
  S01_ACLK_1 <= S01_ACLK;
  S01_ARESETN_1 <= S01_ARESETN;
  S01_AXI_arready(0) <= interconnect_DDR_to_s01_couplers_ARREADY(0);
  S01_AXI_awready(0) <= interconnect_DDR_to_s01_couplers_AWREADY(0);
  S01_AXI_bid(2 downto 0) <= interconnect_DDR_to_s01_couplers_BID(2 downto 0);
  S01_AXI_bresp(1 downto 0) <= interconnect_DDR_to_s01_couplers_BRESP(1 downto 0);
  S01_AXI_bvalid(0) <= interconnect_DDR_to_s01_couplers_BVALID(0);
  S01_AXI_rdata(31 downto 0) <= interconnect_DDR_to_s01_couplers_RDATA(31 downto 0);
  S01_AXI_rid(2 downto 0) <= interconnect_DDR_to_s01_couplers_RID(2 downto 0);
  S01_AXI_rlast(0) <= interconnect_DDR_to_s01_couplers_RLAST(0);
  S01_AXI_rresp(1 downto 0) <= interconnect_DDR_to_s01_couplers_RRESP(1 downto 0);
  S01_AXI_rvalid(0) <= interconnect_DDR_to_s01_couplers_RVALID(0);
  S01_AXI_wready(0) <= interconnect_DDR_to_s01_couplers_WREADY(0);
  S02_ACLK_1 <= S02_ACLK;
  S02_ARESETN_1 <= S02_ARESETN;
  S02_AXI_arready <= interconnect_DDR_to_s02_couplers_ARREADY;
  S02_AXI_awready <= interconnect_DDR_to_s02_couplers_AWREADY;
  S02_AXI_bresp(1 downto 0) <= interconnect_DDR_to_s02_couplers_BRESP(1 downto 0);
  S02_AXI_bvalid <= interconnect_DDR_to_s02_couplers_BVALID;
  S02_AXI_rdata(31 downto 0) <= interconnect_DDR_to_s02_couplers_RDATA(31 downto 0);
  S02_AXI_rlast <= interconnect_DDR_to_s02_couplers_RLAST;
  S02_AXI_rresp(1 downto 0) <= interconnect_DDR_to_s02_couplers_RRESP(1 downto 0);
  S02_AXI_rvalid <= interconnect_DDR_to_s02_couplers_RVALID;
  S02_AXI_wready <= interconnect_DDR_to_s02_couplers_WREADY;
  S03_ACLK_1 <= S03_ACLK;
  S03_ARESETN_1 <= S03_ARESETN;
  S03_AXI_arready <= interconnect_DDR_to_s03_couplers_ARREADY;
  S03_AXI_rdata(31 downto 0) <= interconnect_DDR_to_s03_couplers_RDATA(31 downto 0);
  S03_AXI_rlast <= interconnect_DDR_to_s03_couplers_RLAST;
  S03_AXI_rresp(1 downto 0) <= interconnect_DDR_to_s03_couplers_RRESP(1 downto 0);
  S03_AXI_rvalid <= interconnect_DDR_to_s03_couplers_RVALID;
  S04_ACLK_1 <= S04_ACLK;
  S04_ARESETN_1 <= S04_ARESETN;
  S04_AXI_awready <= interconnect_DDR_to_s04_couplers_AWREADY;
  S04_AXI_bresp(1 downto 0) <= interconnect_DDR_to_s04_couplers_BRESP(1 downto 0);
  S04_AXI_bvalid <= interconnect_DDR_to_s04_couplers_BVALID;
  S04_AXI_wready <= interconnect_DDR_to_s04_couplers_WREADY;
  interconnect_DDR_ACLK_net <= ACLK;
  interconnect_DDR_ARESETN_net <= ARESETN;
  interconnect_DDR_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  interconnect_DDR_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  interconnect_DDR_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  interconnect_DDR_to_s00_couplers_ARID(0) <= S00_AXI_arid(0);
  interconnect_DDR_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  interconnect_DDR_to_s00_couplers_ARLOCK(0) <= S00_AXI_arlock(0);
  interconnect_DDR_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  interconnect_DDR_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  interconnect_DDR_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  interconnect_DDR_to_s00_couplers_ARVALID(0) <= S00_AXI_arvalid(0);
  interconnect_DDR_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  interconnect_DDR_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  interconnect_DDR_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  interconnect_DDR_to_s00_couplers_AWID(0) <= S00_AXI_awid(0);
  interconnect_DDR_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  interconnect_DDR_to_s00_couplers_AWLOCK(0) <= S00_AXI_awlock(0);
  interconnect_DDR_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  interconnect_DDR_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  interconnect_DDR_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  interconnect_DDR_to_s00_couplers_AWVALID(0) <= S00_AXI_awvalid(0);
  interconnect_DDR_to_s00_couplers_BREADY(0) <= S00_AXI_bready(0);
  interconnect_DDR_to_s00_couplers_RREADY(0) <= S00_AXI_rready(0);
  interconnect_DDR_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  interconnect_DDR_to_s00_couplers_WLAST(0) <= S00_AXI_wlast(0);
  interconnect_DDR_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  interconnect_DDR_to_s00_couplers_WVALID(0) <= S00_AXI_wvalid(0);
  interconnect_DDR_to_s01_couplers_ARADDR(31 downto 0) <= S01_AXI_araddr(31 downto 0);
  interconnect_DDR_to_s01_couplers_ARBURST(1 downto 0) <= S01_AXI_arburst(1 downto 0);
  interconnect_DDR_to_s01_couplers_ARCACHE(3 downto 0) <= S01_AXI_arcache(3 downto 0);
  interconnect_DDR_to_s01_couplers_ARID(0) <= S01_AXI_arid(0);
  interconnect_DDR_to_s01_couplers_ARLEN(7 downto 0) <= S01_AXI_arlen(7 downto 0);
  interconnect_DDR_to_s01_couplers_ARLOCK(0) <= S01_AXI_arlock(0);
  interconnect_DDR_to_s01_couplers_ARPROT(2 downto 0) <= S01_AXI_arprot(2 downto 0);
  interconnect_DDR_to_s01_couplers_ARQOS(3 downto 0) <= S01_AXI_arqos(3 downto 0);
  interconnect_DDR_to_s01_couplers_ARSIZE(2 downto 0) <= S01_AXI_arsize(2 downto 0);
  interconnect_DDR_to_s01_couplers_ARVALID(0) <= S01_AXI_arvalid(0);
  interconnect_DDR_to_s01_couplers_AWADDR(31 downto 0) <= S01_AXI_awaddr(31 downto 0);
  interconnect_DDR_to_s01_couplers_AWBURST(1 downto 0) <= S01_AXI_awburst(1 downto 0);
  interconnect_DDR_to_s01_couplers_AWCACHE(3 downto 0) <= S01_AXI_awcache(3 downto 0);
  interconnect_DDR_to_s01_couplers_AWID(0) <= S01_AXI_awid(0);
  interconnect_DDR_to_s01_couplers_AWLEN(7 downto 0) <= S01_AXI_awlen(7 downto 0);
  interconnect_DDR_to_s01_couplers_AWLOCK(0) <= S01_AXI_awlock(0);
  interconnect_DDR_to_s01_couplers_AWPROT(2 downto 0) <= S01_AXI_awprot(2 downto 0);
  interconnect_DDR_to_s01_couplers_AWQOS(3 downto 0) <= S01_AXI_awqos(3 downto 0);
  interconnect_DDR_to_s01_couplers_AWSIZE(2 downto 0) <= S01_AXI_awsize(2 downto 0);
  interconnect_DDR_to_s01_couplers_AWVALID(0) <= S01_AXI_awvalid(0);
  interconnect_DDR_to_s01_couplers_BREADY(0) <= S01_AXI_bready(0);
  interconnect_DDR_to_s01_couplers_RREADY(0) <= S01_AXI_rready(0);
  interconnect_DDR_to_s01_couplers_WDATA(31 downto 0) <= S01_AXI_wdata(31 downto 0);
  interconnect_DDR_to_s01_couplers_WLAST(0) <= S01_AXI_wlast(0);
  interconnect_DDR_to_s01_couplers_WSTRB(3 downto 0) <= S01_AXI_wstrb(3 downto 0);
  interconnect_DDR_to_s01_couplers_WVALID(0) <= S01_AXI_wvalid(0);
  interconnect_DDR_to_s02_couplers_ARADDR(31 downto 0) <= S02_AXI_araddr(31 downto 0);
  interconnect_DDR_to_s02_couplers_ARBURST(1 downto 0) <= S02_AXI_arburst(1 downto 0);
  interconnect_DDR_to_s02_couplers_ARCACHE(3 downto 0) <= S02_AXI_arcache(3 downto 0);
  interconnect_DDR_to_s02_couplers_ARLEN(7 downto 0) <= S02_AXI_arlen(7 downto 0);
  interconnect_DDR_to_s02_couplers_ARPROT(2 downto 0) <= S02_AXI_arprot(2 downto 0);
  interconnect_DDR_to_s02_couplers_ARSIZE(2 downto 0) <= S02_AXI_arsize(2 downto 0);
  interconnect_DDR_to_s02_couplers_ARVALID <= S02_AXI_arvalid;
  interconnect_DDR_to_s02_couplers_AWADDR(31 downto 0) <= S02_AXI_awaddr(31 downto 0);
  interconnect_DDR_to_s02_couplers_AWBURST(1 downto 0) <= S02_AXI_awburst(1 downto 0);
  interconnect_DDR_to_s02_couplers_AWCACHE(3 downto 0) <= S02_AXI_awcache(3 downto 0);
  interconnect_DDR_to_s02_couplers_AWLEN(7 downto 0) <= S02_AXI_awlen(7 downto 0);
  interconnect_DDR_to_s02_couplers_AWPROT(2 downto 0) <= S02_AXI_awprot(2 downto 0);
  interconnect_DDR_to_s02_couplers_AWSIZE(2 downto 0) <= S02_AXI_awsize(2 downto 0);
  interconnect_DDR_to_s02_couplers_AWVALID <= S02_AXI_awvalid;
  interconnect_DDR_to_s02_couplers_BREADY <= S02_AXI_bready;
  interconnect_DDR_to_s02_couplers_RREADY <= S02_AXI_rready;
  interconnect_DDR_to_s02_couplers_WDATA(31 downto 0) <= S02_AXI_wdata(31 downto 0);
  interconnect_DDR_to_s02_couplers_WLAST <= S02_AXI_wlast;
  interconnect_DDR_to_s02_couplers_WSTRB(3 downto 0) <= S02_AXI_wstrb(3 downto 0);
  interconnect_DDR_to_s02_couplers_WVALID <= S02_AXI_wvalid;
  interconnect_DDR_to_s03_couplers_ARADDR(31 downto 0) <= S03_AXI_araddr(31 downto 0);
  interconnect_DDR_to_s03_couplers_ARBURST(1 downto 0) <= S03_AXI_arburst(1 downto 0);
  interconnect_DDR_to_s03_couplers_ARCACHE(3 downto 0) <= S03_AXI_arcache(3 downto 0);
  interconnect_DDR_to_s03_couplers_ARLEN(7 downto 0) <= S03_AXI_arlen(7 downto 0);
  interconnect_DDR_to_s03_couplers_ARPROT(2 downto 0) <= S03_AXI_arprot(2 downto 0);
  interconnect_DDR_to_s03_couplers_ARSIZE(2 downto 0) <= S03_AXI_arsize(2 downto 0);
  interconnect_DDR_to_s03_couplers_ARVALID <= S03_AXI_arvalid;
  interconnect_DDR_to_s03_couplers_RREADY <= S03_AXI_rready;
  interconnect_DDR_to_s04_couplers_AWADDR(31 downto 0) <= S04_AXI_awaddr(31 downto 0);
  interconnect_DDR_to_s04_couplers_AWBURST(1 downto 0) <= S04_AXI_awburst(1 downto 0);
  interconnect_DDR_to_s04_couplers_AWCACHE(3 downto 0) <= S04_AXI_awcache(3 downto 0);
  interconnect_DDR_to_s04_couplers_AWLEN(7 downto 0) <= S04_AXI_awlen(7 downto 0);
  interconnect_DDR_to_s04_couplers_AWPROT(2 downto 0) <= S04_AXI_awprot(2 downto 0);
  interconnect_DDR_to_s04_couplers_AWSIZE(2 downto 0) <= S04_AXI_awsize(2 downto 0);
  interconnect_DDR_to_s04_couplers_AWVALID <= S04_AXI_awvalid;
  interconnect_DDR_to_s04_couplers_BREADY <= S04_AXI_bready;
  interconnect_DDR_to_s04_couplers_WDATA(31 downto 0) <= S04_AXI_wdata(31 downto 0);
  interconnect_DDR_to_s04_couplers_WLAST <= S04_AXI_wlast;
  interconnect_DDR_to_s04_couplers_WSTRB(3 downto 0) <= S04_AXI_wstrb(3 downto 0);
  interconnect_DDR_to_s04_couplers_WVALID <= S04_AXI_wvalid;
  m00_couplers_to_interconnect_DDR_ARREADY <= M00_AXI_arready;
  m00_couplers_to_interconnect_DDR_AWREADY <= M00_AXI_awready;
  m00_couplers_to_interconnect_DDR_BID(2 downto 0) <= M00_AXI_bid(2 downto 0);
  m00_couplers_to_interconnect_DDR_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_interconnect_DDR_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_interconnect_DDR_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_interconnect_DDR_RID(2 downto 0) <= M00_AXI_rid(2 downto 0);
  m00_couplers_to_interconnect_DDR_RLAST <= M00_AXI_rlast;
  m00_couplers_to_interconnect_DDR_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_interconnect_DDR_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_interconnect_DDR_WREADY <= M00_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_1BYIGWA
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(27 downto 0) => m00_couplers_to_interconnect_DDR_ARADDR(27 downto 0),
      M_AXI_arburst(1 downto 0) => m00_couplers_to_interconnect_DDR_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m00_couplers_to_interconnect_DDR_ARCACHE(3 downto 0),
      M_AXI_arid(2 downto 0) => m00_couplers_to_interconnect_DDR_ARID(2 downto 0),
      M_AXI_arlen(7 downto 0) => m00_couplers_to_interconnect_DDR_ARLEN(7 downto 0),
      M_AXI_arlock(0) => m00_couplers_to_interconnect_DDR_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_interconnect_DDR_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m00_couplers_to_interconnect_DDR_ARQOS(3 downto 0),
      M_AXI_arready => m00_couplers_to_interconnect_DDR_ARREADY,
      M_AXI_arsize(2 downto 0) => m00_couplers_to_interconnect_DDR_ARSIZE(2 downto 0),
      M_AXI_arvalid => m00_couplers_to_interconnect_DDR_ARVALID,
      M_AXI_awaddr(27 downto 0) => m00_couplers_to_interconnect_DDR_AWADDR(27 downto 0),
      M_AXI_awburst(1 downto 0) => m00_couplers_to_interconnect_DDR_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m00_couplers_to_interconnect_DDR_AWCACHE(3 downto 0),
      M_AXI_awid(2 downto 0) => m00_couplers_to_interconnect_DDR_AWID(2 downto 0),
      M_AXI_awlen(7 downto 0) => m00_couplers_to_interconnect_DDR_AWLEN(7 downto 0),
      M_AXI_awlock(0) => m00_couplers_to_interconnect_DDR_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_interconnect_DDR_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m00_couplers_to_interconnect_DDR_AWQOS(3 downto 0),
      M_AXI_awready => m00_couplers_to_interconnect_DDR_AWREADY,
      M_AXI_awsize(2 downto 0) => m00_couplers_to_interconnect_DDR_AWSIZE(2 downto 0),
      M_AXI_awvalid => m00_couplers_to_interconnect_DDR_AWVALID,
      M_AXI_bid(2 downto 0) => m00_couplers_to_interconnect_DDR_BID(2 downto 0),
      M_AXI_bready => m00_couplers_to_interconnect_DDR_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_interconnect_DDR_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_interconnect_DDR_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_interconnect_DDR_RDATA(31 downto 0),
      M_AXI_rid(2 downto 0) => m00_couplers_to_interconnect_DDR_RID(2 downto 0),
      M_AXI_rlast => m00_couplers_to_interconnect_DDR_RLAST,
      M_AXI_rready => m00_couplers_to_interconnect_DDR_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_interconnect_DDR_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_interconnect_DDR_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_interconnect_DDR_WDATA(31 downto 0),
      M_AXI_wlast => m00_couplers_to_interconnect_DDR_WLAST,
      M_AXI_wready => m00_couplers_to_interconnect_DDR_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_interconnect_DDR_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_interconnect_DDR_WVALID,
      S_ACLK => interconnect_DDR_ACLK_net,
      S_ARESETN => interconnect_DDR_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(2 downto 0) => xbar_to_m00_couplers_ARID(2 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(2 downto 0) => xbar_to_m00_couplers_AWID(2 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(2 downto 0) => xbar_to_m00_couplers_BID(2 downto 0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rid(2 downto 0) => xbar_to_m00_couplers_RID(2 downto 0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
s00_couplers: entity work.s00_couplers_imp_NU0XMW
     port map (
      M_ACLK => interconnect_DDR_ACLK_net,
      M_ARESETN => interconnect_DDR_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(0) => s00_couplers_to_xbar_ARID(0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(0) => s00_couplers_to_xbar_AWID(0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      M_AXI_bid(2 downto 0) => s00_couplers_to_xbar_BID(2 downto 0),
      M_AXI_bready(0) => s00_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rid(2 downto 0) => s00_couplers_to_xbar_RID(2 downto 0),
      M_AXI_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready(0) => s00_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast(0) => s00_couplers_to_xbar_WLAST(0),
      M_AXI_wready(0) => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => s00_couplers_to_xbar_WVALID(0),
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => interconnect_DDR_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => interconnect_DDR_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => interconnect_DDR_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => interconnect_DDR_to_s00_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => interconnect_DDR_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => interconnect_DDR_to_s00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => interconnect_DDR_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => interconnect_DDR_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready(0) => interconnect_DDR_to_s00_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => interconnect_DDR_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid(0) => interconnect_DDR_to_s00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => interconnect_DDR_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => interconnect_DDR_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => interconnect_DDR_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => interconnect_DDR_to_s00_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => interconnect_DDR_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => interconnect_DDR_to_s00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => interconnect_DDR_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => interconnect_DDR_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready(0) => interconnect_DDR_to_s00_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => interconnect_DDR_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid(0) => interconnect_DDR_to_s00_couplers_AWVALID(0),
      S_AXI_bid(2 downto 0) => interconnect_DDR_to_s00_couplers_BID(2 downto 0),
      S_AXI_bready(0) => interconnect_DDR_to_s00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => interconnect_DDR_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => interconnect_DDR_to_s00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => interconnect_DDR_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(2 downto 0) => interconnect_DDR_to_s00_couplers_RID(2 downto 0),
      S_AXI_rlast(0) => interconnect_DDR_to_s00_couplers_RLAST(0),
      S_AXI_rready(0) => interconnect_DDR_to_s00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => interconnect_DDR_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => interconnect_DDR_to_s00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => interconnect_DDR_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wlast(0) => interconnect_DDR_to_s00_couplers_WLAST(0),
      S_AXI_wready(0) => interconnect_DDR_to_s00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => interconnect_DDR_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => interconnect_DDR_to_s00_couplers_WVALID(0)
    );
s01_couplers: entity work.s01_couplers_imp_1FSYNC9
     port map (
      M_ACLK => interconnect_DDR_ACLK_net,
      M_ARESETN => interconnect_DDR_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(0) => s01_couplers_to_xbar_ARID(0),
      M_AXI_arlen(7 downto 0) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s01_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready(0) => s01_couplers_to_xbar_ARREADY(1),
      M_AXI_arsize(2 downto 0) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid(0) => s01_couplers_to_xbar_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(0) => s01_couplers_to_xbar_AWID(0),
      M_AXI_awlen(7 downto 0) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s01_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready(0) => s01_couplers_to_xbar_AWREADY(1),
      M_AXI_awsize(2 downto 0) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => s01_couplers_to_xbar_AWVALID(0),
      M_AXI_bid(2 downto 0) => s01_couplers_to_xbar_BID(5 downto 3),
      M_AXI_bready(0) => s01_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      M_AXI_bvalid(0) => s01_couplers_to_xbar_BVALID(1),
      M_AXI_rdata(31 downto 0) => s01_couplers_to_xbar_RDATA(63 downto 32),
      M_AXI_rid(2 downto 0) => s01_couplers_to_xbar_RID(5 downto 3),
      M_AXI_rlast(0) => s01_couplers_to_xbar_RLAST(1),
      M_AXI_rready(0) => s01_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s01_couplers_to_xbar_RRESP(3 downto 2),
      M_AXI_rvalid(0) => s01_couplers_to_xbar_RVALID(1),
      M_AXI_wdata(31 downto 0) => s01_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast(0) => s01_couplers_to_xbar_WLAST(0),
      M_AXI_wready(0) => s01_couplers_to_xbar_WREADY(1),
      M_AXI_wstrb(3 downto 0) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => s01_couplers_to_xbar_WVALID(0),
      S_ACLK => S01_ACLK_1,
      S_ARESETN => S01_ARESETN_1,
      S_AXI_araddr(31 downto 0) => interconnect_DDR_to_s01_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => interconnect_DDR_to_s01_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => interconnect_DDR_to_s01_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => interconnect_DDR_to_s01_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => interconnect_DDR_to_s01_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => interconnect_DDR_to_s01_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => interconnect_DDR_to_s01_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => interconnect_DDR_to_s01_couplers_ARQOS(3 downto 0),
      S_AXI_arready(0) => interconnect_DDR_to_s01_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => interconnect_DDR_to_s01_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid(0) => interconnect_DDR_to_s01_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => interconnect_DDR_to_s01_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => interconnect_DDR_to_s01_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => interconnect_DDR_to_s01_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => interconnect_DDR_to_s01_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => interconnect_DDR_to_s01_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => interconnect_DDR_to_s01_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => interconnect_DDR_to_s01_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => interconnect_DDR_to_s01_couplers_AWQOS(3 downto 0),
      S_AXI_awready(0) => interconnect_DDR_to_s01_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => interconnect_DDR_to_s01_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid(0) => interconnect_DDR_to_s01_couplers_AWVALID(0),
      S_AXI_bid(2 downto 0) => interconnect_DDR_to_s01_couplers_BID(2 downto 0),
      S_AXI_bready(0) => interconnect_DDR_to_s01_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => interconnect_DDR_to_s01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => interconnect_DDR_to_s01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => interconnect_DDR_to_s01_couplers_RDATA(31 downto 0),
      S_AXI_rid(2 downto 0) => interconnect_DDR_to_s01_couplers_RID(2 downto 0),
      S_AXI_rlast(0) => interconnect_DDR_to_s01_couplers_RLAST(0),
      S_AXI_rready(0) => interconnect_DDR_to_s01_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => interconnect_DDR_to_s01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => interconnect_DDR_to_s01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => interconnect_DDR_to_s01_couplers_WDATA(31 downto 0),
      S_AXI_wlast(0) => interconnect_DDR_to_s01_couplers_WLAST(0),
      S_AXI_wready(0) => interconnect_DDR_to_s01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => interconnect_DDR_to_s01_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => interconnect_DDR_to_s01_couplers_WVALID(0)
    );
s02_couplers: entity work.s02_couplers_imp_M920GB
     port map (
      M_ACLK => interconnect_DDR_ACLK_net,
      M_ARESETN => interconnect_DDR_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s02_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arprot(2 downto 0) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s02_couplers_to_xbar_ARREADY(2),
      M_AXI_arsize(2 downto 0) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s02_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s02_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s02_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s02_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s02_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awprot(2 downto 0) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s02_couplers_to_xbar_AWREADY(2),
      M_AXI_awsize(2 downto 0) => s02_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s02_couplers_to_xbar_AWVALID,
      M_AXI_bready => s02_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s02_couplers_to_xbar_BRESP(5 downto 4),
      M_AXI_bvalid => s02_couplers_to_xbar_BVALID(2),
      M_AXI_rdata(31 downto 0) => s02_couplers_to_xbar_RDATA(95 downto 64),
      M_AXI_rlast => s02_couplers_to_xbar_RLAST(2),
      M_AXI_rready => s02_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s02_couplers_to_xbar_RRESP(5 downto 4),
      M_AXI_rvalid => s02_couplers_to_xbar_RVALID(2),
      M_AXI_wdata(31 downto 0) => s02_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s02_couplers_to_xbar_WLAST,
      M_AXI_wready => s02_couplers_to_xbar_WREADY(2),
      M_AXI_wstrb(3 downto 0) => s02_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s02_couplers_to_xbar_WVALID,
      S_ACLK => S02_ACLK_1,
      S_ARESETN => S02_ARESETN_1,
      S_AXI_araddr(31 downto 0) => interconnect_DDR_to_s02_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => interconnect_DDR_to_s02_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => interconnect_DDR_to_s02_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => interconnect_DDR_to_s02_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => interconnect_DDR_to_s02_couplers_ARPROT(2 downto 0),
      S_AXI_arready => interconnect_DDR_to_s02_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => interconnect_DDR_to_s02_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => interconnect_DDR_to_s02_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => interconnect_DDR_to_s02_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => interconnect_DDR_to_s02_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => interconnect_DDR_to_s02_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => interconnect_DDR_to_s02_couplers_AWLEN(7 downto 0),
      S_AXI_awprot(2 downto 0) => interconnect_DDR_to_s02_couplers_AWPROT(2 downto 0),
      S_AXI_awready => interconnect_DDR_to_s02_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => interconnect_DDR_to_s02_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => interconnect_DDR_to_s02_couplers_AWVALID,
      S_AXI_bready => interconnect_DDR_to_s02_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => interconnect_DDR_to_s02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => interconnect_DDR_to_s02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => interconnect_DDR_to_s02_couplers_RDATA(31 downto 0),
      S_AXI_rlast => interconnect_DDR_to_s02_couplers_RLAST,
      S_AXI_rready => interconnect_DDR_to_s02_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => interconnect_DDR_to_s02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => interconnect_DDR_to_s02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => interconnect_DDR_to_s02_couplers_WDATA(31 downto 0),
      S_AXI_wlast => interconnect_DDR_to_s02_couplers_WLAST,
      S_AXI_wready => interconnect_DDR_to_s02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => interconnect_DDR_to_s02_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => interconnect_DDR_to_s02_couplers_WVALID
    );
s03_couplers: entity work.s03_couplers_imp_1H3M4VE
     port map (
      M_ACLK => interconnect_DDR_ACLK_net,
      M_ARESETN => interconnect_DDR_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s03_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s03_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s03_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s03_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arprot(2 downto 0) => s03_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s03_couplers_to_xbar_ARREADY(3),
      M_AXI_arsize(2 downto 0) => s03_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s03_couplers_to_xbar_ARVALID,
      M_AXI_rdata(31 downto 0) => s03_couplers_to_xbar_RDATA(127 downto 96),
      M_AXI_rlast => s03_couplers_to_xbar_RLAST(3),
      M_AXI_rready => s03_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s03_couplers_to_xbar_RRESP(7 downto 6),
      M_AXI_rvalid => s03_couplers_to_xbar_RVALID(3),
      S_ACLK => S03_ACLK_1,
      S_ARESETN => S03_ARESETN_1,
      S_AXI_araddr(31 downto 0) => interconnect_DDR_to_s03_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => interconnect_DDR_to_s03_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => interconnect_DDR_to_s03_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => interconnect_DDR_to_s03_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => interconnect_DDR_to_s03_couplers_ARPROT(2 downto 0),
      S_AXI_arready => interconnect_DDR_to_s03_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => interconnect_DDR_to_s03_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => interconnect_DDR_to_s03_couplers_ARVALID,
      S_AXI_rdata(31 downto 0) => interconnect_DDR_to_s03_couplers_RDATA(31 downto 0),
      S_AXI_rlast => interconnect_DDR_to_s03_couplers_RLAST,
      S_AXI_rready => interconnect_DDR_to_s03_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => interconnect_DDR_to_s03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => interconnect_DDR_to_s03_couplers_RVALID
    );
s04_couplers: entity work.s04_couplers_imp_Q607DA
     port map (
      M_ACLK => interconnect_DDR_ACLK_net,
      M_ARESETN => interconnect_DDR_ARESETN_net,
      M_AXI_awaddr(31 downto 0) => s04_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s04_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s04_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s04_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awprot(2 downto 0) => s04_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s04_couplers_to_xbar_AWREADY(4),
      M_AXI_awsize(2 downto 0) => s04_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s04_couplers_to_xbar_AWVALID,
      M_AXI_bready => s04_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s04_couplers_to_xbar_BRESP(9 downto 8),
      M_AXI_bvalid => s04_couplers_to_xbar_BVALID(4),
      M_AXI_wdata(31 downto 0) => s04_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s04_couplers_to_xbar_WLAST,
      M_AXI_wready => s04_couplers_to_xbar_WREADY(4),
      M_AXI_wstrb(3 downto 0) => s04_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s04_couplers_to_xbar_WVALID,
      S_ACLK => S04_ACLK_1,
      S_ARESETN => S04_ARESETN_1,
      S_AXI_awaddr(31 downto 0) => interconnect_DDR_to_s04_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => interconnect_DDR_to_s04_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => interconnect_DDR_to_s04_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => interconnect_DDR_to_s04_couplers_AWLEN(7 downto 0),
      S_AXI_awprot(2 downto 0) => interconnect_DDR_to_s04_couplers_AWPROT(2 downto 0),
      S_AXI_awready => interconnect_DDR_to_s04_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => interconnect_DDR_to_s04_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => interconnect_DDR_to_s04_couplers_AWVALID,
      S_AXI_bready => interconnect_DDR_to_s04_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => interconnect_DDR_to_s04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => interconnect_DDR_to_s04_couplers_BVALID,
      S_AXI_wdata(31 downto 0) => interconnect_DDR_to_s04_couplers_WDATA(31 downto 0),
      S_AXI_wlast => interconnect_DDR_to_s04_couplers_WLAST,
      S_AXI_wready => interconnect_DDR_to_s04_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => interconnect_DDR_to_s04_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => interconnect_DDR_to_s04_couplers_WVALID
    );
xbar: component Mars_AX3_xbar_1
     port map (
      aclk => interconnect_DDR_ACLK_net,
      aresetn => interconnect_DDR_ARESETN_net,
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(2 downto 0) => xbar_to_m00_couplers_ARID(2 downto 0),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(2 downto 0) => xbar_to_m00_couplers_AWID(2 downto 0),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(2 downto 0) => xbar_to_m00_couplers_BID(2 downto 0),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rid(2 downto 0) => xbar_to_m00_couplers_RID(2 downto 0),
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(159 downto 128) => B"00000000000000000000000000000000",
      s_axi_araddr(127 downto 96) => s03_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(95 downto 64) => s02_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(63 downto 32) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(9 downto 8) => B"00",
      s_axi_arburst(7 downto 6) => s03_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(5 downto 4) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(3 downto 2) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(19 downto 16) => B"0000",
      s_axi_arcache(15 downto 12) => s03_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(11 downto 8) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(7 downto 4) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(14 downto 4) => B"00000000000",
      s_axi_arid(3) => s01_couplers_to_xbar_ARID(0),
      s_axi_arid(2 downto 1) => B"00",
      s_axi_arid(0) => s00_couplers_to_xbar_ARID(0),
      s_axi_arlen(39 downto 32) => B"00000000",
      s_axi_arlen(31 downto 24) => s03_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(23 downto 16) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(15 downto 8) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(4 downto 2) => B"000",
      s_axi_arlock(1) => s01_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      s_axi_arprot(14 downto 12) => B"000",
      s_axi_arprot(11 downto 9) => s03_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(8 downto 6) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(5 downto 3) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(19 downto 8) => B"000000000000",
      s_axi_arqos(7 downto 4) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(4) => NLW_xbar_s_axi_arready_UNCONNECTED(4),
      s_axi_arready(3) => s03_couplers_to_xbar_ARREADY(3),
      s_axi_arready(2) => s02_couplers_to_xbar_ARREADY(2),
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(14 downto 12) => B"000",
      s_axi_arsize(11 downto 9) => s03_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(8 downto 6) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(5 downto 3) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(4) => '0',
      s_axi_arvalid(3) => s03_couplers_to_xbar_ARVALID,
      s_axi_arvalid(2) => s02_couplers_to_xbar_ARVALID,
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      s_axi_awaddr(159 downto 128) => s04_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(127 downto 96) => B"00000000000000000000000000000000",
      s_axi_awaddr(95 downto 64) => s02_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(63 downto 32) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(9 downto 8) => s04_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(7 downto 6) => B"00",
      s_axi_awburst(5 downto 4) => s02_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(3 downto 2) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(19 downto 16) => s04_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(15 downto 12) => B"0000",
      s_axi_awcache(11 downto 8) => s02_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(7 downto 4) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(14 downto 4) => B"00000000000",
      s_axi_awid(3) => s01_couplers_to_xbar_AWID(0),
      s_axi_awid(2 downto 1) => B"00",
      s_axi_awid(0) => s00_couplers_to_xbar_AWID(0),
      s_axi_awlen(39 downto 32) => s04_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(31 downto 24) => B"00000000",
      s_axi_awlen(23 downto 16) => s02_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(15 downto 8) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(4 downto 2) => B"000",
      s_axi_awlock(1) => s01_couplers_to_xbar_AWLOCK(0),
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      s_axi_awprot(14 downto 12) => s04_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(11 downto 9) => B"000",
      s_axi_awprot(8 downto 6) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(19 downto 8) => B"000000000000",
      s_axi_awqos(7 downto 4) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(4) => s04_couplers_to_xbar_AWREADY(4),
      s_axi_awready(3) => NLW_xbar_s_axi_awready_UNCONNECTED(3),
      s_axi_awready(2) => s02_couplers_to_xbar_AWREADY(2),
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY(1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(14 downto 12) => s04_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(11 downto 9) => B"000",
      s_axi_awsize(8 downto 6) => s02_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(5 downto 3) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(4) => s04_couplers_to_xbar_AWVALID,
      s_axi_awvalid(3) => '0',
      s_axi_awvalid(2) => s02_couplers_to_xbar_AWVALID,
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      s_axi_bid(14 downto 6) => NLW_xbar_s_axi_bid_UNCONNECTED(14 downto 6),
      s_axi_bid(5 downto 3) => s01_couplers_to_xbar_BID(5 downto 3),
      s_axi_bid(2 downto 0) => s00_couplers_to_xbar_BID(2 downto 0),
      s_axi_bready(4) => s04_couplers_to_xbar_BREADY,
      s_axi_bready(3) => '0',
      s_axi_bready(2) => s02_couplers_to_xbar_BREADY,
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY(0),
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY(0),
      s_axi_bresp(9 downto 8) => s04_couplers_to_xbar_BRESP(9 downto 8),
      s_axi_bresp(7 downto 6) => NLW_xbar_s_axi_bresp_UNCONNECTED(7 downto 6),
      s_axi_bresp(5 downto 4) => s02_couplers_to_xbar_BRESP(5 downto 4),
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(4) => s04_couplers_to_xbar_BVALID(4),
      s_axi_bvalid(3) => NLW_xbar_s_axi_bvalid_UNCONNECTED(3),
      s_axi_bvalid(2) => s02_couplers_to_xbar_BVALID(2),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID(1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(159 downto 128) => NLW_xbar_s_axi_rdata_UNCONNECTED(159 downto 128),
      s_axi_rdata(127 downto 96) => s03_couplers_to_xbar_RDATA(127 downto 96),
      s_axi_rdata(95 downto 64) => s02_couplers_to_xbar_RDATA(95 downto 64),
      s_axi_rdata(63 downto 32) => s01_couplers_to_xbar_RDATA(63 downto 32),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rid(14 downto 6) => NLW_xbar_s_axi_rid_UNCONNECTED(14 downto 6),
      s_axi_rid(5 downto 3) => s01_couplers_to_xbar_RID(5 downto 3),
      s_axi_rid(2 downto 0) => s00_couplers_to_xbar_RID(2 downto 0),
      s_axi_rlast(4) => NLW_xbar_s_axi_rlast_UNCONNECTED(4),
      s_axi_rlast(3) => s03_couplers_to_xbar_RLAST(3),
      s_axi_rlast(2) => s02_couplers_to_xbar_RLAST(2),
      s_axi_rlast(1) => s01_couplers_to_xbar_RLAST(1),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(4) => '0',
      s_axi_rready(3) => s03_couplers_to_xbar_RREADY,
      s_axi_rready(2) => s02_couplers_to_xbar_RREADY,
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY(0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY(0),
      s_axi_rresp(9 downto 8) => NLW_xbar_s_axi_rresp_UNCONNECTED(9 downto 8),
      s_axi_rresp(7 downto 6) => s03_couplers_to_xbar_RRESP(7 downto 6),
      s_axi_rresp(5 downto 4) => s02_couplers_to_xbar_RRESP(5 downto 4),
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(4) => NLW_xbar_s_axi_rvalid_UNCONNECTED(4),
      s_axi_rvalid(3) => s03_couplers_to_xbar_RVALID(3),
      s_axi_rvalid(2) => s02_couplers_to_xbar_RVALID(2),
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(159 downto 128) => s04_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(127 downto 96) => B"00000000000000000000000000000000",
      s_axi_wdata(95 downto 64) => s02_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(63 downto 32) => s01_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wlast(4) => s04_couplers_to_xbar_WLAST,
      s_axi_wlast(3) => '0',
      s_axi_wlast(2) => s02_couplers_to_xbar_WLAST,
      s_axi_wlast(1) => s01_couplers_to_xbar_WLAST(0),
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST(0),
      s_axi_wready(4) => s04_couplers_to_xbar_WREADY(4),
      s_axi_wready(3) => NLW_xbar_s_axi_wready_UNCONNECTED(3),
      s_axi_wready(2) => s02_couplers_to_xbar_WREADY(2),
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY(1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(19 downto 16) => s04_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(15 downto 12) => B"1111",
      s_axi_wstrb(11 downto 8) => s02_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(7 downto 4) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(4) => s04_couplers_to_xbar_WVALID,
      s_axi_wvalid(3) => '0',
      s_axi_wvalid(2) => s02_couplers_to_xbar_WVALID,
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID(0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CPU_imp_15ZD30O is
  port (
    Clk : in STD_LOGIC;
    Debug_SYS_Rst : out STD_LOGIC;
    Interrupt : out STD_LOGIC;
    LMB_Rst : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M06_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M06_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M06_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M06_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rlast : in STD_LOGIC;
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wlast : out STD_LOGIC;
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    M07_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_arready : in STD_LOGIC;
    M09_AXI_arvalid : out STD_LOGIC;
    M09_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_awready : in STD_LOGIC;
    M09_AXI_awvalid : out STD_LOGIC;
    M09_AXI_bready : out STD_LOGIC;
    M09_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_bvalid : in STD_LOGIC;
    M09_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_rready : out STD_LOGIC;
    M09_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_rvalid : in STD_LOGIC;
    M09_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_wready : in STD_LOGIC;
    M09_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_wvalid : out STD_LOGIC;
    M10_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_arready : in STD_LOGIC;
    M10_AXI_arvalid : out STD_LOGIC;
    M10_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_awready : in STD_LOGIC;
    M10_AXI_awvalid : out STD_LOGIC;
    M10_AXI_bready : out STD_LOGIC;
    M10_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_bvalid : in STD_LOGIC;
    M10_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_rready : out STD_LOGIC;
    M10_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_rvalid : in STD_LOGIC;
    M10_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_wready : in STD_LOGIC;
    M10_AXI_wvalid : out STD_LOGIC;
    M_AXI_DC_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DC_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DC_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_IC_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_IC_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end CPU_imp_15ZD30O;

architecture STRUCTURE of CPU_imp_15ZD30O is
  component Mars_AX3_microblaze_CPU_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_AXI_DP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_AWVALID : out STD_LOGIC;
    M_AXI_DP_AWREADY : in STD_LOGIC;
    M_AXI_DP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DP_WVALID : out STD_LOGIC;
    M_AXI_DP_WREADY : in STD_LOGIC;
    M_AXI_DP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_BVALID : in STD_LOGIC;
    M_AXI_DP_BREADY : out STD_LOGIC;
    M_AXI_DP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_ARVALID : out STD_LOGIC;
    M_AXI_DP_ARREADY : in STD_LOGIC;
    M_AXI_DP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_RVALID : in STD_LOGIC;
    M_AXI_DP_RREADY : out STD_LOGIC;
    Dbg_Clk : in STD_LOGIC;
    Dbg_TDI : in STD_LOGIC;
    Dbg_TDO : out STD_LOGIC;
    Dbg_Reg_En : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Shift : in STD_LOGIC;
    Dbg_Capture : in STD_LOGIC;
    Dbg_Update : in STD_LOGIC;
    Debug_Rst : in STD_LOGIC;
    Dbg_Disable : in STD_LOGIC;
    M_AXI_IC_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_IC_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_AWLOCK : out STD_LOGIC;
    M_AXI_IC_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_AWVALID : out STD_LOGIC;
    M_AXI_IC_AWREADY : in STD_LOGIC;
    M_AXI_IC_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_WLAST : out STD_LOGIC;
    M_AXI_IC_WVALID : out STD_LOGIC;
    M_AXI_IC_WREADY : in STD_LOGIC;
    M_AXI_IC_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_BVALID : in STD_LOGIC;
    M_AXI_IC_BREADY : out STD_LOGIC;
    M_AXI_IC_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_IC_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_ARLOCK : out STD_LOGIC;
    M_AXI_IC_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_ARVALID : out STD_LOGIC;
    M_AXI_IC_ARREADY : in STD_LOGIC;
    M_AXI_IC_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_RLAST : in STD_LOGIC;
    M_AXI_IC_RVALID : in STD_LOGIC;
    M_AXI_IC_RREADY : out STD_LOGIC;
    M_AXI_DC_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DC_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_AWLOCK : out STD_LOGIC;
    M_AXI_DC_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_AWVALID : out STD_LOGIC;
    M_AXI_DC_AWREADY : in STD_LOGIC;
    M_AXI_DC_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_WLAST : out STD_LOGIC;
    M_AXI_DC_WVALID : out STD_LOGIC;
    M_AXI_DC_WREADY : in STD_LOGIC;
    M_AXI_DC_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_BVALID : in STD_LOGIC;
    M_AXI_DC_BREADY : out STD_LOGIC;
    M_AXI_DC_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DC_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_ARLOCK : out STD_LOGIC;
    M_AXI_DC_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_ARVALID : out STD_LOGIC;
    M_AXI_DC_ARREADY : in STD_LOGIC;
    M_AXI_DC_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_RLAST : in STD_LOGIC;
    M_AXI_DC_RVALID : in STD_LOGIC;
    M_AXI_DC_RREADY : out STD_LOGIC
  );
  end component Mars_AX3_microblaze_CPU_0;
  component Mars_AX3_mdm_0_0 is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    Interrupt : out STD_LOGIC;
    Debug_SYS_Rst : out STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    Dbg_Clk_0 : out STD_LOGIC;
    Dbg_TDI_0 : out STD_LOGIC;
    Dbg_TDO_0 : in STD_LOGIC;
    Dbg_Reg_En_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_0 : out STD_LOGIC;
    Dbg_Shift_0 : out STD_LOGIC;
    Dbg_Update_0 : out STD_LOGIC;
    Dbg_Rst_0 : out STD_LOGIC;
    Dbg_Disable_0 : out STD_LOGIC
  );
  end component Mars_AX3_mdm_0_0;
  component Mars_AX3_microblaze_axi_intc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    processor_clk : in STD_LOGIC;
    processor_rst : in STD_LOGIC;
    irq : out STD_LOGIC;
    processor_ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Mars_AX3_microblaze_axi_intc_0;
  signal Clk_1 : STD_LOGIC;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn4_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn4_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn4_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn4_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn4_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn4_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn4_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn4_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn4_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn4_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn5_ARADDR : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal Conn5_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn5_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn5_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn5_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn5_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn5_ARREADY : STD_LOGIC;
  signal Conn5_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn5_ARVALID : STD_LOGIC;
  signal Conn5_AWADDR : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal Conn5_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn5_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn5_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn5_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn5_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn5_AWREADY : STD_LOGIC;
  signal Conn5_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn5_AWVALID : STD_LOGIC;
  signal Conn5_BREADY : STD_LOGIC;
  signal Conn5_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn5_BVALID : STD_LOGIC;
  signal Conn5_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_RLAST : STD_LOGIC;
  signal Conn5_RREADY : STD_LOGIC;
  signal Conn5_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn5_RVALID : STD_LOGIC;
  signal Conn5_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_WLAST : STD_LOGIC;
  signal Conn5_WREADY : STD_LOGIC;
  signal Conn5_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn5_WVALID : STD_LOGIC;
  signal Conn6_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn6_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn6_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn6_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal LMB_Rst_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Net : STD_LOGIC;
  signal S_AXI_ARESETN_1 : STD_LOGIC;
  signal interconnect_CPU_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_CPU_M00_AXI_ARREADY : STD_LOGIC;
  signal interconnect_CPU_M00_AXI_ARVALID : STD_LOGIC;
  signal interconnect_CPU_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_CPU_M00_AXI_AWREADY : STD_LOGIC;
  signal interconnect_CPU_M00_AXI_AWVALID : STD_LOGIC;
  signal interconnect_CPU_M00_AXI_BREADY : STD_LOGIC;
  signal interconnect_CPU_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_CPU_M00_AXI_BVALID : STD_LOGIC;
  signal interconnect_CPU_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_CPU_M00_AXI_RREADY : STD_LOGIC;
  signal interconnect_CPU_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_CPU_M00_AXI_RVALID : STD_LOGIC;
  signal interconnect_CPU_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_CPU_M00_AXI_WREADY : STD_LOGIC;
  signal interconnect_CPU_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_CPU_M00_AXI_WVALID : STD_LOGIC;
  signal interconnect_CPU_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_CPU_M01_AXI_ARREADY : STD_LOGIC;
  signal interconnect_CPU_M01_AXI_ARVALID : STD_LOGIC;
  signal interconnect_CPU_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_CPU_M01_AXI_AWREADY : STD_LOGIC;
  signal interconnect_CPU_M01_AXI_AWVALID : STD_LOGIC;
  signal interconnect_CPU_M01_AXI_BREADY : STD_LOGIC;
  signal interconnect_CPU_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_CPU_M01_AXI_BVALID : STD_LOGIC;
  signal interconnect_CPU_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_CPU_M01_AXI_RREADY : STD_LOGIC;
  signal interconnect_CPU_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_CPU_M01_AXI_RVALID : STD_LOGIC;
  signal interconnect_CPU_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_CPU_M01_AXI_WREADY : STD_LOGIC;
  signal interconnect_CPU_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_CPU_M01_AXI_WVALID : STD_LOGIC;
  signal interconnect_CPU_M09_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_CPU_M09_AXI_ARREADY : STD_LOGIC;
  signal interconnect_CPU_M09_AXI_ARVALID : STD_LOGIC;
  signal interconnect_CPU_M09_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_CPU_M09_AXI_AWREADY : STD_LOGIC;
  signal interconnect_CPU_M09_AXI_AWVALID : STD_LOGIC;
  signal interconnect_CPU_M09_AXI_BREADY : STD_LOGIC;
  signal interconnect_CPU_M09_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_CPU_M09_AXI_BVALID : STD_LOGIC;
  signal interconnect_CPU_M09_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_CPU_M09_AXI_RREADY : STD_LOGIC;
  signal interconnect_CPU_M09_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_CPU_M09_AXI_RVALID : STD_LOGIC;
  signal interconnect_CPU_M09_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_CPU_M09_AXI_WREADY : STD_LOGIC;
  signal interconnect_CPU_M09_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_CPU_M09_AXI_WVALID : STD_LOGIC;
  signal interconnect_CPU_M10_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_CPU_M10_AXI_ARREADY : STD_LOGIC;
  signal interconnect_CPU_M10_AXI_ARVALID : STD_LOGIC;
  signal interconnect_CPU_M10_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_CPU_M10_AXI_AWREADY : STD_LOGIC;
  signal interconnect_CPU_M10_AXI_AWVALID : STD_LOGIC;
  signal interconnect_CPU_M10_AXI_BREADY : STD_LOGIC;
  signal interconnect_CPU_M10_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_CPU_M10_AXI_BVALID : STD_LOGIC;
  signal interconnect_CPU_M10_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_CPU_M10_AXI_RREADY : STD_LOGIC;
  signal interconnect_CPU_M10_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_CPU_M10_AXI_RVALID : STD_LOGIC;
  signal interconnect_CPU_M10_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_CPU_M10_AXI_WREADY : STD_LOGIC;
  signal interconnect_CPU_M10_AXI_WVALID : STD_LOGIC;
  signal intr_1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal mdm_0_Debug_SYS_Rst : STD_LOGIC;
  signal mdm_0_Interrupt : STD_LOGIC;
  signal mdm_0_MBDEBUG_0_CAPTURE : STD_LOGIC;
  signal mdm_0_MBDEBUG_0_CLK : STD_LOGIC;
  signal mdm_0_MBDEBUG_0_DISABLE : STD_LOGIC;
  signal mdm_0_MBDEBUG_0_REG_EN : STD_LOGIC_VECTOR ( 0 to 7 );
  signal mdm_0_MBDEBUG_0_RST : STD_LOGIC;
  signal mdm_0_MBDEBUG_0_SHIFT : STD_LOGIC;
  signal mdm_0_MBDEBUG_0_TDI : STD_LOGIC;
  signal mdm_0_MBDEBUG_0_TDO : STD_LOGIC;
  signal mdm_0_MBDEBUG_0_UPDATE : STD_LOGIC;
  signal microblaze_CPU_DLMB_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_CPU_DLMB_ADDRSTROBE : STD_LOGIC;
  signal microblaze_CPU_DLMB_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_CPU_DLMB_CE : STD_LOGIC;
  signal microblaze_CPU_DLMB_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_CPU_DLMB_READSTROBE : STD_LOGIC;
  signal microblaze_CPU_DLMB_READY : STD_LOGIC;
  signal microblaze_CPU_DLMB_UE : STD_LOGIC;
  signal microblaze_CPU_DLMB_WAIT : STD_LOGIC;
  signal microblaze_CPU_DLMB_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_CPU_DLMB_WRITESTROBE : STD_LOGIC;
  signal microblaze_CPU_ILMB_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_CPU_ILMB_ADDRSTROBE : STD_LOGIC;
  signal microblaze_CPU_ILMB_CE : STD_LOGIC;
  signal microblaze_CPU_ILMB_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_CPU_ILMB_READSTROBE : STD_LOGIC;
  signal microblaze_CPU_ILMB_READY : STD_LOGIC;
  signal microblaze_CPU_ILMB_UE : STD_LOGIC;
  signal microblaze_CPU_ILMB_WAIT : STD_LOGIC;
  signal microblaze_CPU_M_AXI_DC_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_CPU_M_AXI_DC_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_CPU_M_AXI_DC_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_CPU_M_AXI_DC_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_CPU_M_AXI_DC_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_CPU_M_AXI_DC_ARLOCK : STD_LOGIC;
  signal microblaze_CPU_M_AXI_DC_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_CPU_M_AXI_DC_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_CPU_M_AXI_DC_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_CPU_M_AXI_DC_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_CPU_M_AXI_DC_ARVALID : STD_LOGIC;
  signal microblaze_CPU_M_AXI_DC_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_CPU_M_AXI_DC_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_CPU_M_AXI_DC_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_CPU_M_AXI_DC_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_CPU_M_AXI_DC_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_CPU_M_AXI_DC_AWLOCK : STD_LOGIC;
  signal microblaze_CPU_M_AXI_DC_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_CPU_M_AXI_DC_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_CPU_M_AXI_DC_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_CPU_M_AXI_DC_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_CPU_M_AXI_DC_AWVALID : STD_LOGIC;
  signal microblaze_CPU_M_AXI_DC_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_CPU_M_AXI_DC_BREADY : STD_LOGIC;
  signal microblaze_CPU_M_AXI_DC_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_CPU_M_AXI_DC_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_CPU_M_AXI_DC_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_CPU_M_AXI_DC_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_CPU_M_AXI_DC_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_CPU_M_AXI_DC_RREADY : STD_LOGIC;
  signal microblaze_CPU_M_AXI_DC_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_CPU_M_AXI_DC_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_CPU_M_AXI_DC_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_CPU_M_AXI_DC_WLAST : STD_LOGIC;
  signal microblaze_CPU_M_AXI_DC_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_CPU_M_AXI_DC_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_CPU_M_AXI_DC_WVALID : STD_LOGIC;
  signal microblaze_CPU_M_AXI_DP_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_CPU_M_AXI_DP_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_CPU_M_AXI_DP_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_CPU_M_AXI_DP_ARVALID : STD_LOGIC;
  signal microblaze_CPU_M_AXI_DP_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_CPU_M_AXI_DP_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_CPU_M_AXI_DP_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_CPU_M_AXI_DP_AWVALID : STD_LOGIC;
  signal microblaze_CPU_M_AXI_DP_BREADY : STD_LOGIC;
  signal microblaze_CPU_M_AXI_DP_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_CPU_M_AXI_DP_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_CPU_M_AXI_DP_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_CPU_M_AXI_DP_RREADY : STD_LOGIC;
  signal microblaze_CPU_M_AXI_DP_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_CPU_M_AXI_DP_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_CPU_M_AXI_DP_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_CPU_M_AXI_DP_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_CPU_M_AXI_DP_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_CPU_M_AXI_DP_WVALID : STD_LOGIC;
  signal microblaze_CPU_M_AXI_IC_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_CPU_M_AXI_IC_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_CPU_M_AXI_IC_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_CPU_M_AXI_IC_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_CPU_M_AXI_IC_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_CPU_M_AXI_IC_ARLOCK : STD_LOGIC;
  signal microblaze_CPU_M_AXI_IC_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_CPU_M_AXI_IC_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_CPU_M_AXI_IC_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_CPU_M_AXI_IC_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_CPU_M_AXI_IC_ARVALID : STD_LOGIC;
  signal microblaze_CPU_M_AXI_IC_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_CPU_M_AXI_IC_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_CPU_M_AXI_IC_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_CPU_M_AXI_IC_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_CPU_M_AXI_IC_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_CPU_M_AXI_IC_AWLOCK : STD_LOGIC;
  signal microblaze_CPU_M_AXI_IC_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_CPU_M_AXI_IC_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_CPU_M_AXI_IC_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_CPU_M_AXI_IC_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_CPU_M_AXI_IC_AWVALID : STD_LOGIC;
  signal microblaze_CPU_M_AXI_IC_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_CPU_M_AXI_IC_BREADY : STD_LOGIC;
  signal microblaze_CPU_M_AXI_IC_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_CPU_M_AXI_IC_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_CPU_M_AXI_IC_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_CPU_M_AXI_IC_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_CPU_M_AXI_IC_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_CPU_M_AXI_IC_RREADY : STD_LOGIC;
  signal microblaze_CPU_M_AXI_IC_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_CPU_M_AXI_IC_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_CPU_M_AXI_IC_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_CPU_M_AXI_IC_WLAST : STD_LOGIC;
  signal microblaze_CPU_M_AXI_IC_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_CPU_M_AXI_IC_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_CPU_M_AXI_IC_WVALID : STD_LOGIC;
  signal microblaze_axi_intc_interrupt_ACK : STD_LOGIC_VECTOR ( 0 to 1 );
  signal microblaze_axi_intc_interrupt_ADDRESS : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_axi_intc_interrupt_INTERRUPT : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_interconnect_CPU_M08_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  attribute BMM_INFO_PROCESSOR : string;
  attribute BMM_INFO_PROCESSOR of microblaze_CPU : label is "microblaze-le > Mars_AX3 CPU/microblaze_local_memory/dlmb_bram_if_cntlr";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of microblaze_CPU : label is "yes";
begin
  Clk_1 <= Clk;
  Conn1_ARREADY(0) <= M04_AXI_arready(0);
  Conn1_AWREADY(0) <= M04_AXI_awready(0);
  Conn1_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  Conn1_BVALID(0) <= M04_AXI_bvalid(0);
  Conn1_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  Conn1_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  Conn1_RVALID(0) <= M04_AXI_rvalid(0);
  Conn1_WREADY(0) <= M04_AXI_wready(0);
  Conn2_ARREADY(0) <= M07_AXI_arready(0);
  Conn2_AWREADY(0) <= M07_AXI_awready(0);
  Conn2_BRESP(1 downto 0) <= M07_AXI_bresp(1 downto 0);
  Conn2_BVALID(0) <= M07_AXI_bvalid(0);
  Conn2_RDATA(31 downto 0) <= M07_AXI_rdata(31 downto 0);
  Conn2_RRESP(1 downto 0) <= M07_AXI_rresp(1 downto 0);
  Conn2_RVALID(0) <= M07_AXI_rvalid(0);
  Conn2_WREADY(0) <= M07_AXI_wready(0);
  Conn3_ARREADY(0) <= M05_AXI_arready(0);
  Conn3_AWREADY(0) <= M05_AXI_awready(0);
  Conn3_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  Conn3_BVALID(0) <= M05_AXI_bvalid(0);
  Conn3_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  Conn3_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  Conn3_RVALID(0) <= M05_AXI_rvalid(0);
  Conn3_WREADY(0) <= M05_AXI_wready(0);
  Conn4_ARREADY(0) <= M02_AXI_arready(0);
  Conn4_AWREADY(0) <= M02_AXI_awready(0);
  Conn4_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  Conn4_BVALID(0) <= M02_AXI_bvalid(0);
  Conn4_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  Conn4_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  Conn4_RVALID(0) <= M02_AXI_rvalid(0);
  Conn4_WREADY(0) <= M02_AXI_wready(0);
  Conn5_ARREADY <= M06_AXI_arready;
  Conn5_AWREADY <= M06_AXI_awready;
  Conn5_BRESP(1 downto 0) <= M06_AXI_bresp(1 downto 0);
  Conn5_BVALID <= M06_AXI_bvalid;
  Conn5_RDATA(31 downto 0) <= M06_AXI_rdata(31 downto 0);
  Conn5_RLAST <= M06_AXI_rlast;
  Conn5_RRESP(1 downto 0) <= M06_AXI_rresp(1 downto 0);
  Conn5_RVALID <= M06_AXI_rvalid;
  Conn5_WREADY <= M06_AXI_wready;
  Conn6_ARREADY(0) <= M03_AXI_arready(0);
  Conn6_AWREADY(0) <= M03_AXI_awready(0);
  Conn6_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  Conn6_BVALID(0) <= M03_AXI_bvalid(0);
  Conn6_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  Conn6_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  Conn6_RVALID(0) <= M03_AXI_rvalid(0);
  Conn6_WREADY(0) <= M03_AXI_wready(0);
  Debug_SYS_Rst <= mdm_0_Debug_SYS_Rst;
  Interrupt <= mdm_0_Interrupt;
  LMB_Rst_1(0) <= LMB_Rst(0);
  M02_AXI_araddr(31 downto 0) <= Conn4_ARADDR(31 downto 0);
  M02_AXI_arvalid(0) <= Conn4_ARVALID(0);
  M02_AXI_awaddr(31 downto 0) <= Conn4_AWADDR(31 downto 0);
  M02_AXI_awvalid(0) <= Conn4_AWVALID(0);
  M02_AXI_bready(0) <= Conn4_BREADY(0);
  M02_AXI_rready(0) <= Conn4_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= Conn4_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= Conn4_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= Conn4_WVALID(0);
  M03_AXI_araddr(31 downto 0) <= Conn6_ARADDR(31 downto 0);
  M03_AXI_arvalid(0) <= Conn6_ARVALID(0);
  M03_AXI_awaddr(31 downto 0) <= Conn6_AWADDR(31 downto 0);
  M03_AXI_awvalid(0) <= Conn6_AWVALID(0);
  M03_AXI_bready(0) <= Conn6_BREADY(0);
  M03_AXI_rready(0) <= Conn6_RREADY(0);
  M03_AXI_wdata(31 downto 0) <= Conn6_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= Conn6_WSTRB(3 downto 0);
  M03_AXI_wvalid(0) <= Conn6_WVALID(0);
  M04_AXI_araddr(31 downto 0) <= Conn1_ARADDR(31 downto 0);
  M04_AXI_arvalid(0) <= Conn1_ARVALID(0);
  M04_AXI_awaddr(31 downto 0) <= Conn1_AWADDR(31 downto 0);
  M04_AXI_awvalid(0) <= Conn1_AWVALID(0);
  M04_AXI_bready(0) <= Conn1_BREADY(0);
  M04_AXI_rready(0) <= Conn1_RREADY(0);
  M04_AXI_wdata(31 downto 0) <= Conn1_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= Conn1_WSTRB(3 downto 0);
  M04_AXI_wvalid(0) <= Conn1_WVALID(0);
  M05_AXI_araddr(31 downto 0) <= Conn3_ARADDR(31 downto 0);
  M05_AXI_arvalid(0) <= Conn3_ARVALID(0);
  M05_AXI_awaddr(31 downto 0) <= Conn3_AWADDR(31 downto 0);
  M05_AXI_awvalid(0) <= Conn3_AWVALID(0);
  M05_AXI_bready(0) <= Conn3_BREADY(0);
  M05_AXI_rready(0) <= Conn3_RREADY(0);
  M05_AXI_wdata(31 downto 0) <= Conn3_WDATA(31 downto 0);
  M05_AXI_wstrb(3 downto 0) <= Conn3_WSTRB(3 downto 0);
  M05_AXI_wvalid(0) <= Conn3_WVALID(0);
  M06_AXI_araddr(23 downto 0) <= Conn5_ARADDR(23 downto 0);
  M06_AXI_arburst(1 downto 0) <= Conn5_ARBURST(1 downto 0);
  M06_AXI_arcache(3 downto 0) <= Conn5_ARCACHE(3 downto 0);
  M06_AXI_arlen(7 downto 0) <= Conn5_ARLEN(7 downto 0);
  M06_AXI_arlock(0) <= Conn5_ARLOCK(0);
  M06_AXI_arprot(2 downto 0) <= Conn5_ARPROT(2 downto 0);
  M06_AXI_arsize(2 downto 0) <= Conn5_ARSIZE(2 downto 0);
  M06_AXI_arvalid <= Conn5_ARVALID;
  M06_AXI_awaddr(23 downto 0) <= Conn5_AWADDR(23 downto 0);
  M06_AXI_awburst(1 downto 0) <= Conn5_AWBURST(1 downto 0);
  M06_AXI_awcache(3 downto 0) <= Conn5_AWCACHE(3 downto 0);
  M06_AXI_awlen(7 downto 0) <= Conn5_AWLEN(7 downto 0);
  M06_AXI_awlock(0) <= Conn5_AWLOCK(0);
  M06_AXI_awprot(2 downto 0) <= Conn5_AWPROT(2 downto 0);
  M06_AXI_awsize(2 downto 0) <= Conn5_AWSIZE(2 downto 0);
  M06_AXI_awvalid <= Conn5_AWVALID;
  M06_AXI_bready <= Conn5_BREADY;
  M06_AXI_rready <= Conn5_RREADY;
  M06_AXI_wdata(31 downto 0) <= Conn5_WDATA(31 downto 0);
  M06_AXI_wlast <= Conn5_WLAST;
  M06_AXI_wstrb(3 downto 0) <= Conn5_WSTRB(3 downto 0);
  M06_AXI_wvalid <= Conn5_WVALID;
  M07_AXI_araddr(31 downto 0) <= Conn2_ARADDR(31 downto 0);
  M07_AXI_arvalid(0) <= Conn2_ARVALID(0);
  M07_AXI_awaddr(31 downto 0) <= Conn2_AWADDR(31 downto 0);
  M07_AXI_awvalid(0) <= Conn2_AWVALID(0);
  M07_AXI_bready(0) <= Conn2_BREADY(0);
  M07_AXI_rready(0) <= Conn2_RREADY(0);
  M07_AXI_wdata(31 downto 0) <= Conn2_WDATA(31 downto 0);
  M07_AXI_wstrb(3 downto 0) <= Conn2_WSTRB(3 downto 0);
  M07_AXI_wvalid(0) <= Conn2_WVALID(0);
  M09_AXI_araddr(31 downto 0) <= interconnect_CPU_M09_AXI_ARADDR(31 downto 0);
  M09_AXI_arvalid <= interconnect_CPU_M09_AXI_ARVALID;
  M09_AXI_awaddr(31 downto 0) <= interconnect_CPU_M09_AXI_AWADDR(31 downto 0);
  M09_AXI_awvalid <= interconnect_CPU_M09_AXI_AWVALID;
  M09_AXI_bready <= interconnect_CPU_M09_AXI_BREADY;
  M09_AXI_rready <= interconnect_CPU_M09_AXI_RREADY;
  M09_AXI_wdata(31 downto 0) <= interconnect_CPU_M09_AXI_WDATA(31 downto 0);
  M09_AXI_wstrb(3 downto 0) <= interconnect_CPU_M09_AXI_WSTRB(3 downto 0);
  M09_AXI_wvalid <= interconnect_CPU_M09_AXI_WVALID;
  M10_AXI_araddr(31 downto 0) <= interconnect_CPU_M10_AXI_ARADDR(31 downto 0);
  M10_AXI_arvalid <= interconnect_CPU_M10_AXI_ARVALID;
  M10_AXI_awaddr(31 downto 0) <= interconnect_CPU_M10_AXI_AWADDR(31 downto 0);
  M10_AXI_awvalid <= interconnect_CPU_M10_AXI_AWVALID;
  M10_AXI_bready <= interconnect_CPU_M10_AXI_BREADY;
  M10_AXI_rready <= interconnect_CPU_M10_AXI_RREADY;
  M10_AXI_wdata(31 downto 0) <= interconnect_CPU_M10_AXI_WDATA(31 downto 0);
  M10_AXI_wvalid <= interconnect_CPU_M10_AXI_WVALID;
  M_AXI_DC_araddr(31 downto 0) <= microblaze_CPU_M_AXI_DC_ARADDR(31 downto 0);
  M_AXI_DC_arburst(1 downto 0) <= microblaze_CPU_M_AXI_DC_ARBURST(1 downto 0);
  M_AXI_DC_arcache(3 downto 0) <= microblaze_CPU_M_AXI_DC_ARCACHE(3 downto 0);
  M_AXI_DC_arid(0) <= microblaze_CPU_M_AXI_DC_ARID(0);
  M_AXI_DC_arlen(7 downto 0) <= microblaze_CPU_M_AXI_DC_ARLEN(7 downto 0);
  M_AXI_DC_arlock(0) <= microblaze_CPU_M_AXI_DC_ARLOCK;
  M_AXI_DC_arprot(2 downto 0) <= microblaze_CPU_M_AXI_DC_ARPROT(2 downto 0);
  M_AXI_DC_arqos(3 downto 0) <= microblaze_CPU_M_AXI_DC_ARQOS(3 downto 0);
  M_AXI_DC_arsize(2 downto 0) <= microblaze_CPU_M_AXI_DC_ARSIZE(2 downto 0);
  M_AXI_DC_arvalid(0) <= microblaze_CPU_M_AXI_DC_ARVALID;
  M_AXI_DC_awaddr(31 downto 0) <= microblaze_CPU_M_AXI_DC_AWADDR(31 downto 0);
  M_AXI_DC_awburst(1 downto 0) <= microblaze_CPU_M_AXI_DC_AWBURST(1 downto 0);
  M_AXI_DC_awcache(3 downto 0) <= microblaze_CPU_M_AXI_DC_AWCACHE(3 downto 0);
  M_AXI_DC_awid(0) <= microblaze_CPU_M_AXI_DC_AWID(0);
  M_AXI_DC_awlen(7 downto 0) <= microblaze_CPU_M_AXI_DC_AWLEN(7 downto 0);
  M_AXI_DC_awlock(0) <= microblaze_CPU_M_AXI_DC_AWLOCK;
  M_AXI_DC_awprot(2 downto 0) <= microblaze_CPU_M_AXI_DC_AWPROT(2 downto 0);
  M_AXI_DC_awqos(3 downto 0) <= microblaze_CPU_M_AXI_DC_AWQOS(3 downto 0);
  M_AXI_DC_awsize(2 downto 0) <= microblaze_CPU_M_AXI_DC_AWSIZE(2 downto 0);
  M_AXI_DC_awvalid(0) <= microblaze_CPU_M_AXI_DC_AWVALID;
  M_AXI_DC_bready(0) <= microblaze_CPU_M_AXI_DC_BREADY;
  M_AXI_DC_rready(0) <= microblaze_CPU_M_AXI_DC_RREADY;
  M_AXI_DC_wdata(31 downto 0) <= microblaze_CPU_M_AXI_DC_WDATA(31 downto 0);
  M_AXI_DC_wlast(0) <= microblaze_CPU_M_AXI_DC_WLAST;
  M_AXI_DC_wstrb(3 downto 0) <= microblaze_CPU_M_AXI_DC_WSTRB(3 downto 0);
  M_AXI_DC_wvalid(0) <= microblaze_CPU_M_AXI_DC_WVALID;
  M_AXI_IC_araddr(31 downto 0) <= microblaze_CPU_M_AXI_IC_ARADDR(31 downto 0);
  M_AXI_IC_arburst(1 downto 0) <= microblaze_CPU_M_AXI_IC_ARBURST(1 downto 0);
  M_AXI_IC_arcache(3 downto 0) <= microblaze_CPU_M_AXI_IC_ARCACHE(3 downto 0);
  M_AXI_IC_arid(0) <= microblaze_CPU_M_AXI_IC_ARID(0);
  M_AXI_IC_arlen(7 downto 0) <= microblaze_CPU_M_AXI_IC_ARLEN(7 downto 0);
  M_AXI_IC_arlock(0) <= microblaze_CPU_M_AXI_IC_ARLOCK;
  M_AXI_IC_arprot(2 downto 0) <= microblaze_CPU_M_AXI_IC_ARPROT(2 downto 0);
  M_AXI_IC_arqos(3 downto 0) <= microblaze_CPU_M_AXI_IC_ARQOS(3 downto 0);
  M_AXI_IC_arsize(2 downto 0) <= microblaze_CPU_M_AXI_IC_ARSIZE(2 downto 0);
  M_AXI_IC_arvalid(0) <= microblaze_CPU_M_AXI_IC_ARVALID;
  M_AXI_IC_awaddr(31 downto 0) <= microblaze_CPU_M_AXI_IC_AWADDR(31 downto 0);
  M_AXI_IC_awburst(1 downto 0) <= microblaze_CPU_M_AXI_IC_AWBURST(1 downto 0);
  M_AXI_IC_awcache(3 downto 0) <= microblaze_CPU_M_AXI_IC_AWCACHE(3 downto 0);
  M_AXI_IC_awid(0) <= microblaze_CPU_M_AXI_IC_AWID(0);
  M_AXI_IC_awlen(7 downto 0) <= microblaze_CPU_M_AXI_IC_AWLEN(7 downto 0);
  M_AXI_IC_awlock(0) <= microblaze_CPU_M_AXI_IC_AWLOCK;
  M_AXI_IC_awprot(2 downto 0) <= microblaze_CPU_M_AXI_IC_AWPROT(2 downto 0);
  M_AXI_IC_awqos(3 downto 0) <= microblaze_CPU_M_AXI_IC_AWQOS(3 downto 0);
  M_AXI_IC_awsize(2 downto 0) <= microblaze_CPU_M_AXI_IC_AWSIZE(2 downto 0);
  M_AXI_IC_awvalid(0) <= microblaze_CPU_M_AXI_IC_AWVALID;
  M_AXI_IC_bready(0) <= microblaze_CPU_M_AXI_IC_BREADY;
  M_AXI_IC_rready(0) <= microblaze_CPU_M_AXI_IC_RREADY;
  M_AXI_IC_wdata(31 downto 0) <= microblaze_CPU_M_AXI_IC_WDATA(31 downto 0);
  M_AXI_IC_wlast(0) <= microblaze_CPU_M_AXI_IC_WLAST;
  M_AXI_IC_wstrb(3 downto 0) <= microblaze_CPU_M_AXI_IC_WSTRB(3 downto 0);
  M_AXI_IC_wvalid(0) <= microblaze_CPU_M_AXI_IC_WVALID;
  Net <= Reset;
  S_AXI_ARESETN_1 <= S_AXI_ARESETN;
  interconnect_CPU_M09_AXI_ARREADY <= M09_AXI_arready;
  interconnect_CPU_M09_AXI_AWREADY <= M09_AXI_awready;
  interconnect_CPU_M09_AXI_BRESP(1 downto 0) <= M09_AXI_bresp(1 downto 0);
  interconnect_CPU_M09_AXI_BVALID <= M09_AXI_bvalid;
  interconnect_CPU_M09_AXI_RDATA(31 downto 0) <= M09_AXI_rdata(31 downto 0);
  interconnect_CPU_M09_AXI_RRESP(1 downto 0) <= M09_AXI_rresp(1 downto 0);
  interconnect_CPU_M09_AXI_RVALID <= M09_AXI_rvalid;
  interconnect_CPU_M09_AXI_WREADY <= M09_AXI_wready;
  interconnect_CPU_M10_AXI_ARREADY <= M10_AXI_arready;
  interconnect_CPU_M10_AXI_AWREADY <= M10_AXI_awready;
  interconnect_CPU_M10_AXI_BRESP(1 downto 0) <= M10_AXI_bresp(1 downto 0);
  interconnect_CPU_M10_AXI_BVALID <= M10_AXI_bvalid;
  interconnect_CPU_M10_AXI_RDATA(31 downto 0) <= M10_AXI_rdata(31 downto 0);
  interconnect_CPU_M10_AXI_RRESP(1 downto 0) <= M10_AXI_rresp(1 downto 0);
  interconnect_CPU_M10_AXI_RVALID <= M10_AXI_rvalid;
  interconnect_CPU_M10_AXI_WREADY <= M10_AXI_wready;
  intr_1(9 downto 0) <= intr(9 downto 0);
  microblaze_CPU_M_AXI_DC_ARREADY(0) <= M_AXI_DC_arready(0);
  microblaze_CPU_M_AXI_DC_AWREADY(0) <= M_AXI_DC_awready(0);
  microblaze_CPU_M_AXI_DC_BID(2 downto 0) <= M_AXI_DC_bid(2 downto 0);
  microblaze_CPU_M_AXI_DC_BRESP(1 downto 0) <= M_AXI_DC_bresp(1 downto 0);
  microblaze_CPU_M_AXI_DC_BVALID(0) <= M_AXI_DC_bvalid(0);
  microblaze_CPU_M_AXI_DC_RDATA(31 downto 0) <= M_AXI_DC_rdata(31 downto 0);
  microblaze_CPU_M_AXI_DC_RID(2 downto 0) <= M_AXI_DC_rid(2 downto 0);
  microblaze_CPU_M_AXI_DC_RLAST(0) <= M_AXI_DC_rlast(0);
  microblaze_CPU_M_AXI_DC_RRESP(1 downto 0) <= M_AXI_DC_rresp(1 downto 0);
  microblaze_CPU_M_AXI_DC_RVALID(0) <= M_AXI_DC_rvalid(0);
  microblaze_CPU_M_AXI_DC_WREADY(0) <= M_AXI_DC_wready(0);
  microblaze_CPU_M_AXI_IC_ARREADY(0) <= M_AXI_IC_arready(0);
  microblaze_CPU_M_AXI_IC_AWREADY(0) <= M_AXI_IC_awready(0);
  microblaze_CPU_M_AXI_IC_BID(2 downto 0) <= M_AXI_IC_bid(2 downto 0);
  microblaze_CPU_M_AXI_IC_BRESP(1 downto 0) <= M_AXI_IC_bresp(1 downto 0);
  microblaze_CPU_M_AXI_IC_BVALID(0) <= M_AXI_IC_bvalid(0);
  microblaze_CPU_M_AXI_IC_RDATA(31 downto 0) <= M_AXI_IC_rdata(31 downto 0);
  microblaze_CPU_M_AXI_IC_RID(2 downto 0) <= M_AXI_IC_rid(2 downto 0);
  microblaze_CPU_M_AXI_IC_RLAST(0) <= M_AXI_IC_rlast(0);
  microblaze_CPU_M_AXI_IC_RRESP(1 downto 0) <= M_AXI_IC_rresp(1 downto 0);
  microblaze_CPU_M_AXI_IC_RVALID(0) <= M_AXI_IC_rvalid(0);
  microblaze_CPU_M_AXI_IC_WREADY(0) <= M_AXI_IC_wready(0);
interconnect_CPU: entity work.Mars_AX3_interconnect_CPU_0
     port map (
      ACLK => Clk_1,
      ARESETN => S_AXI_ARESETN_1,
      M00_ACLK => Clk_1,
      M00_ARESETN => S_AXI_ARESETN_1,
      M00_AXI_araddr(31 downto 0) => interconnect_CPU_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready => interconnect_CPU_M00_AXI_ARREADY,
      M00_AXI_arvalid => interconnect_CPU_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => interconnect_CPU_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready => interconnect_CPU_M00_AXI_AWREADY,
      M00_AXI_awvalid => interconnect_CPU_M00_AXI_AWVALID,
      M00_AXI_bready => interconnect_CPU_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => interconnect_CPU_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => interconnect_CPU_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => interconnect_CPU_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => interconnect_CPU_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => interconnect_CPU_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => interconnect_CPU_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => interconnect_CPU_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => interconnect_CPU_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => interconnect_CPU_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => interconnect_CPU_M00_AXI_WVALID,
      M01_ACLK => Clk_1,
      M01_ARESETN => S_AXI_ARESETN_1,
      M01_AXI_araddr(31 downto 0) => interconnect_CPU_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready => interconnect_CPU_M01_AXI_ARREADY,
      M01_AXI_arvalid => interconnect_CPU_M01_AXI_ARVALID,
      M01_AXI_awaddr(31 downto 0) => interconnect_CPU_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready => interconnect_CPU_M01_AXI_AWREADY,
      M01_AXI_awvalid => interconnect_CPU_M01_AXI_AWVALID,
      M01_AXI_bready => interconnect_CPU_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => interconnect_CPU_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => interconnect_CPU_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => interconnect_CPU_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => interconnect_CPU_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => interconnect_CPU_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => interconnect_CPU_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => interconnect_CPU_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => interconnect_CPU_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => interconnect_CPU_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => interconnect_CPU_M01_AXI_WVALID,
      M02_ACLK => Clk_1,
      M02_ARESETN => S_AXI_ARESETN_1,
      M02_AXI_araddr(31 downto 0) => Conn4_ARADDR(31 downto 0),
      M02_AXI_arready(0) => Conn4_ARREADY(0),
      M02_AXI_arvalid(0) => Conn4_ARVALID(0),
      M02_AXI_awaddr(31 downto 0) => Conn4_AWADDR(31 downto 0),
      M02_AXI_awready(0) => Conn4_AWREADY(0),
      M02_AXI_awvalid(0) => Conn4_AWVALID(0),
      M02_AXI_bready(0) => Conn4_BREADY(0),
      M02_AXI_bresp(1 downto 0) => Conn4_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => Conn4_BVALID(0),
      M02_AXI_rdata(31 downto 0) => Conn4_RDATA(31 downto 0),
      M02_AXI_rready(0) => Conn4_RREADY(0),
      M02_AXI_rresp(1 downto 0) => Conn4_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => Conn4_RVALID(0),
      M02_AXI_wdata(31 downto 0) => Conn4_WDATA(31 downto 0),
      M02_AXI_wready(0) => Conn4_WREADY(0),
      M02_AXI_wstrb(3 downto 0) => Conn4_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => Conn4_WVALID(0),
      M03_ACLK => Clk_1,
      M03_ARESETN => S_AXI_ARESETN_1,
      M03_AXI_araddr(31 downto 0) => Conn6_ARADDR(31 downto 0),
      M03_AXI_arready(0) => Conn6_ARREADY(0),
      M03_AXI_arvalid(0) => Conn6_ARVALID(0),
      M03_AXI_awaddr(31 downto 0) => Conn6_AWADDR(31 downto 0),
      M03_AXI_awready(0) => Conn6_AWREADY(0),
      M03_AXI_awvalid(0) => Conn6_AWVALID(0),
      M03_AXI_bready(0) => Conn6_BREADY(0),
      M03_AXI_bresp(1 downto 0) => Conn6_BRESP(1 downto 0),
      M03_AXI_bvalid(0) => Conn6_BVALID(0),
      M03_AXI_rdata(31 downto 0) => Conn6_RDATA(31 downto 0),
      M03_AXI_rready(0) => Conn6_RREADY(0),
      M03_AXI_rresp(1 downto 0) => Conn6_RRESP(1 downto 0),
      M03_AXI_rvalid(0) => Conn6_RVALID(0),
      M03_AXI_wdata(31 downto 0) => Conn6_WDATA(31 downto 0),
      M03_AXI_wready(0) => Conn6_WREADY(0),
      M03_AXI_wstrb(3 downto 0) => Conn6_WSTRB(3 downto 0),
      M03_AXI_wvalid(0) => Conn6_WVALID(0),
      M04_ACLK => Clk_1,
      M04_ARESETN => S_AXI_ARESETN_1,
      M04_AXI_araddr(31 downto 0) => Conn1_ARADDR(31 downto 0),
      M04_AXI_arready(0) => Conn1_ARREADY(0),
      M04_AXI_arvalid(0) => Conn1_ARVALID(0),
      M04_AXI_awaddr(31 downto 0) => Conn1_AWADDR(31 downto 0),
      M04_AXI_awready(0) => Conn1_AWREADY(0),
      M04_AXI_awvalid(0) => Conn1_AWVALID(0),
      M04_AXI_bready(0) => Conn1_BREADY(0),
      M04_AXI_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      M04_AXI_bvalid(0) => Conn1_BVALID(0),
      M04_AXI_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      M04_AXI_rready(0) => Conn1_RREADY(0),
      M04_AXI_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      M04_AXI_rvalid(0) => Conn1_RVALID(0),
      M04_AXI_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      M04_AXI_wready(0) => Conn1_WREADY(0),
      M04_AXI_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      M04_AXI_wvalid(0) => Conn1_WVALID(0),
      M05_ACLK => Clk_1,
      M05_ARESETN => S_AXI_ARESETN_1,
      M05_AXI_araddr(31 downto 0) => Conn3_ARADDR(31 downto 0),
      M05_AXI_arready(0) => Conn3_ARREADY(0),
      M05_AXI_arvalid(0) => Conn3_ARVALID(0),
      M05_AXI_awaddr(31 downto 0) => Conn3_AWADDR(31 downto 0),
      M05_AXI_awready(0) => Conn3_AWREADY(0),
      M05_AXI_awvalid(0) => Conn3_AWVALID(0),
      M05_AXI_bready(0) => Conn3_BREADY(0),
      M05_AXI_bresp(1 downto 0) => Conn3_BRESP(1 downto 0),
      M05_AXI_bvalid(0) => Conn3_BVALID(0),
      M05_AXI_rdata(31 downto 0) => Conn3_RDATA(31 downto 0),
      M05_AXI_rready(0) => Conn3_RREADY(0),
      M05_AXI_rresp(1 downto 0) => Conn3_RRESP(1 downto 0),
      M05_AXI_rvalid(0) => Conn3_RVALID(0),
      M05_AXI_wdata(31 downto 0) => Conn3_WDATA(31 downto 0),
      M05_AXI_wready(0) => Conn3_WREADY(0),
      M05_AXI_wstrb(3 downto 0) => Conn3_WSTRB(3 downto 0),
      M05_AXI_wvalid(0) => Conn3_WVALID(0),
      M06_ACLK => Clk_1,
      M06_ARESETN => S_AXI_ARESETN_1,
      M06_AXI_araddr(23 downto 0) => Conn5_ARADDR(23 downto 0),
      M06_AXI_arburst(1 downto 0) => Conn5_ARBURST(1 downto 0),
      M06_AXI_arcache(3 downto 0) => Conn5_ARCACHE(3 downto 0),
      M06_AXI_arlen(7 downto 0) => Conn5_ARLEN(7 downto 0),
      M06_AXI_arlock(0) => Conn5_ARLOCK(0),
      M06_AXI_arprot(2 downto 0) => Conn5_ARPROT(2 downto 0),
      M06_AXI_arready => Conn5_ARREADY,
      M06_AXI_arsize(2 downto 0) => Conn5_ARSIZE(2 downto 0),
      M06_AXI_arvalid => Conn5_ARVALID,
      M06_AXI_awaddr(23 downto 0) => Conn5_AWADDR(23 downto 0),
      M06_AXI_awburst(1 downto 0) => Conn5_AWBURST(1 downto 0),
      M06_AXI_awcache(3 downto 0) => Conn5_AWCACHE(3 downto 0),
      M06_AXI_awlen(7 downto 0) => Conn5_AWLEN(7 downto 0),
      M06_AXI_awlock(0) => Conn5_AWLOCK(0),
      M06_AXI_awprot(2 downto 0) => Conn5_AWPROT(2 downto 0),
      M06_AXI_awready => Conn5_AWREADY,
      M06_AXI_awsize(2 downto 0) => Conn5_AWSIZE(2 downto 0),
      M06_AXI_awvalid => Conn5_AWVALID,
      M06_AXI_bready => Conn5_BREADY,
      M06_AXI_bresp(1 downto 0) => Conn5_BRESP(1 downto 0),
      M06_AXI_bvalid => Conn5_BVALID,
      M06_AXI_rdata(31 downto 0) => Conn5_RDATA(31 downto 0),
      M06_AXI_rlast => Conn5_RLAST,
      M06_AXI_rready => Conn5_RREADY,
      M06_AXI_rresp(1 downto 0) => Conn5_RRESP(1 downto 0),
      M06_AXI_rvalid => Conn5_RVALID,
      M06_AXI_wdata(31 downto 0) => Conn5_WDATA(31 downto 0),
      M06_AXI_wlast => Conn5_WLAST,
      M06_AXI_wready => Conn5_WREADY,
      M06_AXI_wstrb(3 downto 0) => Conn5_WSTRB(3 downto 0),
      M06_AXI_wvalid => Conn5_WVALID,
      M07_ACLK => Clk_1,
      M07_ARESETN => S_AXI_ARESETN_1,
      M07_AXI_araddr(31 downto 0) => Conn2_ARADDR(31 downto 0),
      M07_AXI_arready(0) => Conn2_ARREADY(0),
      M07_AXI_arvalid(0) => Conn2_ARVALID(0),
      M07_AXI_awaddr(31 downto 0) => Conn2_AWADDR(31 downto 0),
      M07_AXI_awready(0) => Conn2_AWREADY(0),
      M07_AXI_awvalid(0) => Conn2_AWVALID(0),
      M07_AXI_bready(0) => Conn2_BREADY(0),
      M07_AXI_bresp(1 downto 0) => Conn2_BRESP(1 downto 0),
      M07_AXI_bvalid(0) => Conn2_BVALID(0),
      M07_AXI_rdata(31 downto 0) => Conn2_RDATA(31 downto 0),
      M07_AXI_rready(0) => Conn2_RREADY(0),
      M07_AXI_rresp(1 downto 0) => Conn2_RRESP(1 downto 0),
      M07_AXI_rvalid(0) => Conn2_RVALID(0),
      M07_AXI_wdata(31 downto 0) => Conn2_WDATA(31 downto 0),
      M07_AXI_wready(0) => Conn2_WREADY(0),
      M07_AXI_wstrb(3 downto 0) => Conn2_WSTRB(3 downto 0),
      M07_AXI_wvalid(0) => Conn2_WVALID(0),
      M08_ACLK => Clk_1,
      M08_ARESETN => S_AXI_ARESETN_1,
      M08_AXI_araddr => NLW_interconnect_CPU_M08_AXI_araddr_UNCONNECTED,
      M08_AXI_arburst => NLW_interconnect_CPU_M08_AXI_arburst_UNCONNECTED,
      M08_AXI_arcache => NLW_interconnect_CPU_M08_AXI_arcache_UNCONNECTED,
      M08_AXI_arlen => NLW_interconnect_CPU_M08_AXI_arlen_UNCONNECTED,
      M08_AXI_arlock => NLW_interconnect_CPU_M08_AXI_arlock_UNCONNECTED,
      M08_AXI_arprot => NLW_interconnect_CPU_M08_AXI_arprot_UNCONNECTED,
      M08_AXI_arqos => NLW_interconnect_CPU_M08_AXI_arqos_UNCONNECTED,
      M08_AXI_arready => '0',
      M08_AXI_arregion => NLW_interconnect_CPU_M08_AXI_arregion_UNCONNECTED,
      M08_AXI_arsize => NLW_interconnect_CPU_M08_AXI_arsize_UNCONNECTED,
      M08_AXI_arvalid => NLW_interconnect_CPU_M08_AXI_arvalid_UNCONNECTED,
      M08_AXI_awaddr => NLW_interconnect_CPU_M08_AXI_awaddr_UNCONNECTED,
      M08_AXI_awburst => NLW_interconnect_CPU_M08_AXI_awburst_UNCONNECTED,
      M08_AXI_awcache => NLW_interconnect_CPU_M08_AXI_awcache_UNCONNECTED,
      M08_AXI_awlen => NLW_interconnect_CPU_M08_AXI_awlen_UNCONNECTED,
      M08_AXI_awlock => NLW_interconnect_CPU_M08_AXI_awlock_UNCONNECTED,
      M08_AXI_awprot => NLW_interconnect_CPU_M08_AXI_awprot_UNCONNECTED,
      M08_AXI_awqos => NLW_interconnect_CPU_M08_AXI_awqos_UNCONNECTED,
      M08_AXI_awready => '0',
      M08_AXI_awregion => NLW_interconnect_CPU_M08_AXI_awregion_UNCONNECTED,
      M08_AXI_awsize => NLW_interconnect_CPU_M08_AXI_awsize_UNCONNECTED,
      M08_AXI_awvalid => NLW_interconnect_CPU_M08_AXI_awvalid_UNCONNECTED,
      M08_AXI_bready => NLW_interconnect_CPU_M08_AXI_bready_UNCONNECTED,
      M08_AXI_bresp => '0',
      M08_AXI_bvalid => '0',
      M08_AXI_rdata => '0',
      M08_AXI_rlast => '0',
      M08_AXI_rready => NLW_interconnect_CPU_M08_AXI_rready_UNCONNECTED,
      M08_AXI_rresp => '0',
      M08_AXI_rvalid => '0',
      M08_AXI_wdata => NLW_interconnect_CPU_M08_AXI_wdata_UNCONNECTED,
      M08_AXI_wlast => NLW_interconnect_CPU_M08_AXI_wlast_UNCONNECTED,
      M08_AXI_wready => '0',
      M08_AXI_wstrb => NLW_interconnect_CPU_M08_AXI_wstrb_UNCONNECTED,
      M08_AXI_wvalid => NLW_interconnect_CPU_M08_AXI_wvalid_UNCONNECTED,
      M09_ACLK => Clk_1,
      M09_ARESETN => S_AXI_ARESETN_1,
      M09_AXI_araddr(31 downto 0) => interconnect_CPU_M09_AXI_ARADDR(31 downto 0),
      M09_AXI_arready => interconnect_CPU_M09_AXI_ARREADY,
      M09_AXI_arvalid => interconnect_CPU_M09_AXI_ARVALID,
      M09_AXI_awaddr(31 downto 0) => interconnect_CPU_M09_AXI_AWADDR(31 downto 0),
      M09_AXI_awready => interconnect_CPU_M09_AXI_AWREADY,
      M09_AXI_awvalid => interconnect_CPU_M09_AXI_AWVALID,
      M09_AXI_bready => interconnect_CPU_M09_AXI_BREADY,
      M09_AXI_bresp(1 downto 0) => interconnect_CPU_M09_AXI_BRESP(1 downto 0),
      M09_AXI_bvalid => interconnect_CPU_M09_AXI_BVALID,
      M09_AXI_rdata(31 downto 0) => interconnect_CPU_M09_AXI_RDATA(31 downto 0),
      M09_AXI_rready => interconnect_CPU_M09_AXI_RREADY,
      M09_AXI_rresp(1 downto 0) => interconnect_CPU_M09_AXI_RRESP(1 downto 0),
      M09_AXI_rvalid => interconnect_CPU_M09_AXI_RVALID,
      M09_AXI_wdata(31 downto 0) => interconnect_CPU_M09_AXI_WDATA(31 downto 0),
      M09_AXI_wready => interconnect_CPU_M09_AXI_WREADY,
      M09_AXI_wstrb(3 downto 0) => interconnect_CPU_M09_AXI_WSTRB(3 downto 0),
      M09_AXI_wvalid => interconnect_CPU_M09_AXI_WVALID,
      M10_ACLK => Clk_1,
      M10_ARESETN => S_AXI_ARESETN_1,
      M10_AXI_araddr(31 downto 0) => interconnect_CPU_M10_AXI_ARADDR(31 downto 0),
      M10_AXI_arready => interconnect_CPU_M10_AXI_ARREADY,
      M10_AXI_arvalid => interconnect_CPU_M10_AXI_ARVALID,
      M10_AXI_awaddr(31 downto 0) => interconnect_CPU_M10_AXI_AWADDR(31 downto 0),
      M10_AXI_awready => interconnect_CPU_M10_AXI_AWREADY,
      M10_AXI_awvalid => interconnect_CPU_M10_AXI_AWVALID,
      M10_AXI_bready => interconnect_CPU_M10_AXI_BREADY,
      M10_AXI_bresp(1 downto 0) => interconnect_CPU_M10_AXI_BRESP(1 downto 0),
      M10_AXI_bvalid => interconnect_CPU_M10_AXI_BVALID,
      M10_AXI_rdata(31 downto 0) => interconnect_CPU_M10_AXI_RDATA(31 downto 0),
      M10_AXI_rready => interconnect_CPU_M10_AXI_RREADY,
      M10_AXI_rresp(1 downto 0) => interconnect_CPU_M10_AXI_RRESP(1 downto 0),
      M10_AXI_rvalid => interconnect_CPU_M10_AXI_RVALID,
      M10_AXI_wdata(31 downto 0) => interconnect_CPU_M10_AXI_WDATA(31 downto 0),
      M10_AXI_wready => interconnect_CPU_M10_AXI_WREADY,
      M10_AXI_wvalid => interconnect_CPU_M10_AXI_WVALID,
      S00_ACLK => Clk_1,
      S00_ARESETN => S_AXI_ARESETN_1,
      S00_AXI_araddr(31 downto 0) => microblaze_CPU_M_AXI_DP_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => microblaze_CPU_M_AXI_DP_ARPROT(2 downto 0),
      S00_AXI_arready(0) => microblaze_CPU_M_AXI_DP_ARREADY(0),
      S00_AXI_arvalid(0) => microblaze_CPU_M_AXI_DP_ARVALID,
      S00_AXI_awaddr(31 downto 0) => microblaze_CPU_M_AXI_DP_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => microblaze_CPU_M_AXI_DP_AWPROT(2 downto 0),
      S00_AXI_awready(0) => microblaze_CPU_M_AXI_DP_AWREADY(0),
      S00_AXI_awvalid(0) => microblaze_CPU_M_AXI_DP_AWVALID,
      S00_AXI_bready(0) => microblaze_CPU_M_AXI_DP_BREADY,
      S00_AXI_bresp(1 downto 0) => microblaze_CPU_M_AXI_DP_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => microblaze_CPU_M_AXI_DP_BVALID(0),
      S00_AXI_rdata(31 downto 0) => microblaze_CPU_M_AXI_DP_RDATA(31 downto 0),
      S00_AXI_rready(0) => microblaze_CPU_M_AXI_DP_RREADY,
      S00_AXI_rresp(1 downto 0) => microblaze_CPU_M_AXI_DP_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => microblaze_CPU_M_AXI_DP_RVALID(0),
      S00_AXI_wdata(31 downto 0) => microblaze_CPU_M_AXI_DP_WDATA(31 downto 0),
      S00_AXI_wready(0) => microblaze_CPU_M_AXI_DP_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => microblaze_CPU_M_AXI_DP_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => microblaze_CPU_M_AXI_DP_WVALID
    );
mdm_0: component Mars_AX3_mdm_0_0
     port map (
      Dbg_Capture_0 => mdm_0_MBDEBUG_0_CAPTURE,
      Dbg_Clk_0 => mdm_0_MBDEBUG_0_CLK,
      Dbg_Disable_0 => mdm_0_MBDEBUG_0_DISABLE,
      Dbg_Reg_En_0(0 to 7) => mdm_0_MBDEBUG_0_REG_EN(0 to 7),
      Dbg_Rst_0 => mdm_0_MBDEBUG_0_RST,
      Dbg_Shift_0 => mdm_0_MBDEBUG_0_SHIFT,
      Dbg_TDI_0 => mdm_0_MBDEBUG_0_TDI,
      Dbg_TDO_0 => mdm_0_MBDEBUG_0_TDO,
      Dbg_Update_0 => mdm_0_MBDEBUG_0_UPDATE,
      Debug_SYS_Rst => mdm_0_Debug_SYS_Rst,
      Interrupt => mdm_0_Interrupt,
      S_AXI_ACLK => Clk_1,
      S_AXI_ARADDR(3 downto 0) => interconnect_CPU_M00_AXI_ARADDR(3 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN_1,
      S_AXI_ARREADY => interconnect_CPU_M00_AXI_ARREADY,
      S_AXI_ARVALID => interconnect_CPU_M00_AXI_ARVALID,
      S_AXI_AWADDR(3 downto 0) => interconnect_CPU_M00_AXI_AWADDR(3 downto 0),
      S_AXI_AWREADY => interconnect_CPU_M00_AXI_AWREADY,
      S_AXI_AWVALID => interconnect_CPU_M00_AXI_AWVALID,
      S_AXI_BREADY => interconnect_CPU_M00_AXI_BREADY,
      S_AXI_BRESP(1 downto 0) => interconnect_CPU_M00_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => interconnect_CPU_M00_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => interconnect_CPU_M00_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => interconnect_CPU_M00_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => interconnect_CPU_M00_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => interconnect_CPU_M00_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => interconnect_CPU_M00_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => interconnect_CPU_M00_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => interconnect_CPU_M00_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => interconnect_CPU_M00_AXI_WVALID
    );
microblaze_CPU: component Mars_AX3_microblaze_CPU_0
     port map (
      Byte_Enable(0 to 3) => microblaze_CPU_DLMB_BE(0 to 3),
      Clk => Clk_1,
      DCE => microblaze_CPU_DLMB_CE,
      DReady => microblaze_CPU_DLMB_READY,
      DUE => microblaze_CPU_DLMB_UE,
      DWait => microblaze_CPU_DLMB_WAIT,
      D_AS => microblaze_CPU_DLMB_ADDRSTROBE,
      Data_Addr(0 to 31) => microblaze_CPU_DLMB_ABUS(0 to 31),
      Data_Read(0 to 31) => microblaze_CPU_DLMB_READDBUS(0 to 31),
      Data_Write(0 to 31) => microblaze_CPU_DLMB_WRITEDBUS(0 to 31),
      Dbg_Capture => mdm_0_MBDEBUG_0_CAPTURE,
      Dbg_Clk => mdm_0_MBDEBUG_0_CLK,
      Dbg_Disable => mdm_0_MBDEBUG_0_DISABLE,
      Dbg_Reg_En(0 to 7) => mdm_0_MBDEBUG_0_REG_EN(0 to 7),
      Dbg_Shift => mdm_0_MBDEBUG_0_SHIFT,
      Dbg_TDI => mdm_0_MBDEBUG_0_TDI,
      Dbg_TDO => mdm_0_MBDEBUG_0_TDO,
      Dbg_Update => mdm_0_MBDEBUG_0_UPDATE,
      Debug_Rst => mdm_0_MBDEBUG_0_RST,
      ICE => microblaze_CPU_ILMB_CE,
      IFetch => microblaze_CPU_ILMB_READSTROBE,
      IReady => microblaze_CPU_ILMB_READY,
      IUE => microblaze_CPU_ILMB_UE,
      IWAIT => microblaze_CPU_ILMB_WAIT,
      I_AS => microblaze_CPU_ILMB_ADDRSTROBE,
      Instr(0 to 31) => microblaze_CPU_ILMB_READDBUS(0 to 31),
      Instr_Addr(0 to 31) => microblaze_CPU_ILMB_ABUS(0 to 31),
      Interrupt => microblaze_axi_intc_interrupt_INTERRUPT,
      Interrupt_Ack(0 to 1) => microblaze_axi_intc_interrupt_ACK(0 to 1),
      Interrupt_Address(0) => microblaze_axi_intc_interrupt_ADDRESS(31),
      Interrupt_Address(1) => microblaze_axi_intc_interrupt_ADDRESS(30),
      Interrupt_Address(2) => microblaze_axi_intc_interrupt_ADDRESS(29),
      Interrupt_Address(3) => microblaze_axi_intc_interrupt_ADDRESS(28),
      Interrupt_Address(4) => microblaze_axi_intc_interrupt_ADDRESS(27),
      Interrupt_Address(5) => microblaze_axi_intc_interrupt_ADDRESS(26),
      Interrupt_Address(6) => microblaze_axi_intc_interrupt_ADDRESS(25),
      Interrupt_Address(7) => microblaze_axi_intc_interrupt_ADDRESS(24),
      Interrupt_Address(8) => microblaze_axi_intc_interrupt_ADDRESS(23),
      Interrupt_Address(9) => microblaze_axi_intc_interrupt_ADDRESS(22),
      Interrupt_Address(10) => microblaze_axi_intc_interrupt_ADDRESS(21),
      Interrupt_Address(11) => microblaze_axi_intc_interrupt_ADDRESS(20),
      Interrupt_Address(12) => microblaze_axi_intc_interrupt_ADDRESS(19),
      Interrupt_Address(13) => microblaze_axi_intc_interrupt_ADDRESS(18),
      Interrupt_Address(14) => microblaze_axi_intc_interrupt_ADDRESS(17),
      Interrupt_Address(15) => microblaze_axi_intc_interrupt_ADDRESS(16),
      Interrupt_Address(16) => microblaze_axi_intc_interrupt_ADDRESS(15),
      Interrupt_Address(17) => microblaze_axi_intc_interrupt_ADDRESS(14),
      Interrupt_Address(18) => microblaze_axi_intc_interrupt_ADDRESS(13),
      Interrupt_Address(19) => microblaze_axi_intc_interrupt_ADDRESS(12),
      Interrupt_Address(20) => microblaze_axi_intc_interrupt_ADDRESS(11),
      Interrupt_Address(21) => microblaze_axi_intc_interrupt_ADDRESS(10),
      Interrupt_Address(22) => microblaze_axi_intc_interrupt_ADDRESS(9),
      Interrupt_Address(23) => microblaze_axi_intc_interrupt_ADDRESS(8),
      Interrupt_Address(24) => microblaze_axi_intc_interrupt_ADDRESS(7),
      Interrupt_Address(25) => microblaze_axi_intc_interrupt_ADDRESS(6),
      Interrupt_Address(26) => microblaze_axi_intc_interrupt_ADDRESS(5),
      Interrupt_Address(27) => microblaze_axi_intc_interrupt_ADDRESS(4),
      Interrupt_Address(28) => microblaze_axi_intc_interrupt_ADDRESS(3),
      Interrupt_Address(29) => microblaze_axi_intc_interrupt_ADDRESS(2),
      Interrupt_Address(30) => microblaze_axi_intc_interrupt_ADDRESS(1),
      Interrupt_Address(31) => microblaze_axi_intc_interrupt_ADDRESS(0),
      M_AXI_DC_ARADDR(31 downto 0) => microblaze_CPU_M_AXI_DC_ARADDR(31 downto 0),
      M_AXI_DC_ARBURST(1 downto 0) => microblaze_CPU_M_AXI_DC_ARBURST(1 downto 0),
      M_AXI_DC_ARCACHE(3 downto 0) => microblaze_CPU_M_AXI_DC_ARCACHE(3 downto 0),
      M_AXI_DC_ARID(0) => microblaze_CPU_M_AXI_DC_ARID(0),
      M_AXI_DC_ARLEN(7 downto 0) => microblaze_CPU_M_AXI_DC_ARLEN(7 downto 0),
      M_AXI_DC_ARLOCK => microblaze_CPU_M_AXI_DC_ARLOCK,
      M_AXI_DC_ARPROT(2 downto 0) => microblaze_CPU_M_AXI_DC_ARPROT(2 downto 0),
      M_AXI_DC_ARQOS(3 downto 0) => microblaze_CPU_M_AXI_DC_ARQOS(3 downto 0),
      M_AXI_DC_ARREADY => microblaze_CPU_M_AXI_DC_ARREADY(0),
      M_AXI_DC_ARSIZE(2 downto 0) => microblaze_CPU_M_AXI_DC_ARSIZE(2 downto 0),
      M_AXI_DC_ARVALID => microblaze_CPU_M_AXI_DC_ARVALID,
      M_AXI_DC_AWADDR(31 downto 0) => microblaze_CPU_M_AXI_DC_AWADDR(31 downto 0),
      M_AXI_DC_AWBURST(1 downto 0) => microblaze_CPU_M_AXI_DC_AWBURST(1 downto 0),
      M_AXI_DC_AWCACHE(3 downto 0) => microblaze_CPU_M_AXI_DC_AWCACHE(3 downto 0),
      M_AXI_DC_AWID(0) => microblaze_CPU_M_AXI_DC_AWID(0),
      M_AXI_DC_AWLEN(7 downto 0) => microblaze_CPU_M_AXI_DC_AWLEN(7 downto 0),
      M_AXI_DC_AWLOCK => microblaze_CPU_M_AXI_DC_AWLOCK,
      M_AXI_DC_AWPROT(2 downto 0) => microblaze_CPU_M_AXI_DC_AWPROT(2 downto 0),
      M_AXI_DC_AWQOS(3 downto 0) => microblaze_CPU_M_AXI_DC_AWQOS(3 downto 0),
      M_AXI_DC_AWREADY => microblaze_CPU_M_AXI_DC_AWREADY(0),
      M_AXI_DC_AWSIZE(2 downto 0) => microblaze_CPU_M_AXI_DC_AWSIZE(2 downto 0),
      M_AXI_DC_AWVALID => microblaze_CPU_M_AXI_DC_AWVALID,
      M_AXI_DC_BID(0) => microblaze_CPU_M_AXI_DC_BID(0),
      M_AXI_DC_BREADY => microblaze_CPU_M_AXI_DC_BREADY,
      M_AXI_DC_BRESP(1 downto 0) => microblaze_CPU_M_AXI_DC_BRESP(1 downto 0),
      M_AXI_DC_BVALID => microblaze_CPU_M_AXI_DC_BVALID(0),
      M_AXI_DC_RDATA(31 downto 0) => microblaze_CPU_M_AXI_DC_RDATA(31 downto 0),
      M_AXI_DC_RID(0) => microblaze_CPU_M_AXI_DC_RID(0),
      M_AXI_DC_RLAST => microblaze_CPU_M_AXI_DC_RLAST(0),
      M_AXI_DC_RREADY => microblaze_CPU_M_AXI_DC_RREADY,
      M_AXI_DC_RRESP(1 downto 0) => microblaze_CPU_M_AXI_DC_RRESP(1 downto 0),
      M_AXI_DC_RVALID => microblaze_CPU_M_AXI_DC_RVALID(0),
      M_AXI_DC_WDATA(31 downto 0) => microblaze_CPU_M_AXI_DC_WDATA(31 downto 0),
      M_AXI_DC_WLAST => microblaze_CPU_M_AXI_DC_WLAST,
      M_AXI_DC_WREADY => microblaze_CPU_M_AXI_DC_WREADY(0),
      M_AXI_DC_WSTRB(3 downto 0) => microblaze_CPU_M_AXI_DC_WSTRB(3 downto 0),
      M_AXI_DC_WVALID => microblaze_CPU_M_AXI_DC_WVALID,
      M_AXI_DP_ARADDR(31 downto 0) => microblaze_CPU_M_AXI_DP_ARADDR(31 downto 0),
      M_AXI_DP_ARPROT(2 downto 0) => microblaze_CPU_M_AXI_DP_ARPROT(2 downto 0),
      M_AXI_DP_ARREADY => microblaze_CPU_M_AXI_DP_ARREADY(0),
      M_AXI_DP_ARVALID => microblaze_CPU_M_AXI_DP_ARVALID,
      M_AXI_DP_AWADDR(31 downto 0) => microblaze_CPU_M_AXI_DP_AWADDR(31 downto 0),
      M_AXI_DP_AWPROT(2 downto 0) => microblaze_CPU_M_AXI_DP_AWPROT(2 downto 0),
      M_AXI_DP_AWREADY => microblaze_CPU_M_AXI_DP_AWREADY(0),
      M_AXI_DP_AWVALID => microblaze_CPU_M_AXI_DP_AWVALID,
      M_AXI_DP_BREADY => microblaze_CPU_M_AXI_DP_BREADY,
      M_AXI_DP_BRESP(1 downto 0) => microblaze_CPU_M_AXI_DP_BRESP(1 downto 0),
      M_AXI_DP_BVALID => microblaze_CPU_M_AXI_DP_BVALID(0),
      M_AXI_DP_RDATA(31 downto 0) => microblaze_CPU_M_AXI_DP_RDATA(31 downto 0),
      M_AXI_DP_RREADY => microblaze_CPU_M_AXI_DP_RREADY,
      M_AXI_DP_RRESP(1 downto 0) => microblaze_CPU_M_AXI_DP_RRESP(1 downto 0),
      M_AXI_DP_RVALID => microblaze_CPU_M_AXI_DP_RVALID(0),
      M_AXI_DP_WDATA(31 downto 0) => microblaze_CPU_M_AXI_DP_WDATA(31 downto 0),
      M_AXI_DP_WREADY => microblaze_CPU_M_AXI_DP_WREADY(0),
      M_AXI_DP_WSTRB(3 downto 0) => microblaze_CPU_M_AXI_DP_WSTRB(3 downto 0),
      M_AXI_DP_WVALID => microblaze_CPU_M_AXI_DP_WVALID,
      M_AXI_IC_ARADDR(31 downto 0) => microblaze_CPU_M_AXI_IC_ARADDR(31 downto 0),
      M_AXI_IC_ARBURST(1 downto 0) => microblaze_CPU_M_AXI_IC_ARBURST(1 downto 0),
      M_AXI_IC_ARCACHE(3 downto 0) => microblaze_CPU_M_AXI_IC_ARCACHE(3 downto 0),
      M_AXI_IC_ARID(0) => microblaze_CPU_M_AXI_IC_ARID(0),
      M_AXI_IC_ARLEN(7 downto 0) => microblaze_CPU_M_AXI_IC_ARLEN(7 downto 0),
      M_AXI_IC_ARLOCK => microblaze_CPU_M_AXI_IC_ARLOCK,
      M_AXI_IC_ARPROT(2 downto 0) => microblaze_CPU_M_AXI_IC_ARPROT(2 downto 0),
      M_AXI_IC_ARQOS(3 downto 0) => microblaze_CPU_M_AXI_IC_ARQOS(3 downto 0),
      M_AXI_IC_ARREADY => microblaze_CPU_M_AXI_IC_ARREADY(0),
      M_AXI_IC_ARSIZE(2 downto 0) => microblaze_CPU_M_AXI_IC_ARSIZE(2 downto 0),
      M_AXI_IC_ARVALID => microblaze_CPU_M_AXI_IC_ARVALID,
      M_AXI_IC_AWADDR(31 downto 0) => microblaze_CPU_M_AXI_IC_AWADDR(31 downto 0),
      M_AXI_IC_AWBURST(1 downto 0) => microblaze_CPU_M_AXI_IC_AWBURST(1 downto 0),
      M_AXI_IC_AWCACHE(3 downto 0) => microblaze_CPU_M_AXI_IC_AWCACHE(3 downto 0),
      M_AXI_IC_AWID(0) => microblaze_CPU_M_AXI_IC_AWID(0),
      M_AXI_IC_AWLEN(7 downto 0) => microblaze_CPU_M_AXI_IC_AWLEN(7 downto 0),
      M_AXI_IC_AWLOCK => microblaze_CPU_M_AXI_IC_AWLOCK,
      M_AXI_IC_AWPROT(2 downto 0) => microblaze_CPU_M_AXI_IC_AWPROT(2 downto 0),
      M_AXI_IC_AWQOS(3 downto 0) => microblaze_CPU_M_AXI_IC_AWQOS(3 downto 0),
      M_AXI_IC_AWREADY => microblaze_CPU_M_AXI_IC_AWREADY(0),
      M_AXI_IC_AWSIZE(2 downto 0) => microblaze_CPU_M_AXI_IC_AWSIZE(2 downto 0),
      M_AXI_IC_AWVALID => microblaze_CPU_M_AXI_IC_AWVALID,
      M_AXI_IC_BID(0) => microblaze_CPU_M_AXI_IC_BID(0),
      M_AXI_IC_BREADY => microblaze_CPU_M_AXI_IC_BREADY,
      M_AXI_IC_BRESP(1 downto 0) => microblaze_CPU_M_AXI_IC_BRESP(1 downto 0),
      M_AXI_IC_BVALID => microblaze_CPU_M_AXI_IC_BVALID(0),
      M_AXI_IC_RDATA(31 downto 0) => microblaze_CPU_M_AXI_IC_RDATA(31 downto 0),
      M_AXI_IC_RID(0) => microblaze_CPU_M_AXI_IC_RID(0),
      M_AXI_IC_RLAST => microblaze_CPU_M_AXI_IC_RLAST(0),
      M_AXI_IC_RREADY => microblaze_CPU_M_AXI_IC_RREADY,
      M_AXI_IC_RRESP(1 downto 0) => microblaze_CPU_M_AXI_IC_RRESP(1 downto 0),
      M_AXI_IC_RVALID => microblaze_CPU_M_AXI_IC_RVALID(0),
      M_AXI_IC_WDATA(31 downto 0) => microblaze_CPU_M_AXI_IC_WDATA(31 downto 0),
      M_AXI_IC_WLAST => microblaze_CPU_M_AXI_IC_WLAST,
      M_AXI_IC_WREADY => microblaze_CPU_M_AXI_IC_WREADY(0),
      M_AXI_IC_WSTRB(3 downto 0) => microblaze_CPU_M_AXI_IC_WSTRB(3 downto 0),
      M_AXI_IC_WVALID => microblaze_CPU_M_AXI_IC_WVALID,
      Read_Strobe => microblaze_CPU_DLMB_READSTROBE,
      Reset => Net,
      Write_Strobe => microblaze_CPU_DLMB_WRITESTROBE
    );
microblaze_axi_intc: component Mars_AX3_microblaze_axi_intc_0
     port map (
      interrupt_address(31 downto 0) => microblaze_axi_intc_interrupt_ADDRESS(31 downto 0),
      intr(9 downto 0) => intr_1(9 downto 0),
      irq => microblaze_axi_intc_interrupt_INTERRUPT,
      processor_ack(1) => microblaze_axi_intc_interrupt_ACK(0),
      processor_ack(0) => microblaze_axi_intc_interrupt_ACK(1),
      processor_clk => Clk_1,
      processor_rst => Net,
      s_axi_aclk => Clk_1,
      s_axi_araddr(8 downto 0) => interconnect_CPU_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => S_AXI_ARESETN_1,
      s_axi_arready => interconnect_CPU_M01_AXI_ARREADY,
      s_axi_arvalid => interconnect_CPU_M01_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => interconnect_CPU_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => interconnect_CPU_M01_AXI_AWREADY,
      s_axi_awvalid => interconnect_CPU_M01_AXI_AWVALID,
      s_axi_bready => interconnect_CPU_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => interconnect_CPU_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => interconnect_CPU_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => interconnect_CPU_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => interconnect_CPU_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => interconnect_CPU_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => interconnect_CPU_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => interconnect_CPU_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => interconnect_CPU_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => interconnect_CPU_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => interconnect_CPU_M01_AXI_WVALID
    );
microblaze_local_memory: entity work.microblaze_local_memory_imp_1QA78GH
     port map (
      Clk => Clk_1,
      LMB_M1_abus(0 to 31) => microblaze_CPU_ILMB_ABUS(0 to 31),
      LMB_M1_addrstrobe => microblaze_CPU_ILMB_ADDRSTROBE,
      LMB_M1_ce => microblaze_CPU_ILMB_CE,
      LMB_M1_readdbus(0 to 31) => microblaze_CPU_ILMB_READDBUS(0 to 31),
      LMB_M1_readstrobe => microblaze_CPU_ILMB_READSTROBE,
      LMB_M1_ready => microblaze_CPU_ILMB_READY,
      LMB_M1_ue => microblaze_CPU_ILMB_UE,
      LMB_M1_wait => microblaze_CPU_ILMB_WAIT,
      LMB_M_abus(0 to 31) => microblaze_CPU_DLMB_ABUS(0 to 31),
      LMB_M_addrstrobe => microblaze_CPU_DLMB_ADDRSTROBE,
      LMB_M_be(0 to 3) => microblaze_CPU_DLMB_BE(0 to 3),
      LMB_M_ce => microblaze_CPU_DLMB_CE,
      LMB_M_readdbus(0 to 31) => microblaze_CPU_DLMB_READDBUS(0 to 31),
      LMB_M_readstrobe => microblaze_CPU_DLMB_READSTROBE,
      LMB_M_ready => microblaze_CPU_DLMB_READY,
      LMB_M_ue => microblaze_CPU_DLMB_UE,
      LMB_M_wait => microblaze_CPU_DLMB_WAIT,
      LMB_M_writedbus(0 to 31) => microblaze_CPU_DLMB_WRITEDBUS(0 to 31),
      LMB_M_writestrobe => microblaze_CPU_DLMB_WRITESTROBE,
      LMB_Rst => LMB_Rst_1(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Memory_imp_YQ80QP is
  port (
    CLK100 : out STD_LOGIC;
    CLK200 : out STD_LOGIC;
    CLK50 : out STD_LOGIC;
    DDR3_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    DDR3_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR3_cas_n : out STD_LOGIC;
    DDR3_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR3_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR3_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR3_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR3_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_ras_n : out STD_LOGIC;
    DDR3_reset_n : out STD_LOGIC;
    DDR3_we_n : out STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arready : out STD_LOGIC;
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC;
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_bready : in STD_LOGIC;
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_rlast : out STD_LOGIC;
    S02_AXI_rready : in STD_LOGIC;
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rvalid : out STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_wvalid : in STD_LOGIC;
    S03_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S03_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arready : out STD_LOGIC;
    S03_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arvalid : in STD_LOGIC;
    S03_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_rlast : out STD_LOGIC;
    S03_AXI_rready : in STD_LOGIC;
    S03_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_rvalid : out STD_LOGIC;
    S04_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awready : out STD_LOGIC;
    S04_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awvalid : in STD_LOGIC;
    S04_AXI_bready : in STD_LOGIC;
    S04_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_bvalid : out STD_LOGIC;
    S04_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_wlast : in STD_LOGIC;
    S04_AXI_wready : out STD_LOGIC;
    S04_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_wvalid : in STD_LOGIC;
    SYS_CLK : in STD_LOGIC;
    SYS_RST_N : in STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    device_temp_i : in STD_LOGIC_VECTOR ( 11 downto 0 );
    mb_debug_sys_rst : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Memory_imp_YQ80QP;

architecture STRUCTURE of Memory_imp_YQ80QP is
  component Mars_AX3_SDRAM_0 is
  port (
    device_temp_i : in STD_LOGIC_VECTOR ( 11 downto 0 );
    sys_rst : in STD_LOGIC;
    clk_ref_i : in STD_LOGIC;
    ddr3_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    ddr3_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    ddr3_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr3_ras_n : out STD_LOGIC;
    ddr3_cas_n : out STD_LOGIC;
    ddr3_we_n : out STD_LOGIC;
    ddr3_reset_n : out STD_LOGIC;
    ddr3_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    ui_clk_sync_rst : out STD_LOGIC;
    ui_clk : out STD_LOGIC;
    ui_addn_clk_0 : out STD_LOGIC;
    ui_addn_clk_1 : out STD_LOGIC;
    ui_addn_clk_2 : out STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 27 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 27 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    mmcm_locked : out STD_LOGIC;
    sys_clk_i : in STD_LOGIC;
    init_calib_complete : out STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  end component Mars_AX3_SDRAM_0;
  component Mars_AX3_rst_mig_7series_0_100M_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Mars_AX3_rst_mig_7series_0_100M_0_0;
  component Mars_AX3_rst_mig_7series_0_100M_1_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Mars_AX3_rst_mig_7series_0_100M_1_0;
  signal Conn1_ADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal Conn1_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_CAS_N : STD_LOGIC;
  signal Conn1_CKE : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_CK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_CK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_DM : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_DQ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Conn1_DQS_N : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_DQS_P : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_ODT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RAS_N : STD_LOGIC;
  signal Conn1_RESET_N : STD_LOGIC;
  signal Conn1_WE_N : STD_LOGIC;
  signal S00_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S00_AXI_1_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S00_AXI_1_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S01_AXI_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S01_AXI_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S01_AXI_1_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S01_AXI_1_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S01_AXI_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S01_AXI_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S01_AXI_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S01_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S01_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S01_AXI_1_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S01_AXI_1_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S01_AXI_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S01_AXI_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S01_AXI_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S01_AXI_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S01_AXI_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S01_AXI_1_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S01_AXI_1_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S01_AXI_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S01_AXI_1_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S01_AXI_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S02_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S02_AXI_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S02_AXI_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S02_AXI_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S02_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S02_AXI_1_ARREADY : STD_LOGIC;
  signal S02_AXI_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S02_AXI_1_ARVALID : STD_LOGIC;
  signal S02_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S02_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S02_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S02_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S02_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S02_AXI_1_AWREADY : STD_LOGIC;
  signal S02_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S02_AXI_1_AWVALID : STD_LOGIC;
  signal S02_AXI_1_BREADY : STD_LOGIC;
  signal S02_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S02_AXI_1_BVALID : STD_LOGIC;
  signal S02_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S02_AXI_1_RLAST : STD_LOGIC;
  signal S02_AXI_1_RREADY : STD_LOGIC;
  signal S02_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S02_AXI_1_RVALID : STD_LOGIC;
  signal S02_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S02_AXI_1_WLAST : STD_LOGIC;
  signal S02_AXI_1_WREADY : STD_LOGIC;
  signal S02_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S02_AXI_1_WVALID : STD_LOGIC;
  signal S03_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S03_AXI_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S03_AXI_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S03_AXI_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S03_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S03_AXI_1_ARREADY : STD_LOGIC;
  signal S03_AXI_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S03_AXI_1_ARVALID : STD_LOGIC;
  signal S03_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S03_AXI_1_RLAST : STD_LOGIC;
  signal S03_AXI_1_RREADY : STD_LOGIC;
  signal S03_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S03_AXI_1_RVALID : STD_LOGIC;
  signal S04_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S04_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S04_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S04_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S04_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S04_AXI_1_AWREADY : STD_LOGIC;
  signal S04_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S04_AXI_1_AWVALID : STD_LOGIC;
  signal S04_AXI_1_BREADY : STD_LOGIC;
  signal S04_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S04_AXI_1_BVALID : STD_LOGIC;
  signal S04_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S04_AXI_1_WLAST : STD_LOGIC;
  signal S04_AXI_1_WREADY : STD_LOGIC;
  signal S04_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S04_AXI_1_WVALID : STD_LOGIC;
  signal SDRAM_mmcm_locked : STD_LOGIC;
  signal SDRAM_ui_addn_clk_0 : STD_LOGIC;
  signal SDRAM_ui_addn_clk_1 : STD_LOGIC;
  signal SDRAM_ui_addn_clk_2 : STD_LOGIC;
  signal SDRAM_ui_clk : STD_LOGIC;
  signal SDRAM_ui_clk_sync_rst : STD_LOGIC;
  signal SYS_CLK_1 : STD_LOGIC;
  signal SYS_RST_N_1 : STD_LOGIC;
  signal device_temp_i_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal interconnect_DDR_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal interconnect_DDR_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_DDR_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_DDR_M00_AXI_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal interconnect_DDR_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_DDR_M00_AXI_ARREADY : STD_LOGIC;
  signal interconnect_DDR_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_M00_AXI_ARVALID : STD_LOGIC;
  signal interconnect_DDR_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal interconnect_DDR_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_DDR_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_DDR_M00_AXI_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal interconnect_DDR_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_DDR_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_DDR_M00_AXI_AWREADY : STD_LOGIC;
  signal interconnect_DDR_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_M00_AXI_AWVALID : STD_LOGIC;
  signal interconnect_DDR_M00_AXI_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_M00_AXI_BREADY : STD_LOGIC;
  signal interconnect_DDR_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_DDR_M00_AXI_BVALID : STD_LOGIC;
  signal interconnect_DDR_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_DDR_M00_AXI_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_DDR_M00_AXI_RLAST : STD_LOGIC;
  signal interconnect_DDR_M00_AXI_RREADY : STD_LOGIC;
  signal interconnect_DDR_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_DDR_M00_AXI_RVALID : STD_LOGIC;
  signal interconnect_DDR_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_DDR_M00_AXI_WLAST : STD_LOGIC;
  signal interconnect_DDR_M00_AXI_WREADY : STD_LOGIC;
  signal interconnect_DDR_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_DDR_M00_AXI_WVALID : STD_LOGIC;
  signal mb_debug_sys_rst_1 : STD_LOGIC;
  signal rst_mig_7series_0_100M_0_bus_struct_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_mig_7series_0_100M_0_mb_reset : STD_LOGIC;
  signal rst_mig_7series_0_100M_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_mig_7series_0_100M_1_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_mig_7series_0_100M_1_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_SDRAM_init_calib_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_mig_7series_0_100M_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_mig_7series_0_100M_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_mig_7series_0_100M_1_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_mig_7series_0_100M_1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_mig_7series_0_100M_1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  CLK100 <= SDRAM_ui_addn_clk_1;
  CLK200 <= SDRAM_ui_addn_clk_2;
  CLK50 <= SDRAM_ui_addn_clk_0;
  DDR3_addr(13 downto 0) <= Conn1_ADDR(13 downto 0);
  DDR3_ba(2 downto 0) <= Conn1_BA(2 downto 0);
  DDR3_cas_n <= Conn1_CAS_N;
  DDR3_ck_n(0) <= Conn1_CK_N(0);
  DDR3_ck_p(0) <= Conn1_CK_P(0);
  DDR3_cke(0) <= Conn1_CKE(0);
  DDR3_dm(1 downto 0) <= Conn1_DM(1 downto 0);
  DDR3_odt(0) <= Conn1_ODT(0);
  DDR3_ras_n <= Conn1_RAS_N;
  DDR3_reset_n <= Conn1_RESET_N;
  DDR3_we_n <= Conn1_WE_N;
  S00_AXI_1_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  S00_AXI_1_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  S00_AXI_1_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  S00_AXI_1_ARID(0) <= S00_AXI_arid(0);
  S00_AXI_1_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  S00_AXI_1_ARLOCK(0) <= S00_AXI_arlock(0);
  S00_AXI_1_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  S00_AXI_1_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  S00_AXI_1_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  S00_AXI_1_ARVALID(0) <= S00_AXI_arvalid(0);
  S00_AXI_1_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  S00_AXI_1_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  S00_AXI_1_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  S00_AXI_1_AWID(0) <= S00_AXI_awid(0);
  S00_AXI_1_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  S00_AXI_1_AWLOCK(0) <= S00_AXI_awlock(0);
  S00_AXI_1_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  S00_AXI_1_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  S00_AXI_1_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  S00_AXI_1_AWVALID(0) <= S00_AXI_awvalid(0);
  S00_AXI_1_BREADY(0) <= S00_AXI_bready(0);
  S00_AXI_1_RREADY(0) <= S00_AXI_rready(0);
  S00_AXI_1_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  S00_AXI_1_WLAST(0) <= S00_AXI_wlast(0);
  S00_AXI_1_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  S00_AXI_1_WVALID(0) <= S00_AXI_wvalid(0);
  S00_AXI_arready(0) <= S00_AXI_1_ARREADY(0);
  S00_AXI_awready(0) <= S00_AXI_1_AWREADY(0);
  S00_AXI_bid(2 downto 0) <= S00_AXI_1_BID(2 downto 0);
  S00_AXI_bresp(1 downto 0) <= S00_AXI_1_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= S00_AXI_1_BVALID(0);
  S00_AXI_rdata(31 downto 0) <= S00_AXI_1_RDATA(31 downto 0);
  S00_AXI_rid(2 downto 0) <= S00_AXI_1_RID(2 downto 0);
  S00_AXI_rlast(0) <= S00_AXI_1_RLAST(0);
  S00_AXI_rresp(1 downto 0) <= S00_AXI_1_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= S00_AXI_1_RVALID(0);
  S00_AXI_wready(0) <= S00_AXI_1_WREADY(0);
  S01_AXI_1_ARADDR(31 downto 0) <= S01_AXI_araddr(31 downto 0);
  S01_AXI_1_ARBURST(1 downto 0) <= S01_AXI_arburst(1 downto 0);
  S01_AXI_1_ARCACHE(3 downto 0) <= S01_AXI_arcache(3 downto 0);
  S01_AXI_1_ARID(0) <= S01_AXI_arid(0);
  S01_AXI_1_ARLEN(7 downto 0) <= S01_AXI_arlen(7 downto 0);
  S01_AXI_1_ARLOCK(0) <= S01_AXI_arlock(0);
  S01_AXI_1_ARPROT(2 downto 0) <= S01_AXI_arprot(2 downto 0);
  S01_AXI_1_ARQOS(3 downto 0) <= S01_AXI_arqos(3 downto 0);
  S01_AXI_1_ARSIZE(2 downto 0) <= S01_AXI_arsize(2 downto 0);
  S01_AXI_1_ARVALID(0) <= S01_AXI_arvalid(0);
  S01_AXI_1_AWADDR(31 downto 0) <= S01_AXI_awaddr(31 downto 0);
  S01_AXI_1_AWBURST(1 downto 0) <= S01_AXI_awburst(1 downto 0);
  S01_AXI_1_AWCACHE(3 downto 0) <= S01_AXI_awcache(3 downto 0);
  S01_AXI_1_AWID(0) <= S01_AXI_awid(0);
  S01_AXI_1_AWLEN(7 downto 0) <= S01_AXI_awlen(7 downto 0);
  S01_AXI_1_AWLOCK(0) <= S01_AXI_awlock(0);
  S01_AXI_1_AWPROT(2 downto 0) <= S01_AXI_awprot(2 downto 0);
  S01_AXI_1_AWQOS(3 downto 0) <= S01_AXI_awqos(3 downto 0);
  S01_AXI_1_AWSIZE(2 downto 0) <= S01_AXI_awsize(2 downto 0);
  S01_AXI_1_AWVALID(0) <= S01_AXI_awvalid(0);
  S01_AXI_1_BREADY(0) <= S01_AXI_bready(0);
  S01_AXI_1_RREADY(0) <= S01_AXI_rready(0);
  S01_AXI_1_WDATA(31 downto 0) <= S01_AXI_wdata(31 downto 0);
  S01_AXI_1_WLAST(0) <= S01_AXI_wlast(0);
  S01_AXI_1_WSTRB(3 downto 0) <= S01_AXI_wstrb(3 downto 0);
  S01_AXI_1_WVALID(0) <= S01_AXI_wvalid(0);
  S01_AXI_arready(0) <= S01_AXI_1_ARREADY(0);
  S01_AXI_awready(0) <= S01_AXI_1_AWREADY(0);
  S01_AXI_bid(2 downto 0) <= S01_AXI_1_BID(2 downto 0);
  S01_AXI_bresp(1 downto 0) <= S01_AXI_1_BRESP(1 downto 0);
  S01_AXI_bvalid(0) <= S01_AXI_1_BVALID(0);
  S01_AXI_rdata(31 downto 0) <= S01_AXI_1_RDATA(31 downto 0);
  S01_AXI_rid(2 downto 0) <= S01_AXI_1_RID(2 downto 0);
  S01_AXI_rlast(0) <= S01_AXI_1_RLAST(0);
  S01_AXI_rresp(1 downto 0) <= S01_AXI_1_RRESP(1 downto 0);
  S01_AXI_rvalid(0) <= S01_AXI_1_RVALID(0);
  S01_AXI_wready(0) <= S01_AXI_1_WREADY(0);
  S02_AXI_1_ARADDR(31 downto 0) <= S02_AXI_araddr(31 downto 0);
  S02_AXI_1_ARBURST(1 downto 0) <= S02_AXI_arburst(1 downto 0);
  S02_AXI_1_ARCACHE(3 downto 0) <= S02_AXI_arcache(3 downto 0);
  S02_AXI_1_ARLEN(7 downto 0) <= S02_AXI_arlen(7 downto 0);
  S02_AXI_1_ARPROT(2 downto 0) <= S02_AXI_arprot(2 downto 0);
  S02_AXI_1_ARSIZE(2 downto 0) <= S02_AXI_arsize(2 downto 0);
  S02_AXI_1_ARVALID <= S02_AXI_arvalid;
  S02_AXI_1_AWADDR(31 downto 0) <= S02_AXI_awaddr(31 downto 0);
  S02_AXI_1_AWBURST(1 downto 0) <= S02_AXI_awburst(1 downto 0);
  S02_AXI_1_AWCACHE(3 downto 0) <= S02_AXI_awcache(3 downto 0);
  S02_AXI_1_AWLEN(7 downto 0) <= S02_AXI_awlen(7 downto 0);
  S02_AXI_1_AWPROT(2 downto 0) <= S02_AXI_awprot(2 downto 0);
  S02_AXI_1_AWSIZE(2 downto 0) <= S02_AXI_awsize(2 downto 0);
  S02_AXI_1_AWVALID <= S02_AXI_awvalid;
  S02_AXI_1_BREADY <= S02_AXI_bready;
  S02_AXI_1_RREADY <= S02_AXI_rready;
  S02_AXI_1_WDATA(31 downto 0) <= S02_AXI_wdata(31 downto 0);
  S02_AXI_1_WLAST <= S02_AXI_wlast;
  S02_AXI_1_WSTRB(3 downto 0) <= S02_AXI_wstrb(3 downto 0);
  S02_AXI_1_WVALID <= S02_AXI_wvalid;
  S02_AXI_arready <= S02_AXI_1_ARREADY;
  S02_AXI_awready <= S02_AXI_1_AWREADY;
  S02_AXI_bresp(1 downto 0) <= S02_AXI_1_BRESP(1 downto 0);
  S02_AXI_bvalid <= S02_AXI_1_BVALID;
  S02_AXI_rdata(31 downto 0) <= S02_AXI_1_RDATA(31 downto 0);
  S02_AXI_rlast <= S02_AXI_1_RLAST;
  S02_AXI_rresp(1 downto 0) <= S02_AXI_1_RRESP(1 downto 0);
  S02_AXI_rvalid <= S02_AXI_1_RVALID;
  S02_AXI_wready <= S02_AXI_1_WREADY;
  S03_AXI_1_ARADDR(31 downto 0) <= S03_AXI_araddr(31 downto 0);
  S03_AXI_1_ARBURST(1 downto 0) <= S03_AXI_arburst(1 downto 0);
  S03_AXI_1_ARCACHE(3 downto 0) <= S03_AXI_arcache(3 downto 0);
  S03_AXI_1_ARLEN(7 downto 0) <= S03_AXI_arlen(7 downto 0);
  S03_AXI_1_ARPROT(2 downto 0) <= S03_AXI_arprot(2 downto 0);
  S03_AXI_1_ARSIZE(2 downto 0) <= S03_AXI_arsize(2 downto 0);
  S03_AXI_1_ARVALID <= S03_AXI_arvalid;
  S03_AXI_1_RREADY <= S03_AXI_rready;
  S03_AXI_arready <= S03_AXI_1_ARREADY;
  S03_AXI_rdata(31 downto 0) <= S03_AXI_1_RDATA(31 downto 0);
  S03_AXI_rlast <= S03_AXI_1_RLAST;
  S03_AXI_rresp(1 downto 0) <= S03_AXI_1_RRESP(1 downto 0);
  S03_AXI_rvalid <= S03_AXI_1_RVALID;
  S04_AXI_1_AWADDR(31 downto 0) <= S04_AXI_awaddr(31 downto 0);
  S04_AXI_1_AWBURST(1 downto 0) <= S04_AXI_awburst(1 downto 0);
  S04_AXI_1_AWCACHE(3 downto 0) <= S04_AXI_awcache(3 downto 0);
  S04_AXI_1_AWLEN(7 downto 0) <= S04_AXI_awlen(7 downto 0);
  S04_AXI_1_AWPROT(2 downto 0) <= S04_AXI_awprot(2 downto 0);
  S04_AXI_1_AWSIZE(2 downto 0) <= S04_AXI_awsize(2 downto 0);
  S04_AXI_1_AWVALID <= S04_AXI_awvalid;
  S04_AXI_1_BREADY <= S04_AXI_bready;
  S04_AXI_1_WDATA(31 downto 0) <= S04_AXI_wdata(31 downto 0);
  S04_AXI_1_WLAST <= S04_AXI_wlast;
  S04_AXI_1_WSTRB(3 downto 0) <= S04_AXI_wstrb(3 downto 0);
  S04_AXI_1_WVALID <= S04_AXI_wvalid;
  S04_AXI_awready <= S04_AXI_1_AWREADY;
  S04_AXI_bresp(1 downto 0) <= S04_AXI_1_BRESP(1 downto 0);
  S04_AXI_bvalid <= S04_AXI_1_BVALID;
  S04_AXI_wready <= S04_AXI_1_WREADY;
  SYS_CLK_1 <= SYS_CLK;
  SYS_RST_N_1 <= SYS_RST_N;
  bus_struct_reset(0) <= rst_mig_7series_0_100M_0_bus_struct_reset(0);
  device_temp_i_1(11 downto 0) <= device_temp_i(11 downto 0);
  mb_debug_sys_rst_1 <= mb_debug_sys_rst;
  mb_reset <= rst_mig_7series_0_100M_0_mb_reset;
  peripheral_aresetn(0) <= rst_mig_7series_0_100M_0_peripheral_aresetn(0);
SDRAM: component Mars_AX3_SDRAM_0
     port map (
      aresetn => rst_mig_7series_0_100M_1_peripheral_aresetn(0),
      clk_ref_i => SDRAM_ui_addn_clk_2,
      ddr3_addr(13 downto 0) => Conn1_ADDR(13 downto 0),
      ddr3_ba(2 downto 0) => Conn1_BA(2 downto 0),
      ddr3_cas_n => Conn1_CAS_N,
      ddr3_ck_n(0) => Conn1_CK_N(0),
      ddr3_ck_p(0) => Conn1_CK_P(0),
      ddr3_cke(0) => Conn1_CKE(0),
      ddr3_dm(1 downto 0) => Conn1_DM(1 downto 0),
      ddr3_dq(15 downto 0) => DDR3_dq(15 downto 0),
      ddr3_dqs_n(1 downto 0) => DDR3_dqs_n(1 downto 0),
      ddr3_dqs_p(1 downto 0) => DDR3_dqs_p(1 downto 0),
      ddr3_odt(0) => Conn1_ODT(0),
      ddr3_ras_n => Conn1_RAS_N,
      ddr3_reset_n => Conn1_RESET_N,
      ddr3_we_n => Conn1_WE_N,
      device_temp_i(11 downto 0) => device_temp_i_1(11 downto 0),
      init_calib_complete => NLW_SDRAM_init_calib_complete_UNCONNECTED,
      mmcm_locked => SDRAM_mmcm_locked,
      s_axi_araddr(27 downto 0) => interconnect_DDR_M00_AXI_ARADDR(27 downto 0),
      s_axi_arburst(1 downto 0) => interconnect_DDR_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => interconnect_DDR_M00_AXI_ARCACHE(3 downto 0),
      s_axi_arid(2 downto 0) => interconnect_DDR_M00_AXI_ARID(2 downto 0),
      s_axi_arlen(7 downto 0) => interconnect_DDR_M00_AXI_ARLEN(7 downto 0),
      s_axi_arlock => interconnect_DDR_M00_AXI_ARLOCK(0),
      s_axi_arprot(2 downto 0) => interconnect_DDR_M00_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => interconnect_DDR_M00_AXI_ARQOS(3 downto 0),
      s_axi_arready => interconnect_DDR_M00_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => interconnect_DDR_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => interconnect_DDR_M00_AXI_ARVALID,
      s_axi_awaddr(27 downto 0) => interconnect_DDR_M00_AXI_AWADDR(27 downto 0),
      s_axi_awburst(1 downto 0) => interconnect_DDR_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => interconnect_DDR_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awid(2 downto 0) => interconnect_DDR_M00_AXI_AWID(2 downto 0),
      s_axi_awlen(7 downto 0) => interconnect_DDR_M00_AXI_AWLEN(7 downto 0),
      s_axi_awlock => interconnect_DDR_M00_AXI_AWLOCK(0),
      s_axi_awprot(2 downto 0) => interconnect_DDR_M00_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => interconnect_DDR_M00_AXI_AWQOS(3 downto 0),
      s_axi_awready => interconnect_DDR_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => interconnect_DDR_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => interconnect_DDR_M00_AXI_AWVALID,
      s_axi_bid(2 downto 0) => interconnect_DDR_M00_AXI_BID(2 downto 0),
      s_axi_bready => interconnect_DDR_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => interconnect_DDR_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => interconnect_DDR_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => interconnect_DDR_M00_AXI_RDATA(31 downto 0),
      s_axi_rid(2 downto 0) => interconnect_DDR_M00_AXI_RID(2 downto 0),
      s_axi_rlast => interconnect_DDR_M00_AXI_RLAST,
      s_axi_rready => interconnect_DDR_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => interconnect_DDR_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => interconnect_DDR_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => interconnect_DDR_M00_AXI_WDATA(31 downto 0),
      s_axi_wlast => interconnect_DDR_M00_AXI_WLAST,
      s_axi_wready => interconnect_DDR_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => interconnect_DDR_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => interconnect_DDR_M00_AXI_WVALID,
      sys_clk_i => SYS_CLK_1,
      sys_rst => SYS_RST_N_1,
      ui_addn_clk_0 => SDRAM_ui_addn_clk_0,
      ui_addn_clk_1 => SDRAM_ui_addn_clk_1,
      ui_addn_clk_2 => SDRAM_ui_addn_clk_2,
      ui_clk => SDRAM_ui_clk,
      ui_clk_sync_rst => SDRAM_ui_clk_sync_rst
    );
interconnect_DDR: entity work.Mars_AX3_interconnect_DDR_0
     port map (
      ACLK => SDRAM_ui_addn_clk_1,
      ARESETN => rst_mig_7series_0_100M_1_peripheral_aresetn(0),
      M00_ACLK => SDRAM_ui_clk,
      M00_ARESETN => rst_mig_7series_0_100M_1_interconnect_aresetn(0),
      M00_AXI_araddr(27 downto 0) => interconnect_DDR_M00_AXI_ARADDR(27 downto 0),
      M00_AXI_arburst(1 downto 0) => interconnect_DDR_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => interconnect_DDR_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(2 downto 0) => interconnect_DDR_M00_AXI_ARID(2 downto 0),
      M00_AXI_arlen(7 downto 0) => interconnect_DDR_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => interconnect_DDR_M00_AXI_ARLOCK(0),
      M00_AXI_arprot(2 downto 0) => interconnect_DDR_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => interconnect_DDR_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => interconnect_DDR_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => interconnect_DDR_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => interconnect_DDR_M00_AXI_ARVALID,
      M00_AXI_awaddr(27 downto 0) => interconnect_DDR_M00_AXI_AWADDR(27 downto 0),
      M00_AXI_awburst(1 downto 0) => interconnect_DDR_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => interconnect_DDR_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(2 downto 0) => interconnect_DDR_M00_AXI_AWID(2 downto 0),
      M00_AXI_awlen(7 downto 0) => interconnect_DDR_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => interconnect_DDR_M00_AXI_AWLOCK(0),
      M00_AXI_awprot(2 downto 0) => interconnect_DDR_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => interconnect_DDR_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => interconnect_DDR_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => interconnect_DDR_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => interconnect_DDR_M00_AXI_AWVALID,
      M00_AXI_bid(2 downto 0) => interconnect_DDR_M00_AXI_BID(2 downto 0),
      M00_AXI_bready => interconnect_DDR_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => interconnect_DDR_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => interconnect_DDR_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => interconnect_DDR_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rid(2 downto 0) => interconnect_DDR_M00_AXI_RID(2 downto 0),
      M00_AXI_rlast => interconnect_DDR_M00_AXI_RLAST,
      M00_AXI_rready => interconnect_DDR_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => interconnect_DDR_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => interconnect_DDR_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => interconnect_DDR_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wlast => interconnect_DDR_M00_AXI_WLAST,
      M00_AXI_wready => interconnect_DDR_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => interconnect_DDR_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => interconnect_DDR_M00_AXI_WVALID,
      S00_ACLK => SDRAM_ui_addn_clk_1,
      S00_ARESETN => rst_mig_7series_0_100M_1_interconnect_aresetn(0),
      S00_AXI_araddr(31 downto 0) => S00_AXI_1_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_1_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_1_ARCACHE(3 downto 0),
      S00_AXI_arid(0) => S00_AXI_1_ARID(0),
      S00_AXI_arlen(7 downto 0) => S00_AXI_1_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => S00_AXI_1_ARLOCK(0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_1_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S00_AXI_1_ARQOS(3 downto 0),
      S00_AXI_arready(0) => S00_AXI_1_ARREADY(0),
      S00_AXI_arsize(2 downto 0) => S00_AXI_1_ARSIZE(2 downto 0),
      S00_AXI_arvalid(0) => S00_AXI_1_ARVALID(0),
      S00_AXI_awaddr(31 downto 0) => S00_AXI_1_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_1_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_1_AWCACHE(3 downto 0),
      S00_AXI_awid(0) => S00_AXI_1_AWID(0),
      S00_AXI_awlen(7 downto 0) => S00_AXI_1_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => S00_AXI_1_AWLOCK(0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S00_AXI_1_AWQOS(3 downto 0),
      S00_AXI_awready(0) => S00_AXI_1_AWREADY(0),
      S00_AXI_awsize(2 downto 0) => S00_AXI_1_AWSIZE(2 downto 0),
      S00_AXI_awvalid(0) => S00_AXI_1_AWVALID(0),
      S00_AXI_bid(2 downto 0) => S00_AXI_1_BID(2 downto 0),
      S00_AXI_bready(0) => S00_AXI_1_BREADY(0),
      S00_AXI_bresp(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => S00_AXI_1_BVALID(0),
      S00_AXI_rdata(31 downto 0) => S00_AXI_1_RDATA(31 downto 0),
      S00_AXI_rid(2 downto 0) => S00_AXI_1_RID(2 downto 0),
      S00_AXI_rlast(0) => S00_AXI_1_RLAST(0),
      S00_AXI_rready(0) => S00_AXI_1_RREADY(0),
      S00_AXI_rresp(1 downto 0) => S00_AXI_1_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => S00_AXI_1_RVALID(0),
      S00_AXI_wdata(31 downto 0) => S00_AXI_1_WDATA(31 downto 0),
      S00_AXI_wlast(0) => S00_AXI_1_WLAST(0),
      S00_AXI_wready(0) => S00_AXI_1_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => S00_AXI_1_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => S00_AXI_1_WVALID(0),
      S01_ACLK => SDRAM_ui_addn_clk_1,
      S01_ARESETN => rst_mig_7series_0_100M_1_interconnect_aresetn(0),
      S01_AXI_araddr(31 downto 0) => S01_AXI_1_ARADDR(31 downto 0),
      S01_AXI_arburst(1 downto 0) => S01_AXI_1_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => S01_AXI_1_ARCACHE(3 downto 0),
      S01_AXI_arid(0) => S01_AXI_1_ARID(0),
      S01_AXI_arlen(7 downto 0) => S01_AXI_1_ARLEN(7 downto 0),
      S01_AXI_arlock(0) => S01_AXI_1_ARLOCK(0),
      S01_AXI_arprot(2 downto 0) => S01_AXI_1_ARPROT(2 downto 0),
      S01_AXI_arqos(3 downto 0) => S01_AXI_1_ARQOS(3 downto 0),
      S01_AXI_arready(0) => S01_AXI_1_ARREADY(0),
      S01_AXI_arsize(2 downto 0) => S01_AXI_1_ARSIZE(2 downto 0),
      S01_AXI_arvalid(0) => S01_AXI_1_ARVALID(0),
      S01_AXI_awaddr(31 downto 0) => S01_AXI_1_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => S01_AXI_1_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => S01_AXI_1_AWCACHE(3 downto 0),
      S01_AXI_awid(0) => S01_AXI_1_AWID(0),
      S01_AXI_awlen(7 downto 0) => S01_AXI_1_AWLEN(7 downto 0),
      S01_AXI_awlock(0) => S01_AXI_1_AWLOCK(0),
      S01_AXI_awprot(2 downto 0) => S01_AXI_1_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => S01_AXI_1_AWQOS(3 downto 0),
      S01_AXI_awready(0) => S01_AXI_1_AWREADY(0),
      S01_AXI_awsize(2 downto 0) => S01_AXI_1_AWSIZE(2 downto 0),
      S01_AXI_awvalid(0) => S01_AXI_1_AWVALID(0),
      S01_AXI_bid(2 downto 0) => S01_AXI_1_BID(2 downto 0),
      S01_AXI_bready(0) => S01_AXI_1_BREADY(0),
      S01_AXI_bresp(1 downto 0) => S01_AXI_1_BRESP(1 downto 0),
      S01_AXI_bvalid(0) => S01_AXI_1_BVALID(0),
      S01_AXI_rdata(31 downto 0) => S01_AXI_1_RDATA(31 downto 0),
      S01_AXI_rid(2 downto 0) => S01_AXI_1_RID(2 downto 0),
      S01_AXI_rlast(0) => S01_AXI_1_RLAST(0),
      S01_AXI_rready(0) => S01_AXI_1_RREADY(0),
      S01_AXI_rresp(1 downto 0) => S01_AXI_1_RRESP(1 downto 0),
      S01_AXI_rvalid(0) => S01_AXI_1_RVALID(0),
      S01_AXI_wdata(31 downto 0) => S01_AXI_1_WDATA(31 downto 0),
      S01_AXI_wlast(0) => S01_AXI_1_WLAST(0),
      S01_AXI_wready(0) => S01_AXI_1_WREADY(0),
      S01_AXI_wstrb(3 downto 0) => S01_AXI_1_WSTRB(3 downto 0),
      S01_AXI_wvalid(0) => S01_AXI_1_WVALID(0),
      S02_ACLK => SDRAM_ui_addn_clk_1,
      S02_ARESETN => rst_mig_7series_0_100M_1_interconnect_aresetn(0),
      S02_AXI_araddr(31 downto 0) => S02_AXI_1_ARADDR(31 downto 0),
      S02_AXI_arburst(1 downto 0) => S02_AXI_1_ARBURST(1 downto 0),
      S02_AXI_arcache(3 downto 0) => S02_AXI_1_ARCACHE(3 downto 0),
      S02_AXI_arlen(7 downto 0) => S02_AXI_1_ARLEN(7 downto 0),
      S02_AXI_arprot(2 downto 0) => S02_AXI_1_ARPROT(2 downto 0),
      S02_AXI_arready => S02_AXI_1_ARREADY,
      S02_AXI_arsize(2 downto 0) => S02_AXI_1_ARSIZE(2 downto 0),
      S02_AXI_arvalid => S02_AXI_1_ARVALID,
      S02_AXI_awaddr(31 downto 0) => S02_AXI_1_AWADDR(31 downto 0),
      S02_AXI_awburst(1 downto 0) => S02_AXI_1_AWBURST(1 downto 0),
      S02_AXI_awcache(3 downto 0) => S02_AXI_1_AWCACHE(3 downto 0),
      S02_AXI_awlen(7 downto 0) => S02_AXI_1_AWLEN(7 downto 0),
      S02_AXI_awprot(2 downto 0) => S02_AXI_1_AWPROT(2 downto 0),
      S02_AXI_awready => S02_AXI_1_AWREADY,
      S02_AXI_awsize(2 downto 0) => S02_AXI_1_AWSIZE(2 downto 0),
      S02_AXI_awvalid => S02_AXI_1_AWVALID,
      S02_AXI_bready => S02_AXI_1_BREADY,
      S02_AXI_bresp(1 downto 0) => S02_AXI_1_BRESP(1 downto 0),
      S02_AXI_bvalid => S02_AXI_1_BVALID,
      S02_AXI_rdata(31 downto 0) => S02_AXI_1_RDATA(31 downto 0),
      S02_AXI_rlast => S02_AXI_1_RLAST,
      S02_AXI_rready => S02_AXI_1_RREADY,
      S02_AXI_rresp(1 downto 0) => S02_AXI_1_RRESP(1 downto 0),
      S02_AXI_rvalid => S02_AXI_1_RVALID,
      S02_AXI_wdata(31 downto 0) => S02_AXI_1_WDATA(31 downto 0),
      S02_AXI_wlast => S02_AXI_1_WLAST,
      S02_AXI_wready => S02_AXI_1_WREADY,
      S02_AXI_wstrb(3 downto 0) => S02_AXI_1_WSTRB(3 downto 0),
      S02_AXI_wvalid => S02_AXI_1_WVALID,
      S03_ACLK => SDRAM_ui_addn_clk_1,
      S03_ARESETN => rst_mig_7series_0_100M_1_interconnect_aresetn(0),
      S03_AXI_araddr(31 downto 0) => S03_AXI_1_ARADDR(31 downto 0),
      S03_AXI_arburst(1 downto 0) => S03_AXI_1_ARBURST(1 downto 0),
      S03_AXI_arcache(3 downto 0) => S03_AXI_1_ARCACHE(3 downto 0),
      S03_AXI_arlen(7 downto 0) => S03_AXI_1_ARLEN(7 downto 0),
      S03_AXI_arprot(2 downto 0) => S03_AXI_1_ARPROT(2 downto 0),
      S03_AXI_arready => S03_AXI_1_ARREADY,
      S03_AXI_arsize(2 downto 0) => S03_AXI_1_ARSIZE(2 downto 0),
      S03_AXI_arvalid => S03_AXI_1_ARVALID,
      S03_AXI_rdata(31 downto 0) => S03_AXI_1_RDATA(31 downto 0),
      S03_AXI_rlast => S03_AXI_1_RLAST,
      S03_AXI_rready => S03_AXI_1_RREADY,
      S03_AXI_rresp(1 downto 0) => S03_AXI_1_RRESP(1 downto 0),
      S03_AXI_rvalid => S03_AXI_1_RVALID,
      S04_ACLK => SDRAM_ui_addn_clk_1,
      S04_ARESETN => rst_mig_7series_0_100M_1_interconnect_aresetn(0),
      S04_AXI_awaddr(31 downto 0) => S04_AXI_1_AWADDR(31 downto 0),
      S04_AXI_awburst(1 downto 0) => S04_AXI_1_AWBURST(1 downto 0),
      S04_AXI_awcache(3 downto 0) => S04_AXI_1_AWCACHE(3 downto 0),
      S04_AXI_awlen(7 downto 0) => S04_AXI_1_AWLEN(7 downto 0),
      S04_AXI_awprot(2 downto 0) => S04_AXI_1_AWPROT(2 downto 0),
      S04_AXI_awready => S04_AXI_1_AWREADY,
      S04_AXI_awsize(2 downto 0) => S04_AXI_1_AWSIZE(2 downto 0),
      S04_AXI_awvalid => S04_AXI_1_AWVALID,
      S04_AXI_bready => S04_AXI_1_BREADY,
      S04_AXI_bresp(1 downto 0) => S04_AXI_1_BRESP(1 downto 0),
      S04_AXI_bvalid => S04_AXI_1_BVALID,
      S04_AXI_wdata(31 downto 0) => S04_AXI_1_WDATA(31 downto 0),
      S04_AXI_wlast => S04_AXI_1_WLAST,
      S04_AXI_wready => S04_AXI_1_WREADY,
      S04_AXI_wstrb(3 downto 0) => S04_AXI_1_WSTRB(3 downto 0),
      S04_AXI_wvalid => S04_AXI_1_WVALID
    );
rst_mig_7series_0_100M_0: component Mars_AX3_rst_mig_7series_0_100M_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => rst_mig_7series_0_100M_0_bus_struct_reset(0),
      dcm_locked => SDRAM_mmcm_locked,
      ext_reset_in => SDRAM_ui_clk_sync_rst,
      interconnect_aresetn(0) => NLW_rst_mig_7series_0_100M_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => mb_debug_sys_rst_1,
      mb_reset => rst_mig_7series_0_100M_0_mb_reset,
      peripheral_aresetn(0) => rst_mig_7series_0_100M_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_mig_7series_0_100M_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => SDRAM_ui_addn_clk_1
    );
rst_mig_7series_0_100M_1: component Mars_AX3_rst_mig_7series_0_100M_1_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_mig_7series_0_100M_1_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => SDRAM_mmcm_locked,
      ext_reset_in => SDRAM_ui_clk_sync_rst,
      interconnect_aresetn(0) => rst_mig_7series_0_100M_1_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_mig_7series_0_100M_1_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_mig_7series_0_100M_1_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_mig_7series_0_100M_1_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => SDRAM_ui_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mars_AX3 is
  port (
    CLK100 : out STD_LOGIC;
    CLK200 : out STD_LOGIC;
    CLK50 : out STD_LOGIC;
    DDR3_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    DDR3_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR3_cas_n : out STD_LOGIC;
    DDR3_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR3_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR3_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR3_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR3_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_ras_n : out STD_LOGIC;
    DDR3_reset_n : out STD_LOGIC;
    DDR3_we_n : out STD_LOGIC;
    ETH_RST_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    IIC_scl_i : in STD_LOGIC;
    IIC_scl_o : out STD_LOGIC;
    IIC_scl_t : out STD_LOGIC;
    IIC_sda_i : in STD_LOGIC;
    IIC_sda_o : out STD_LOGIC;
    IIC_sda_t : out STD_LOGIC;
    LED_N : out STD_LOGIC_VECTOR ( 3 downto 0 );
    MDIO_mdc : out STD_LOGIC;
    MDIO_mdio_i : in STD_LOGIC;
    MDIO_mdio_o : out STD_LOGIC;
    MDIO_mdio_t : out STD_LOGIC;
    QSPI_io0_i : in STD_LOGIC;
    QSPI_io0_o : out STD_LOGIC;
    QSPI_io0_t : out STD_LOGIC;
    QSPI_io1_i : in STD_LOGIC;
    QSPI_io1_o : out STD_LOGIC;
    QSPI_io1_t : out STD_LOGIC;
    QSPI_io2_i : in STD_LOGIC;
    QSPI_io2_o : out STD_LOGIC;
    QSPI_io2_t : out STD_LOGIC;
    QSPI_io3_i : in STD_LOGIC;
    QSPI_io3_o : out STD_LOGIC;
    QSPI_io3_t : out STD_LOGIC;
    QSPI_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    QSPI_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    QSPI_ss_t : out STD_LOGIC;
    RGMII_rd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RGMII_rx_ctl : in STD_LOGIC;
    RGMII_rxc : in STD_LOGIC;
    RGMII_td : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RGMII_tx_ctl : out STD_LOGIC;
    RGMII_txc : out STD_LOGIC;
    SYS_CLK : in STD_LOGIC;
    SYS_RST_N : in STD_LOGIC;
    UART_rxd : in STD_LOGIC;
    UART_txd : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Mars_AX3 : entity is "Mars_AX3,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Mars_AX3,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=49,numReposBlks=25,numNonXlnxBlks=0,numHierBlks=24,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Mars_AX3 : entity is "Mars_AX3.hwdef";
end Mars_AX3;

architecture STRUCTURE of Mars_AX3 is
  component Mars_AX3_axi_timer_0 is
  port (
    capturetrig0 : in STD_LOGIC;
    capturetrig1 : in STD_LOGIC;
    generateout0 : out STD_LOGIC;
    generateout1 : out STD_LOGIC;
    pwm0 : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    freeze : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  end component Mars_AX3_axi_timer_0;
  component Mars_AX3_xadc_wiz_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    vp_in : in STD_LOGIC;
    vn_in : in STD_LOGIC;
    user_temp_alarm_out : out STD_LOGIC;
    vccint_alarm_out : out STD_LOGIC;
    vccaux_alarm_out : out STD_LOGIC;
    ot_out : out STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    eoc_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    busy_out : out STD_LOGIC;
    temp_out : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component Mars_AX3_xadc_wiz_0_0;
  component Mars_AX3_microblaze_xlconcat_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component Mars_AX3_microblaze_xlconcat_0;
  component Mars_AX3_IIC_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Mars_AX3_IIC_0;
  component Mars_AX3_LEDs_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component Mars_AX3_LEDs_0;
  component Mars_AX3_QSPI_0 is
  port (
    ext_spi_clk : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    s_axi4_aresetn : in STD_LOGIC;
    s_axi4_awaddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi4_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_awlock : in STD_LOGIC;
    s_axi4_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awvalid : in STD_LOGIC;
    s_axi4_awready : out STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_wlast : in STD_LOGIC;
    s_axi4_wvalid : in STD_LOGIC;
    s_axi4_wready : out STD_LOGIC;
    s_axi4_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_bvalid : out STD_LOGIC;
    s_axi4_bready : in STD_LOGIC;
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_arlock : in STD_LOGIC;
    s_axi4_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arvalid : in STD_LOGIC;
    s_axi4_arready : out STD_LOGIC;
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_rlast : out STD_LOGIC;
    s_axi4_rvalid : out STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    io0_i : in STD_LOGIC;
    io0_o : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_i : in STD_LOGIC;
    io1_o : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    io2_i : in STD_LOGIC;
    io2_o : out STD_LOGIC;
    io2_t : out STD_LOGIC;
    io3_i : in STD_LOGIC;
    io3_o : out STD_LOGIC;
    io3_t : out STD_LOGIC;
    ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_t : out STD_LOGIC;
    cfgclk : out STD_LOGIC;
    cfgmclk : out STD_LOGIC;
    eos : out STD_LOGIC;
    preq : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC
  );
  end component Mars_AX3_QSPI_0;
  component Mars_AX3_UART_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC
  );
  end component Mars_AX3_UART_0;
  signal CPU_Interrupt : STD_LOGIC;
  signal CPU_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M02_AXI_ARREADY : STD_LOGIC;
  signal CPU_M02_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M02_AXI_AWREADY : STD_LOGIC;
  signal CPU_M02_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M02_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CPU_M02_AXI_BVALID : STD_LOGIC;
  signal CPU_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M02_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CPU_M02_AXI_RVALID : STD_LOGIC;
  signal CPU_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M02_AXI_WREADY : STD_LOGIC;
  signal CPU_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CPU_M02_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M03_AXI_ARREADY : STD_LOGIC;
  signal CPU_M03_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M03_AXI_AWREADY : STD_LOGIC;
  signal CPU_M03_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M03_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CPU_M03_AXI_BVALID : STD_LOGIC;
  signal CPU_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M03_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CPU_M03_AXI_RVALID : STD_LOGIC;
  signal CPU_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M03_AXI_WREADY : STD_LOGIC;
  signal CPU_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CPU_M03_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M04_AXI_ARREADY : STD_LOGIC;
  signal CPU_M04_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M04_AXI_AWREADY : STD_LOGIC;
  signal CPU_M04_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M04_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CPU_M04_AXI_BVALID : STD_LOGIC;
  signal CPU_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M04_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CPU_M04_AXI_RVALID : STD_LOGIC;
  signal CPU_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M04_AXI_WREADY : STD_LOGIC;
  signal CPU_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CPU_M04_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M05_AXI_ARREADY : STD_LOGIC;
  signal CPU_M05_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M05_AXI_AWREADY : STD_LOGIC;
  signal CPU_M05_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M05_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CPU_M05_AXI_BVALID : STD_LOGIC;
  signal CPU_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M05_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CPU_M05_AXI_RVALID : STD_LOGIC;
  signal CPU_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M05_AXI_WREADY : STD_LOGIC;
  signal CPU_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CPU_M05_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal CPU_M06_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CPU_M06_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CPU_M06_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal CPU_M06_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M06_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CPU_M06_AXI_ARREADY : STD_LOGIC;
  signal CPU_M06_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CPU_M06_AXI_ARVALID : STD_LOGIC;
  signal CPU_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal CPU_M06_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CPU_M06_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CPU_M06_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal CPU_M06_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M06_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CPU_M06_AXI_AWREADY : STD_LOGIC;
  signal CPU_M06_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CPU_M06_AXI_AWVALID : STD_LOGIC;
  signal CPU_M06_AXI_BREADY : STD_LOGIC;
  signal CPU_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CPU_M06_AXI_BVALID : STD_LOGIC;
  signal CPU_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M06_AXI_RLAST : STD_LOGIC;
  signal CPU_M06_AXI_RREADY : STD_LOGIC;
  signal CPU_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CPU_M06_AXI_RVALID : STD_LOGIC;
  signal CPU_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M06_AXI_WLAST : STD_LOGIC;
  signal CPU_M06_AXI_WREADY : STD_LOGIC;
  signal CPU_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CPU_M06_AXI_WVALID : STD_LOGIC;
  signal CPU_M07_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M07_AXI_ARREADY : STD_LOGIC;
  signal CPU_M07_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M07_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M07_AXI_AWREADY : STD_LOGIC;
  signal CPU_M07_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M07_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M07_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CPU_M07_AXI_BVALID : STD_LOGIC;
  signal CPU_M07_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M07_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M07_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CPU_M07_AXI_RVALID : STD_LOGIC;
  signal CPU_M07_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M07_AXI_WREADY : STD_LOGIC;
  signal CPU_M07_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CPU_M07_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_DC_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M_AXI_DC_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CPU_M_AXI_DC_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CPU_M_AXI_DC_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_DC_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal CPU_M_AXI_DC_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_DC_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CPU_M_AXI_DC_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CPU_M_AXI_DC_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_DC_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CPU_M_AXI_DC_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_DC_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M_AXI_DC_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CPU_M_AXI_DC_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CPU_M_AXI_DC_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_DC_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal CPU_M_AXI_DC_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_DC_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CPU_M_AXI_DC_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CPU_M_AXI_DC_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_DC_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CPU_M_AXI_DC_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_DC_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CPU_M_AXI_DC_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_DC_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CPU_M_AXI_DC_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_DC_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M_AXI_DC_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CPU_M_AXI_DC_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_DC_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_DC_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CPU_M_AXI_DC_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_DC_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M_AXI_DC_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_DC_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_DC_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CPU_M_AXI_DC_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_IC_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M_AXI_IC_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CPU_M_AXI_IC_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CPU_M_AXI_IC_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_IC_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal CPU_M_AXI_IC_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_IC_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CPU_M_AXI_IC_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CPU_M_AXI_IC_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_IC_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CPU_M_AXI_IC_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_IC_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M_AXI_IC_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CPU_M_AXI_IC_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CPU_M_AXI_IC_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_IC_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal CPU_M_AXI_IC_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_IC_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CPU_M_AXI_IC_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CPU_M_AXI_IC_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_IC_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CPU_M_AXI_IC_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_IC_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CPU_M_AXI_IC_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_IC_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CPU_M_AXI_IC_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_IC_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M_AXI_IC_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CPU_M_AXI_IC_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_IC_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_IC_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CPU_M_AXI_IC_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_IC_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CPU_M_AXI_IC_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_IC_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPU_M_AXI_IC_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CPU_M_AXI_IC_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Ethernet_ETH_RST_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Ethernet_MDIO_MDC : STD_LOGIC;
  signal Ethernet_MDIO_MDIO_I : STD_LOGIC;
  signal Ethernet_MDIO_MDIO_O : STD_LOGIC;
  signal Ethernet_MDIO_MDIO_T : STD_LOGIC;
  signal Ethernet_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Ethernet_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Ethernet_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Ethernet_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Ethernet_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Ethernet_M_AXI_MM2S_ARREADY : STD_LOGIC;
  signal Ethernet_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Ethernet_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal Ethernet_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Ethernet_M_AXI_MM2S_RLAST : STD_LOGIC;
  signal Ethernet_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal Ethernet_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Ethernet_M_AXI_MM2S_RVALID : STD_LOGIC;
  signal Ethernet_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Ethernet_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Ethernet_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Ethernet_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Ethernet_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Ethernet_M_AXI_S2MM_AWREADY : STD_LOGIC;
  signal Ethernet_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Ethernet_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal Ethernet_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal Ethernet_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Ethernet_M_AXI_S2MM_BVALID : STD_LOGIC;
  signal Ethernet_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Ethernet_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal Ethernet_M_AXI_S2MM_WREADY : STD_LOGIC;
  signal Ethernet_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Ethernet_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal Ethernet_M_AXI_SG_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Ethernet_M_AXI_SG_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Ethernet_M_AXI_SG_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Ethernet_M_AXI_SG_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Ethernet_M_AXI_SG_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Ethernet_M_AXI_SG_ARREADY : STD_LOGIC;
  signal Ethernet_M_AXI_SG_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Ethernet_M_AXI_SG_ARVALID : STD_LOGIC;
  signal Ethernet_M_AXI_SG_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Ethernet_M_AXI_SG_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Ethernet_M_AXI_SG_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Ethernet_M_AXI_SG_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Ethernet_M_AXI_SG_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Ethernet_M_AXI_SG_AWREADY : STD_LOGIC;
  signal Ethernet_M_AXI_SG_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Ethernet_M_AXI_SG_AWVALID : STD_LOGIC;
  signal Ethernet_M_AXI_SG_BREADY : STD_LOGIC;
  signal Ethernet_M_AXI_SG_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Ethernet_M_AXI_SG_BVALID : STD_LOGIC;
  signal Ethernet_M_AXI_SG_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Ethernet_M_AXI_SG_RLAST : STD_LOGIC;
  signal Ethernet_M_AXI_SG_RREADY : STD_LOGIC;
  signal Ethernet_M_AXI_SG_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Ethernet_M_AXI_SG_RVALID : STD_LOGIC;
  signal Ethernet_M_AXI_SG_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Ethernet_M_AXI_SG_WLAST : STD_LOGIC;
  signal Ethernet_M_AXI_SG_WREADY : STD_LOGIC;
  signal Ethernet_M_AXI_SG_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Ethernet_M_AXI_SG_WVALID : STD_LOGIC;
  signal Ethernet_RGMII_RD : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Ethernet_RGMII_RXC : STD_LOGIC;
  signal Ethernet_RGMII_RX_CTL : STD_LOGIC;
  signal Ethernet_RGMII_TD : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Ethernet_RGMII_TXC : STD_LOGIC;
  signal Ethernet_RGMII_TX_CTL : STD_LOGIC;
  signal Ethernet_interrupt : STD_LOGIC;
  signal Ethernet_mac_irq : STD_LOGIC;
  signal Ethernet_mm2s_introut : STD_LOGIC;
  signal Ethernet_s2mm_introut : STD_LOGIC;
  signal IIC_IIC_SCL_I : STD_LOGIC;
  signal IIC_IIC_SCL_O : STD_LOGIC;
  signal IIC_IIC_SCL_T : STD_LOGIC;
  signal IIC_IIC_SDA_I : STD_LOGIC;
  signal IIC_IIC_SDA_O : STD_LOGIC;
  signal IIC_IIC_SDA_T : STD_LOGIC;
  signal IIC_iic2intc_irpt : STD_LOGIC;
  signal LEDs_gpio_io_o : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Memory_CLK100 : STD_LOGIC;
  signal Memory_CLK200 : STD_LOGIC;
  signal Memory_CLK50 : STD_LOGIC;
  signal Memory_DDR3_ADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal Memory_DDR3_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Memory_DDR3_CAS_N : STD_LOGIC;
  signal Memory_DDR3_CKE : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Memory_DDR3_CK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Memory_DDR3_CK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Memory_DDR3_DM : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Memory_DDR3_DQ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Memory_DDR3_DQS_N : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Memory_DDR3_DQS_P : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Memory_DDR3_ODT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Memory_DDR3_RAS_N : STD_LOGIC;
  signal Memory_DDR3_RESET_N : STD_LOGIC;
  signal Memory_DDR3_WE_N : STD_LOGIC;
  signal Memory_bus_struct_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Memory_mb_reset : STD_LOGIC;
  signal QSPI_SPI_0_IO0_I : STD_LOGIC;
  signal QSPI_SPI_0_IO0_O : STD_LOGIC;
  signal QSPI_SPI_0_IO0_T : STD_LOGIC;
  signal QSPI_SPI_0_IO1_I : STD_LOGIC;
  signal QSPI_SPI_0_IO1_O : STD_LOGIC;
  signal QSPI_SPI_0_IO1_T : STD_LOGIC;
  signal QSPI_SPI_0_IO2_I : STD_LOGIC;
  signal QSPI_SPI_0_IO2_O : STD_LOGIC;
  signal QSPI_SPI_0_IO2_T : STD_LOGIC;
  signal QSPI_SPI_0_IO3_I : STD_LOGIC;
  signal QSPI_SPI_0_IO3_O : STD_LOGIC;
  signal QSPI_SPI_0_IO3_T : STD_LOGIC;
  signal QSPI_SPI_0_SS_I : STD_LOGIC_VECTOR ( 0 to 0 );
  signal QSPI_SPI_0_SS_O : STD_LOGIC_VECTOR ( 0 to 0 );
  signal QSPI_SPI_0_SS_T : STD_LOGIC;
  signal QSPI_ip2intc_irpt : STD_LOGIC;
  signal SYS_CLK_1 : STD_LOGIC;
  signal SYS_RST_N_1 : STD_LOGIC;
  signal S_AXI_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_LITE_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_LITE_1_ARREADY : STD_LOGIC;
  signal S_AXI_LITE_1_ARVALID : STD_LOGIC;
  signal S_AXI_LITE_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_LITE_1_AWREADY : STD_LOGIC;
  signal S_AXI_LITE_1_AWVALID : STD_LOGIC;
  signal S_AXI_LITE_1_BREADY : STD_LOGIC;
  signal S_AXI_LITE_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_LITE_1_BVALID : STD_LOGIC;
  signal S_AXI_LITE_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_LITE_1_RREADY : STD_LOGIC;
  signal S_AXI_LITE_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_LITE_1_RVALID : STD_LOGIC;
  signal S_AXI_LITE_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_LITE_1_WREADY : STD_LOGIC;
  signal S_AXI_LITE_1_WVALID : STD_LOGIC;
  signal UART_UART_RxD : STD_LOGIC;
  signal UART_UART_TxD : STD_LOGIC;
  signal UART_interrupt : STD_LOGIC;
  signal axi_timer_interrupt : STD_LOGIC;
  signal mb_debug_sys_rst_1 : STD_LOGIC;
  signal microblaze_xlconcat_dout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal s_axi_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_ARREADY : STD_LOGIC;
  signal s_axi_1_ARVALID : STD_LOGIC;
  signal s_axi_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_AWREADY : STD_LOGIC;
  signal s_axi_1_AWVALID : STD_LOGIC;
  signal s_axi_1_BREADY : STD_LOGIC;
  signal s_axi_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_1_BVALID : STD_LOGIC;
  signal s_axi_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_RREADY : STD_LOGIC;
  signal s_axi_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_1_RVALID : STD_LOGIC;
  signal s_axi_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_WREADY : STD_LOGIC;
  signal s_axi_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_1_WVALID : STD_LOGIC;
  signal xadc_wiz_0_ip2intc_irpt : STD_LOGIC;
  signal xadc_wiz_0_temp_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_IIC_gpo_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_QSPI_cfgclk_UNCONNECTED : STD_LOGIC;
  signal NLW_QSPI_cfgmclk_UNCONNECTED : STD_LOGIC;
  signal NLW_QSPI_eos_UNCONNECTED : STD_LOGIC;
  signal NLW_QSPI_preq_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_timer_generateout0_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_timer_generateout1_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_timer_pwm0_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_busy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eoc_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eos_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_ot_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_user_temp_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_vccaux_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_vccint_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_channel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK100 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK100 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK100 : signal is "XIL_INTERFACENAME CLK.CLK100, CLK_DOMAIN Mars_AX3_SDRAM_0_ui_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of CLK200 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK200 CLK";
  attribute X_INTERFACE_PARAMETER of CLK200 : signal is "XIL_INTERFACENAME CLK.CLK200, CLK_DOMAIN Mars_AX3_SDRAM_0_ui_clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of CLK50 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK50 CLK";
  attribute X_INTERFACE_PARAMETER of CLK50 : signal is "XIL_INTERFACENAME CLK.CLK50, CLK_DOMAIN Mars_AX3_SDRAM_0_ui_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of DDR3_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR3 CAS_N";
  attribute X_INTERFACE_INFO of DDR3_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR3 RAS_N";
  attribute X_INTERFACE_INFO of DDR3_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR3 RESET_N";
  attribute X_INTERFACE_INFO of DDR3_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR3 WE_N";
  attribute X_INTERFACE_INFO of IIC_scl_i : signal is "xilinx.com:interface:iic:1.0 IIC SCL_I";
  attribute X_INTERFACE_INFO of IIC_scl_o : signal is "xilinx.com:interface:iic:1.0 IIC SCL_O";
  attribute X_INTERFACE_INFO of IIC_scl_t : signal is "xilinx.com:interface:iic:1.0 IIC SCL_T";
  attribute X_INTERFACE_INFO of IIC_sda_i : signal is "xilinx.com:interface:iic:1.0 IIC SDA_I";
  attribute X_INTERFACE_INFO of IIC_sda_o : signal is "xilinx.com:interface:iic:1.0 IIC SDA_O";
  attribute X_INTERFACE_INFO of IIC_sda_t : signal is "xilinx.com:interface:iic:1.0 IIC SDA_T";
  attribute X_INTERFACE_INFO of MDIO_mdc : signal is "xilinx.com:interface:mdio:1.0 MDIO MDC";
  attribute X_INTERFACE_PARAMETER of MDIO_mdc : signal is "XIL_INTERFACENAME MDIO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of MDIO_mdio_i : signal is "xilinx.com:interface:mdio:1.0 MDIO MDIO_I";
  attribute X_INTERFACE_INFO of MDIO_mdio_o : signal is "xilinx.com:interface:mdio:1.0 MDIO MDIO_O";
  attribute X_INTERFACE_INFO of MDIO_mdio_t : signal is "xilinx.com:interface:mdio:1.0 MDIO MDIO_T";
  attribute X_INTERFACE_INFO of QSPI_io0_i : signal is "xilinx.com:interface:spi:1.0 QSPI IO0_I";
  attribute X_INTERFACE_INFO of QSPI_io0_o : signal is "xilinx.com:interface:spi:1.0 QSPI IO0_O";
  attribute X_INTERFACE_INFO of QSPI_io0_t : signal is "xilinx.com:interface:spi:1.0 QSPI IO0_T";
  attribute X_INTERFACE_INFO of QSPI_io1_i : signal is "xilinx.com:interface:spi:1.0 QSPI IO1_I";
  attribute X_INTERFACE_INFO of QSPI_io1_o : signal is "xilinx.com:interface:spi:1.0 QSPI IO1_O";
  attribute X_INTERFACE_INFO of QSPI_io1_t : signal is "xilinx.com:interface:spi:1.0 QSPI IO1_T";
  attribute X_INTERFACE_INFO of QSPI_io2_i : signal is "xilinx.com:interface:spi:1.0 QSPI IO2_I";
  attribute X_INTERFACE_INFO of QSPI_io2_o : signal is "xilinx.com:interface:spi:1.0 QSPI IO2_O";
  attribute X_INTERFACE_INFO of QSPI_io2_t : signal is "xilinx.com:interface:spi:1.0 QSPI IO2_T";
  attribute X_INTERFACE_INFO of QSPI_io3_i : signal is "xilinx.com:interface:spi:1.0 QSPI IO3_I";
  attribute X_INTERFACE_INFO of QSPI_io3_o : signal is "xilinx.com:interface:spi:1.0 QSPI IO3_O";
  attribute X_INTERFACE_INFO of QSPI_io3_t : signal is "xilinx.com:interface:spi:1.0 QSPI IO3_T";
  attribute X_INTERFACE_INFO of QSPI_ss_t : signal is "xilinx.com:interface:spi:1.0 QSPI SS_T";
  attribute X_INTERFACE_INFO of RGMII_rx_ctl : signal is "xilinx.com:interface:rgmii:1.0 RGMII RX_CTL";
  attribute X_INTERFACE_INFO of RGMII_rxc : signal is "xilinx.com:interface:rgmii:1.0 RGMII RXC";
  attribute X_INTERFACE_INFO of RGMII_tx_ctl : signal is "xilinx.com:interface:rgmii:1.0 RGMII TX_CTL";
  attribute X_INTERFACE_INFO of RGMII_txc : signal is "xilinx.com:interface:rgmii:1.0 RGMII TXC";
  attribute X_INTERFACE_INFO of SYS_CLK : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLK CLK";
  attribute X_INTERFACE_PARAMETER of SYS_CLK : signal is "XIL_INTERFACENAME CLK.SYS_CLK, CLK_DOMAIN Mars_AX3_SYS_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of SYS_RST_N : signal is "xilinx.com:signal:reset:1.0 RST.SYS_RST_N RST";
  attribute X_INTERFACE_PARAMETER of SYS_RST_N : signal is "XIL_INTERFACENAME RST.SYS_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of UART_rxd : signal is "xilinx.com:interface:uart:1.0 UART RxD";
  attribute X_INTERFACE_INFO of UART_txd : signal is "xilinx.com:interface:uart:1.0 UART TxD";
  attribute X_INTERFACE_INFO of DDR3_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR3 ADDR";
  attribute X_INTERFACE_PARAMETER of DDR3_addr : signal is "XIL_INTERFACENAME DDR3, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR3_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR3 BA";
  attribute X_INTERFACE_INFO of DDR3_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR3 CK_N";
  attribute X_INTERFACE_INFO of DDR3_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR3 CK_P";
  attribute X_INTERFACE_INFO of DDR3_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR3 CKE";
  attribute X_INTERFACE_INFO of DDR3_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR3 DM";
  attribute X_INTERFACE_INFO of DDR3_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR3 DQ";
  attribute X_INTERFACE_INFO of DDR3_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR3 DQS_N";
  attribute X_INTERFACE_INFO of DDR3_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR3 DQS_P";
  attribute X_INTERFACE_INFO of DDR3_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR3 ODT";
  attribute X_INTERFACE_INFO of ETH_RST_N : signal is "xilinx.com:signal:reset:1.0 RST.ETH_RST_N RST";
  attribute X_INTERFACE_PARAMETER of ETH_RST_N : signal is "XIL_INTERFACENAME RST.ETH_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of QSPI_ss_i : signal is "xilinx.com:interface:spi:1.0 QSPI SS_I";
  attribute X_INTERFACE_INFO of QSPI_ss_o : signal is "xilinx.com:interface:spi:1.0 QSPI SS_O";
  attribute X_INTERFACE_INFO of RGMII_rd : signal is "xilinx.com:interface:rgmii:1.0 RGMII RD";
  attribute X_INTERFACE_INFO of RGMII_td : signal is "xilinx.com:interface:rgmii:1.0 RGMII TD";
begin
  CLK100 <= Memory_CLK100;
  CLK200 <= Memory_CLK200;
  CLK50 <= Memory_CLK50;
  DDR3_addr(13 downto 0) <= Memory_DDR3_ADDR(13 downto 0);
  DDR3_ba(2 downto 0) <= Memory_DDR3_BA(2 downto 0);
  DDR3_cas_n <= Memory_DDR3_CAS_N;
  DDR3_ck_n(0) <= Memory_DDR3_CK_N(0);
  DDR3_ck_p(0) <= Memory_DDR3_CK_P(0);
  DDR3_cke(0) <= Memory_DDR3_CKE(0);
  DDR3_dm(1 downto 0) <= Memory_DDR3_DM(1 downto 0);
  DDR3_odt(0) <= Memory_DDR3_ODT(0);
  DDR3_ras_n <= Memory_DDR3_RAS_N;
  DDR3_reset_n <= Memory_DDR3_RESET_N;
  DDR3_we_n <= Memory_DDR3_WE_N;
  ETH_RST_N(0) <= Ethernet_ETH_RST_N(0);
  Ethernet_MDIO_MDIO_I <= MDIO_mdio_i;
  Ethernet_RGMII_RD(3 downto 0) <= RGMII_rd(3 downto 0);
  Ethernet_RGMII_RXC <= RGMII_rxc;
  Ethernet_RGMII_RX_CTL <= RGMII_rx_ctl;
  IIC_IIC_SCL_I <= IIC_scl_i;
  IIC_IIC_SDA_I <= IIC_sda_i;
  IIC_scl_o <= IIC_IIC_SCL_O;
  IIC_scl_t <= IIC_IIC_SCL_T;
  IIC_sda_o <= IIC_IIC_SDA_O;
  IIC_sda_t <= IIC_IIC_SDA_T;
  LED_N(3 downto 0) <= LEDs_gpio_io_o(3 downto 0);
  MDIO_mdc <= Ethernet_MDIO_MDC;
  MDIO_mdio_o <= Ethernet_MDIO_MDIO_O;
  MDIO_mdio_t <= Ethernet_MDIO_MDIO_T;
  QSPI_SPI_0_IO0_I <= QSPI_io0_i;
  QSPI_SPI_0_IO1_I <= QSPI_io1_i;
  QSPI_SPI_0_IO2_I <= QSPI_io2_i;
  QSPI_SPI_0_IO3_I <= QSPI_io3_i;
  QSPI_SPI_0_SS_I(0) <= QSPI_ss_i(0);
  QSPI_io0_o <= QSPI_SPI_0_IO0_O;
  QSPI_io0_t <= QSPI_SPI_0_IO0_T;
  QSPI_io1_o <= QSPI_SPI_0_IO1_O;
  QSPI_io1_t <= QSPI_SPI_0_IO1_T;
  QSPI_io2_o <= QSPI_SPI_0_IO2_O;
  QSPI_io2_t <= QSPI_SPI_0_IO2_T;
  QSPI_io3_o <= QSPI_SPI_0_IO3_O;
  QSPI_io3_t <= QSPI_SPI_0_IO3_T;
  QSPI_ss_o(0) <= QSPI_SPI_0_SS_O(0);
  QSPI_ss_t <= QSPI_SPI_0_SS_T;
  RGMII_td(3 downto 0) <= Ethernet_RGMII_TD(3 downto 0);
  RGMII_tx_ctl <= Ethernet_RGMII_TX_CTL;
  RGMII_txc <= Ethernet_RGMII_TXC;
  SYS_CLK_1 <= SYS_CLK;
  SYS_RST_N_1 <= SYS_RST_N;
  UART_UART_RxD <= UART_rxd;
  UART_txd <= UART_UART_TxD;
CPU: entity work.CPU_imp_15ZD30O
     port map (
      Clk => Memory_CLK100,
      Debug_SYS_Rst => mb_debug_sys_rst_1,
      Interrupt => CPU_Interrupt,
      LMB_Rst(0) => Memory_bus_struct_reset(0),
      M02_AXI_araddr(31 downto 0) => CPU_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arready(0) => CPU_M02_AXI_ARREADY,
      M02_AXI_arvalid(0) => CPU_M02_AXI_ARVALID(0),
      M02_AXI_awaddr(31 downto 0) => CPU_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awready(0) => CPU_M02_AXI_AWREADY,
      M02_AXI_awvalid(0) => CPU_M02_AXI_AWVALID(0),
      M02_AXI_bready(0) => CPU_M02_AXI_BREADY(0),
      M02_AXI_bresp(1 downto 0) => CPU_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => CPU_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => CPU_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready(0) => CPU_M02_AXI_RREADY(0),
      M02_AXI_rresp(1 downto 0) => CPU_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => CPU_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => CPU_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready(0) => CPU_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => CPU_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => CPU_M02_AXI_WVALID(0),
      M03_AXI_araddr(31 downto 0) => CPU_M03_AXI_ARADDR(31 downto 0),
      M03_AXI_arready(0) => CPU_M03_AXI_ARREADY,
      M03_AXI_arvalid(0) => CPU_M03_AXI_ARVALID(0),
      M03_AXI_awaddr(31 downto 0) => CPU_M03_AXI_AWADDR(31 downto 0),
      M03_AXI_awready(0) => CPU_M03_AXI_AWREADY,
      M03_AXI_awvalid(0) => CPU_M03_AXI_AWVALID(0),
      M03_AXI_bready(0) => CPU_M03_AXI_BREADY(0),
      M03_AXI_bresp(1 downto 0) => CPU_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid(0) => CPU_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => CPU_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready(0) => CPU_M03_AXI_RREADY(0),
      M03_AXI_rresp(1 downto 0) => CPU_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid(0) => CPU_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => CPU_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready(0) => CPU_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => CPU_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid(0) => CPU_M03_AXI_WVALID(0),
      M04_AXI_araddr(31 downto 0) => CPU_M04_AXI_ARADDR(31 downto 0),
      M04_AXI_arready(0) => CPU_M04_AXI_ARREADY,
      M04_AXI_arvalid(0) => CPU_M04_AXI_ARVALID(0),
      M04_AXI_awaddr(31 downto 0) => CPU_M04_AXI_AWADDR(31 downto 0),
      M04_AXI_awready(0) => CPU_M04_AXI_AWREADY,
      M04_AXI_awvalid(0) => CPU_M04_AXI_AWVALID(0),
      M04_AXI_bready(0) => CPU_M04_AXI_BREADY(0),
      M04_AXI_bresp(1 downto 0) => CPU_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid(0) => CPU_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => CPU_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready(0) => CPU_M04_AXI_RREADY(0),
      M04_AXI_rresp(1 downto 0) => CPU_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid(0) => CPU_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => CPU_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready(0) => CPU_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => CPU_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid(0) => CPU_M04_AXI_WVALID(0),
      M05_AXI_araddr(31 downto 0) => CPU_M05_AXI_ARADDR(31 downto 0),
      M05_AXI_arready(0) => CPU_M05_AXI_ARREADY,
      M05_AXI_arvalid(0) => CPU_M05_AXI_ARVALID(0),
      M05_AXI_awaddr(31 downto 0) => CPU_M05_AXI_AWADDR(31 downto 0),
      M05_AXI_awready(0) => CPU_M05_AXI_AWREADY,
      M05_AXI_awvalid(0) => CPU_M05_AXI_AWVALID(0),
      M05_AXI_bready(0) => CPU_M05_AXI_BREADY(0),
      M05_AXI_bresp(1 downto 0) => CPU_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid(0) => CPU_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => CPU_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready(0) => CPU_M05_AXI_RREADY(0),
      M05_AXI_rresp(1 downto 0) => CPU_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid(0) => CPU_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => CPU_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready(0) => CPU_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => CPU_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid(0) => CPU_M05_AXI_WVALID(0),
      M06_AXI_araddr(23 downto 0) => CPU_M06_AXI_ARADDR(23 downto 0),
      M06_AXI_arburst(1 downto 0) => CPU_M06_AXI_ARBURST(1 downto 0),
      M06_AXI_arcache(3 downto 0) => CPU_M06_AXI_ARCACHE(3 downto 0),
      M06_AXI_arlen(7 downto 0) => CPU_M06_AXI_ARLEN(7 downto 0),
      M06_AXI_arlock(0) => CPU_M06_AXI_ARLOCK(0),
      M06_AXI_arprot(2 downto 0) => CPU_M06_AXI_ARPROT(2 downto 0),
      M06_AXI_arready => CPU_M06_AXI_ARREADY,
      M06_AXI_arsize(2 downto 0) => CPU_M06_AXI_ARSIZE(2 downto 0),
      M06_AXI_arvalid => CPU_M06_AXI_ARVALID,
      M06_AXI_awaddr(23 downto 0) => CPU_M06_AXI_AWADDR(23 downto 0),
      M06_AXI_awburst(1 downto 0) => CPU_M06_AXI_AWBURST(1 downto 0),
      M06_AXI_awcache(3 downto 0) => CPU_M06_AXI_AWCACHE(3 downto 0),
      M06_AXI_awlen(7 downto 0) => CPU_M06_AXI_AWLEN(7 downto 0),
      M06_AXI_awlock(0) => CPU_M06_AXI_AWLOCK(0),
      M06_AXI_awprot(2 downto 0) => CPU_M06_AXI_AWPROT(2 downto 0),
      M06_AXI_awready => CPU_M06_AXI_AWREADY,
      M06_AXI_awsize(2 downto 0) => CPU_M06_AXI_AWSIZE(2 downto 0),
      M06_AXI_awvalid => CPU_M06_AXI_AWVALID,
      M06_AXI_bready => CPU_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => CPU_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid => CPU_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => CPU_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rlast => CPU_M06_AXI_RLAST,
      M06_AXI_rready => CPU_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => CPU_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid => CPU_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => CPU_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wlast => CPU_M06_AXI_WLAST,
      M06_AXI_wready => CPU_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => CPU_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid => CPU_M06_AXI_WVALID,
      M07_AXI_araddr(31 downto 0) => CPU_M07_AXI_ARADDR(31 downto 0),
      M07_AXI_arready(0) => CPU_M07_AXI_ARREADY,
      M07_AXI_arvalid(0) => CPU_M07_AXI_ARVALID(0),
      M07_AXI_awaddr(31 downto 0) => CPU_M07_AXI_AWADDR(31 downto 0),
      M07_AXI_awready(0) => CPU_M07_AXI_AWREADY,
      M07_AXI_awvalid(0) => CPU_M07_AXI_AWVALID(0),
      M07_AXI_bready(0) => CPU_M07_AXI_BREADY(0),
      M07_AXI_bresp(1 downto 0) => CPU_M07_AXI_BRESP(1 downto 0),
      M07_AXI_bvalid(0) => CPU_M07_AXI_BVALID,
      M07_AXI_rdata(31 downto 0) => CPU_M07_AXI_RDATA(31 downto 0),
      M07_AXI_rready(0) => CPU_M07_AXI_RREADY(0),
      M07_AXI_rresp(1 downto 0) => CPU_M07_AXI_RRESP(1 downto 0),
      M07_AXI_rvalid(0) => CPU_M07_AXI_RVALID,
      M07_AXI_wdata(31 downto 0) => CPU_M07_AXI_WDATA(31 downto 0),
      M07_AXI_wready(0) => CPU_M07_AXI_WREADY,
      M07_AXI_wstrb(3 downto 0) => CPU_M07_AXI_WSTRB(3 downto 0),
      M07_AXI_wvalid(0) => CPU_M07_AXI_WVALID(0),
      M09_AXI_araddr(31 downto 0) => s_axi_1_ARADDR(31 downto 0),
      M09_AXI_arready => s_axi_1_ARREADY,
      M09_AXI_arvalid => s_axi_1_ARVALID,
      M09_AXI_awaddr(31 downto 0) => s_axi_1_AWADDR(31 downto 0),
      M09_AXI_awready => s_axi_1_AWREADY,
      M09_AXI_awvalid => s_axi_1_AWVALID,
      M09_AXI_bready => s_axi_1_BREADY,
      M09_AXI_bresp(1 downto 0) => s_axi_1_BRESP(1 downto 0),
      M09_AXI_bvalid => s_axi_1_BVALID,
      M09_AXI_rdata(31 downto 0) => s_axi_1_RDATA(31 downto 0),
      M09_AXI_rready => s_axi_1_RREADY,
      M09_AXI_rresp(1 downto 0) => s_axi_1_RRESP(1 downto 0),
      M09_AXI_rvalid => s_axi_1_RVALID,
      M09_AXI_wdata(31 downto 0) => s_axi_1_WDATA(31 downto 0),
      M09_AXI_wready => s_axi_1_WREADY,
      M09_AXI_wstrb(3 downto 0) => s_axi_1_WSTRB(3 downto 0),
      M09_AXI_wvalid => s_axi_1_WVALID,
      M10_AXI_araddr(31 downto 0) => S_AXI_LITE_1_ARADDR(31 downto 0),
      M10_AXI_arready => S_AXI_LITE_1_ARREADY,
      M10_AXI_arvalid => S_AXI_LITE_1_ARVALID,
      M10_AXI_awaddr(31 downto 0) => S_AXI_LITE_1_AWADDR(31 downto 0),
      M10_AXI_awready => S_AXI_LITE_1_AWREADY,
      M10_AXI_awvalid => S_AXI_LITE_1_AWVALID,
      M10_AXI_bready => S_AXI_LITE_1_BREADY,
      M10_AXI_bresp(1 downto 0) => S_AXI_LITE_1_BRESP(1 downto 0),
      M10_AXI_bvalid => S_AXI_LITE_1_BVALID,
      M10_AXI_rdata(31 downto 0) => S_AXI_LITE_1_RDATA(31 downto 0),
      M10_AXI_rready => S_AXI_LITE_1_RREADY,
      M10_AXI_rresp(1 downto 0) => S_AXI_LITE_1_RRESP(1 downto 0),
      M10_AXI_rvalid => S_AXI_LITE_1_RVALID,
      M10_AXI_wdata(31 downto 0) => S_AXI_LITE_1_WDATA(31 downto 0),
      M10_AXI_wready => S_AXI_LITE_1_WREADY,
      M10_AXI_wvalid => S_AXI_LITE_1_WVALID,
      M_AXI_DC_araddr(31 downto 0) => CPU_M_AXI_DC_ARADDR(31 downto 0),
      M_AXI_DC_arburst(1 downto 0) => CPU_M_AXI_DC_ARBURST(1 downto 0),
      M_AXI_DC_arcache(3 downto 0) => CPU_M_AXI_DC_ARCACHE(3 downto 0),
      M_AXI_DC_arid(0) => CPU_M_AXI_DC_ARID(0),
      M_AXI_DC_arlen(7 downto 0) => CPU_M_AXI_DC_ARLEN(7 downto 0),
      M_AXI_DC_arlock(0) => CPU_M_AXI_DC_ARLOCK(0),
      M_AXI_DC_arprot(2 downto 0) => CPU_M_AXI_DC_ARPROT(2 downto 0),
      M_AXI_DC_arqos(3 downto 0) => CPU_M_AXI_DC_ARQOS(3 downto 0),
      M_AXI_DC_arready(0) => CPU_M_AXI_DC_ARREADY(0),
      M_AXI_DC_arsize(2 downto 0) => CPU_M_AXI_DC_ARSIZE(2 downto 0),
      M_AXI_DC_arvalid(0) => CPU_M_AXI_DC_ARVALID(0),
      M_AXI_DC_awaddr(31 downto 0) => CPU_M_AXI_DC_AWADDR(31 downto 0),
      M_AXI_DC_awburst(1 downto 0) => CPU_M_AXI_DC_AWBURST(1 downto 0),
      M_AXI_DC_awcache(3 downto 0) => CPU_M_AXI_DC_AWCACHE(3 downto 0),
      M_AXI_DC_awid(0) => CPU_M_AXI_DC_AWID(0),
      M_AXI_DC_awlen(7 downto 0) => CPU_M_AXI_DC_AWLEN(7 downto 0),
      M_AXI_DC_awlock(0) => CPU_M_AXI_DC_AWLOCK(0),
      M_AXI_DC_awprot(2 downto 0) => CPU_M_AXI_DC_AWPROT(2 downto 0),
      M_AXI_DC_awqos(3 downto 0) => CPU_M_AXI_DC_AWQOS(3 downto 0),
      M_AXI_DC_awready(0) => CPU_M_AXI_DC_AWREADY(0),
      M_AXI_DC_awsize(2 downto 0) => CPU_M_AXI_DC_AWSIZE(2 downto 0),
      M_AXI_DC_awvalid(0) => CPU_M_AXI_DC_AWVALID(0),
      M_AXI_DC_bid(2 downto 0) => CPU_M_AXI_DC_BID(2 downto 0),
      M_AXI_DC_bready(0) => CPU_M_AXI_DC_BREADY(0),
      M_AXI_DC_bresp(1 downto 0) => CPU_M_AXI_DC_BRESP(1 downto 0),
      M_AXI_DC_bvalid(0) => CPU_M_AXI_DC_BVALID(0),
      M_AXI_DC_rdata(31 downto 0) => CPU_M_AXI_DC_RDATA(31 downto 0),
      M_AXI_DC_rid(2 downto 0) => CPU_M_AXI_DC_RID(2 downto 0),
      M_AXI_DC_rlast(0) => CPU_M_AXI_DC_RLAST(0),
      M_AXI_DC_rready(0) => CPU_M_AXI_DC_RREADY(0),
      M_AXI_DC_rresp(1 downto 0) => CPU_M_AXI_DC_RRESP(1 downto 0),
      M_AXI_DC_rvalid(0) => CPU_M_AXI_DC_RVALID(0),
      M_AXI_DC_wdata(31 downto 0) => CPU_M_AXI_DC_WDATA(31 downto 0),
      M_AXI_DC_wlast(0) => CPU_M_AXI_DC_WLAST(0),
      M_AXI_DC_wready(0) => CPU_M_AXI_DC_WREADY(0),
      M_AXI_DC_wstrb(3 downto 0) => CPU_M_AXI_DC_WSTRB(3 downto 0),
      M_AXI_DC_wvalid(0) => CPU_M_AXI_DC_WVALID(0),
      M_AXI_IC_araddr(31 downto 0) => CPU_M_AXI_IC_ARADDR(31 downto 0),
      M_AXI_IC_arburst(1 downto 0) => CPU_M_AXI_IC_ARBURST(1 downto 0),
      M_AXI_IC_arcache(3 downto 0) => CPU_M_AXI_IC_ARCACHE(3 downto 0),
      M_AXI_IC_arid(0) => CPU_M_AXI_IC_ARID(0),
      M_AXI_IC_arlen(7 downto 0) => CPU_M_AXI_IC_ARLEN(7 downto 0),
      M_AXI_IC_arlock(0) => CPU_M_AXI_IC_ARLOCK(0),
      M_AXI_IC_arprot(2 downto 0) => CPU_M_AXI_IC_ARPROT(2 downto 0),
      M_AXI_IC_arqos(3 downto 0) => CPU_M_AXI_IC_ARQOS(3 downto 0),
      M_AXI_IC_arready(0) => CPU_M_AXI_IC_ARREADY(0),
      M_AXI_IC_arsize(2 downto 0) => CPU_M_AXI_IC_ARSIZE(2 downto 0),
      M_AXI_IC_arvalid(0) => CPU_M_AXI_IC_ARVALID(0),
      M_AXI_IC_awaddr(31 downto 0) => CPU_M_AXI_IC_AWADDR(31 downto 0),
      M_AXI_IC_awburst(1 downto 0) => CPU_M_AXI_IC_AWBURST(1 downto 0),
      M_AXI_IC_awcache(3 downto 0) => CPU_M_AXI_IC_AWCACHE(3 downto 0),
      M_AXI_IC_awid(0) => CPU_M_AXI_IC_AWID(0),
      M_AXI_IC_awlen(7 downto 0) => CPU_M_AXI_IC_AWLEN(7 downto 0),
      M_AXI_IC_awlock(0) => CPU_M_AXI_IC_AWLOCK(0),
      M_AXI_IC_awprot(2 downto 0) => CPU_M_AXI_IC_AWPROT(2 downto 0),
      M_AXI_IC_awqos(3 downto 0) => CPU_M_AXI_IC_AWQOS(3 downto 0),
      M_AXI_IC_awready(0) => CPU_M_AXI_IC_AWREADY(0),
      M_AXI_IC_awsize(2 downto 0) => CPU_M_AXI_IC_AWSIZE(2 downto 0),
      M_AXI_IC_awvalid(0) => CPU_M_AXI_IC_AWVALID(0),
      M_AXI_IC_bid(2 downto 0) => CPU_M_AXI_IC_BID(2 downto 0),
      M_AXI_IC_bready(0) => CPU_M_AXI_IC_BREADY(0),
      M_AXI_IC_bresp(1 downto 0) => CPU_M_AXI_IC_BRESP(1 downto 0),
      M_AXI_IC_bvalid(0) => CPU_M_AXI_IC_BVALID(0),
      M_AXI_IC_rdata(31 downto 0) => CPU_M_AXI_IC_RDATA(31 downto 0),
      M_AXI_IC_rid(2 downto 0) => CPU_M_AXI_IC_RID(2 downto 0),
      M_AXI_IC_rlast(0) => CPU_M_AXI_IC_RLAST(0),
      M_AXI_IC_rready(0) => CPU_M_AXI_IC_RREADY(0),
      M_AXI_IC_rresp(1 downto 0) => CPU_M_AXI_IC_RRESP(1 downto 0),
      M_AXI_IC_rvalid(0) => CPU_M_AXI_IC_RVALID(0),
      M_AXI_IC_wdata(31 downto 0) => CPU_M_AXI_IC_WDATA(31 downto 0),
      M_AXI_IC_wlast(0) => CPU_M_AXI_IC_WLAST(0),
      M_AXI_IC_wready(0) => CPU_M_AXI_IC_WREADY(0),
      M_AXI_IC_wstrb(3 downto 0) => CPU_M_AXI_IC_WSTRB(3 downto 0),
      M_AXI_IC_wvalid(0) => CPU_M_AXI_IC_WVALID(0),
      Reset => Memory_mb_reset,
      S_AXI_ARESETN => S_AXI_ARESETN_1(0),
      intr(9 downto 0) => microblaze_xlconcat_dout(9 downto 0)
    );
Ethernet: entity work.Ethernet_imp_LIDQ5M
     port map (
      ETH_RST_N(0) => Ethernet_ETH_RST_N(0),
      MDIO_mdc => Ethernet_MDIO_MDC,
      MDIO_mdio_i => Ethernet_MDIO_MDIO_I,
      MDIO_mdio_o => Ethernet_MDIO_MDIO_O,
      MDIO_mdio_t => Ethernet_MDIO_MDIO_T,
      M_AXI_MM2S_araddr(31 downto 0) => Ethernet_M_AXI_MM2S_ARADDR(31 downto 0),
      M_AXI_MM2S_arburst(1 downto 0) => Ethernet_M_AXI_MM2S_ARBURST(1 downto 0),
      M_AXI_MM2S_arcache(3 downto 0) => Ethernet_M_AXI_MM2S_ARCACHE(3 downto 0),
      M_AXI_MM2S_arlen(7 downto 0) => Ethernet_M_AXI_MM2S_ARLEN(7 downto 0),
      M_AXI_MM2S_arprot(2 downto 0) => Ethernet_M_AXI_MM2S_ARPROT(2 downto 0),
      M_AXI_MM2S_arready => Ethernet_M_AXI_MM2S_ARREADY,
      M_AXI_MM2S_arsize(2 downto 0) => Ethernet_M_AXI_MM2S_ARSIZE(2 downto 0),
      M_AXI_MM2S_arvalid => Ethernet_M_AXI_MM2S_ARVALID,
      M_AXI_MM2S_rdata(31 downto 0) => Ethernet_M_AXI_MM2S_RDATA(31 downto 0),
      M_AXI_MM2S_rlast => Ethernet_M_AXI_MM2S_RLAST,
      M_AXI_MM2S_rready => Ethernet_M_AXI_MM2S_RREADY,
      M_AXI_MM2S_rresp(1 downto 0) => Ethernet_M_AXI_MM2S_RRESP(1 downto 0),
      M_AXI_MM2S_rvalid => Ethernet_M_AXI_MM2S_RVALID,
      M_AXI_S2MM_awaddr(31 downto 0) => Ethernet_M_AXI_S2MM_AWADDR(31 downto 0),
      M_AXI_S2MM_awburst(1 downto 0) => Ethernet_M_AXI_S2MM_AWBURST(1 downto 0),
      M_AXI_S2MM_awcache(3 downto 0) => Ethernet_M_AXI_S2MM_AWCACHE(3 downto 0),
      M_AXI_S2MM_awlen(7 downto 0) => Ethernet_M_AXI_S2MM_AWLEN(7 downto 0),
      M_AXI_S2MM_awprot(2 downto 0) => Ethernet_M_AXI_S2MM_AWPROT(2 downto 0),
      M_AXI_S2MM_awready => Ethernet_M_AXI_S2MM_AWREADY,
      M_AXI_S2MM_awsize(2 downto 0) => Ethernet_M_AXI_S2MM_AWSIZE(2 downto 0),
      M_AXI_S2MM_awvalid => Ethernet_M_AXI_S2MM_AWVALID,
      M_AXI_S2MM_bready => Ethernet_M_AXI_S2MM_BREADY,
      M_AXI_S2MM_bresp(1 downto 0) => Ethernet_M_AXI_S2MM_BRESP(1 downto 0),
      M_AXI_S2MM_bvalid => Ethernet_M_AXI_S2MM_BVALID,
      M_AXI_S2MM_wdata(31 downto 0) => Ethernet_M_AXI_S2MM_WDATA(31 downto 0),
      M_AXI_S2MM_wlast => Ethernet_M_AXI_S2MM_WLAST,
      M_AXI_S2MM_wready => Ethernet_M_AXI_S2MM_WREADY,
      M_AXI_S2MM_wstrb(3 downto 0) => Ethernet_M_AXI_S2MM_WSTRB(3 downto 0),
      M_AXI_S2MM_wvalid => Ethernet_M_AXI_S2MM_WVALID,
      M_AXI_SG_araddr(31 downto 0) => Ethernet_M_AXI_SG_ARADDR(31 downto 0),
      M_AXI_SG_arburst(1 downto 0) => Ethernet_M_AXI_SG_ARBURST(1 downto 0),
      M_AXI_SG_arcache(3 downto 0) => Ethernet_M_AXI_SG_ARCACHE(3 downto 0),
      M_AXI_SG_arlen(7 downto 0) => Ethernet_M_AXI_SG_ARLEN(7 downto 0),
      M_AXI_SG_arprot(2 downto 0) => Ethernet_M_AXI_SG_ARPROT(2 downto 0),
      M_AXI_SG_arready => Ethernet_M_AXI_SG_ARREADY,
      M_AXI_SG_arsize(2 downto 0) => Ethernet_M_AXI_SG_ARSIZE(2 downto 0),
      M_AXI_SG_arvalid => Ethernet_M_AXI_SG_ARVALID,
      M_AXI_SG_awaddr(31 downto 0) => Ethernet_M_AXI_SG_AWADDR(31 downto 0),
      M_AXI_SG_awburst(1 downto 0) => Ethernet_M_AXI_SG_AWBURST(1 downto 0),
      M_AXI_SG_awcache(3 downto 0) => Ethernet_M_AXI_SG_AWCACHE(3 downto 0),
      M_AXI_SG_awlen(7 downto 0) => Ethernet_M_AXI_SG_AWLEN(7 downto 0),
      M_AXI_SG_awprot(2 downto 0) => Ethernet_M_AXI_SG_AWPROT(2 downto 0),
      M_AXI_SG_awready => Ethernet_M_AXI_SG_AWREADY,
      M_AXI_SG_awsize(2 downto 0) => Ethernet_M_AXI_SG_AWSIZE(2 downto 0),
      M_AXI_SG_awvalid => Ethernet_M_AXI_SG_AWVALID,
      M_AXI_SG_bready => Ethernet_M_AXI_SG_BREADY,
      M_AXI_SG_bresp(1 downto 0) => Ethernet_M_AXI_SG_BRESP(1 downto 0),
      M_AXI_SG_bvalid => Ethernet_M_AXI_SG_BVALID,
      M_AXI_SG_rdata(31 downto 0) => Ethernet_M_AXI_SG_RDATA(31 downto 0),
      M_AXI_SG_rlast => Ethernet_M_AXI_SG_RLAST,
      M_AXI_SG_rready => Ethernet_M_AXI_SG_RREADY,
      M_AXI_SG_rresp(1 downto 0) => Ethernet_M_AXI_SG_RRESP(1 downto 0),
      M_AXI_SG_rvalid => Ethernet_M_AXI_SG_RVALID,
      M_AXI_SG_wdata(31 downto 0) => Ethernet_M_AXI_SG_WDATA(31 downto 0),
      M_AXI_SG_wlast => Ethernet_M_AXI_SG_WLAST,
      M_AXI_SG_wready => Ethernet_M_AXI_SG_WREADY,
      M_AXI_SG_wstrb(3 downto 0) => Ethernet_M_AXI_SG_WSTRB(3 downto 0),
      M_AXI_SG_wvalid => Ethernet_M_AXI_SG_WVALID,
      RGMII_rd(3 downto 0) => Ethernet_RGMII_RD(3 downto 0),
      RGMII_rx_ctl => Ethernet_RGMII_RX_CTL,
      RGMII_rxc => Ethernet_RGMII_RXC,
      RGMII_td(3 downto 0) => Ethernet_RGMII_TD(3 downto 0),
      RGMII_tx_ctl => Ethernet_RGMII_TX_CTL,
      RGMII_txc => Ethernet_RGMII_TXC,
      S_AXI_LITE_araddr(31 downto 0) => S_AXI_LITE_1_ARADDR(31 downto 0),
      S_AXI_LITE_arready => S_AXI_LITE_1_ARREADY,
      S_AXI_LITE_arvalid => S_AXI_LITE_1_ARVALID,
      S_AXI_LITE_awaddr(31 downto 0) => S_AXI_LITE_1_AWADDR(31 downto 0),
      S_AXI_LITE_awready => S_AXI_LITE_1_AWREADY,
      S_AXI_LITE_awvalid => S_AXI_LITE_1_AWVALID,
      S_AXI_LITE_bready => S_AXI_LITE_1_BREADY,
      S_AXI_LITE_bresp(1 downto 0) => S_AXI_LITE_1_BRESP(1 downto 0),
      S_AXI_LITE_bvalid => S_AXI_LITE_1_BVALID,
      S_AXI_LITE_rdata(31 downto 0) => S_AXI_LITE_1_RDATA(31 downto 0),
      S_AXI_LITE_rready => S_AXI_LITE_1_RREADY,
      S_AXI_LITE_rresp(1 downto 0) => S_AXI_LITE_1_RRESP(1 downto 0),
      S_AXI_LITE_rvalid => S_AXI_LITE_1_RVALID,
      S_AXI_LITE_wdata(31 downto 0) => S_AXI_LITE_1_WDATA(31 downto 0),
      S_AXI_LITE_wready => S_AXI_LITE_1_WREADY,
      S_AXI_LITE_wvalid => S_AXI_LITE_1_WVALID,
      clk_in1 => Memory_CLK100,
      interrupt => Ethernet_interrupt,
      mac_irq => Ethernet_mac_irq,
      mm2s_introut => Ethernet_mm2s_introut,
      ref_clk => Memory_CLK200,
      reset => Memory_bus_struct_reset(0),
      s2mm_introut => Ethernet_s2mm_introut,
      s_axi_araddr(31 downto 0) => s_axi_1_ARADDR(31 downto 0),
      s_axi_arready => s_axi_1_ARREADY,
      s_axi_arvalid => s_axi_1_ARVALID,
      s_axi_awaddr(31 downto 0) => s_axi_1_AWADDR(31 downto 0),
      s_axi_awready => s_axi_1_AWREADY,
      s_axi_awvalid => s_axi_1_AWVALID,
      s_axi_bready => s_axi_1_BREADY,
      s_axi_bresp(1 downto 0) => s_axi_1_BRESP(1 downto 0),
      s_axi_bvalid => s_axi_1_BVALID,
      s_axi_lite_resetn => S_AXI_ARESETN_1(0),
      s_axi_rdata(31 downto 0) => s_axi_1_RDATA(31 downto 0),
      s_axi_rready => s_axi_1_RREADY,
      s_axi_rresp(1 downto 0) => s_axi_1_RRESP(1 downto 0),
      s_axi_rvalid => s_axi_1_RVALID,
      s_axi_wdata(31 downto 0) => s_axi_1_WDATA(31 downto 0),
      s_axi_wready => s_axi_1_WREADY,
      s_axi_wstrb(3 downto 0) => s_axi_1_WSTRB(3 downto 0),
      s_axi_wvalid => s_axi_1_WVALID
    );
IIC: component Mars_AX3_IIC_0
     port map (
      gpo(0) => NLW_IIC_gpo_UNCONNECTED(0),
      iic2intc_irpt => IIC_iic2intc_irpt,
      s_axi_aclk => Memory_CLK100,
      s_axi_araddr(8 downto 0) => CPU_M05_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => S_AXI_ARESETN_1(0),
      s_axi_arready => CPU_M05_AXI_ARREADY,
      s_axi_arvalid => CPU_M05_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => CPU_M05_AXI_AWADDR(8 downto 0),
      s_axi_awready => CPU_M05_AXI_AWREADY,
      s_axi_awvalid => CPU_M05_AXI_AWVALID(0),
      s_axi_bready => CPU_M05_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => CPU_M05_AXI_BRESP(1 downto 0),
      s_axi_bvalid => CPU_M05_AXI_BVALID,
      s_axi_rdata(31 downto 0) => CPU_M05_AXI_RDATA(31 downto 0),
      s_axi_rready => CPU_M05_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => CPU_M05_AXI_RRESP(1 downto 0),
      s_axi_rvalid => CPU_M05_AXI_RVALID,
      s_axi_wdata(31 downto 0) => CPU_M05_AXI_WDATA(31 downto 0),
      s_axi_wready => CPU_M05_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => CPU_M05_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => CPU_M05_AXI_WVALID(0),
      scl_i => IIC_IIC_SCL_I,
      scl_o => IIC_IIC_SCL_O,
      scl_t => IIC_IIC_SCL_T,
      sda_i => IIC_IIC_SDA_I,
      sda_o => IIC_IIC_SDA_O,
      sda_t => IIC_IIC_SDA_T
    );
LEDs: component Mars_AX3_LEDs_0
     port map (
      gpio_io_o(3 downto 0) => LEDs_gpio_io_o(3 downto 0),
      s_axi_aclk => Memory_CLK100,
      s_axi_araddr(8 downto 0) => CPU_M02_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => S_AXI_ARESETN_1(0),
      s_axi_arready => CPU_M02_AXI_ARREADY,
      s_axi_arvalid => CPU_M02_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => CPU_M02_AXI_AWADDR(8 downto 0),
      s_axi_awready => CPU_M02_AXI_AWREADY,
      s_axi_awvalid => CPU_M02_AXI_AWVALID(0),
      s_axi_bready => CPU_M02_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => CPU_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid => CPU_M02_AXI_BVALID,
      s_axi_rdata(31 downto 0) => CPU_M02_AXI_RDATA(31 downto 0),
      s_axi_rready => CPU_M02_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => CPU_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid => CPU_M02_AXI_RVALID,
      s_axi_wdata(31 downto 0) => CPU_M02_AXI_WDATA(31 downto 0),
      s_axi_wready => CPU_M02_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => CPU_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => CPU_M02_AXI_WVALID(0)
    );
Memory: entity work.Memory_imp_YQ80QP
     port map (
      CLK100 => Memory_CLK100,
      CLK200 => Memory_CLK200,
      CLK50 => Memory_CLK50,
      DDR3_addr(13 downto 0) => Memory_DDR3_ADDR(13 downto 0),
      DDR3_ba(2 downto 0) => Memory_DDR3_BA(2 downto 0),
      DDR3_cas_n => Memory_DDR3_CAS_N,
      DDR3_ck_n(0) => Memory_DDR3_CK_N(0),
      DDR3_ck_p(0) => Memory_DDR3_CK_P(0),
      DDR3_cke(0) => Memory_DDR3_CKE(0),
      DDR3_dm(1 downto 0) => Memory_DDR3_DM(1 downto 0),
      DDR3_dq(15 downto 0) => DDR3_dq(15 downto 0),
      DDR3_dqs_n(1 downto 0) => DDR3_dqs_n(1 downto 0),
      DDR3_dqs_p(1 downto 0) => DDR3_dqs_p(1 downto 0),
      DDR3_odt(0) => Memory_DDR3_ODT(0),
      DDR3_ras_n => Memory_DDR3_RAS_N,
      DDR3_reset_n => Memory_DDR3_RESET_N,
      DDR3_we_n => Memory_DDR3_WE_N,
      S00_AXI_araddr(31 downto 0) => CPU_M_AXI_DC_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => CPU_M_AXI_DC_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => CPU_M_AXI_DC_ARCACHE(3 downto 0),
      S00_AXI_arid(0) => CPU_M_AXI_DC_ARID(0),
      S00_AXI_arlen(7 downto 0) => CPU_M_AXI_DC_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => CPU_M_AXI_DC_ARLOCK(0),
      S00_AXI_arprot(2 downto 0) => CPU_M_AXI_DC_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => CPU_M_AXI_DC_ARQOS(3 downto 0),
      S00_AXI_arready(0) => CPU_M_AXI_DC_ARREADY(0),
      S00_AXI_arsize(2 downto 0) => CPU_M_AXI_DC_ARSIZE(2 downto 0),
      S00_AXI_arvalid(0) => CPU_M_AXI_DC_ARVALID(0),
      S00_AXI_awaddr(31 downto 0) => CPU_M_AXI_DC_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => CPU_M_AXI_DC_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => CPU_M_AXI_DC_AWCACHE(3 downto 0),
      S00_AXI_awid(0) => CPU_M_AXI_DC_AWID(0),
      S00_AXI_awlen(7 downto 0) => CPU_M_AXI_DC_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => CPU_M_AXI_DC_AWLOCK(0),
      S00_AXI_awprot(2 downto 0) => CPU_M_AXI_DC_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => CPU_M_AXI_DC_AWQOS(3 downto 0),
      S00_AXI_awready(0) => CPU_M_AXI_DC_AWREADY(0),
      S00_AXI_awsize(2 downto 0) => CPU_M_AXI_DC_AWSIZE(2 downto 0),
      S00_AXI_awvalid(0) => CPU_M_AXI_DC_AWVALID(0),
      S00_AXI_bid(2 downto 0) => CPU_M_AXI_DC_BID(2 downto 0),
      S00_AXI_bready(0) => CPU_M_AXI_DC_BREADY(0),
      S00_AXI_bresp(1 downto 0) => CPU_M_AXI_DC_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => CPU_M_AXI_DC_BVALID(0),
      S00_AXI_rdata(31 downto 0) => CPU_M_AXI_DC_RDATA(31 downto 0),
      S00_AXI_rid(2 downto 0) => CPU_M_AXI_DC_RID(2 downto 0),
      S00_AXI_rlast(0) => CPU_M_AXI_DC_RLAST(0),
      S00_AXI_rready(0) => CPU_M_AXI_DC_RREADY(0),
      S00_AXI_rresp(1 downto 0) => CPU_M_AXI_DC_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => CPU_M_AXI_DC_RVALID(0),
      S00_AXI_wdata(31 downto 0) => CPU_M_AXI_DC_WDATA(31 downto 0),
      S00_AXI_wlast(0) => CPU_M_AXI_DC_WLAST(0),
      S00_AXI_wready(0) => CPU_M_AXI_DC_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => CPU_M_AXI_DC_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => CPU_M_AXI_DC_WVALID(0),
      S01_AXI_araddr(31 downto 0) => CPU_M_AXI_IC_ARADDR(31 downto 0),
      S01_AXI_arburst(1 downto 0) => CPU_M_AXI_IC_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => CPU_M_AXI_IC_ARCACHE(3 downto 0),
      S01_AXI_arid(0) => CPU_M_AXI_IC_ARID(0),
      S01_AXI_arlen(7 downto 0) => CPU_M_AXI_IC_ARLEN(7 downto 0),
      S01_AXI_arlock(0) => CPU_M_AXI_IC_ARLOCK(0),
      S01_AXI_arprot(2 downto 0) => CPU_M_AXI_IC_ARPROT(2 downto 0),
      S01_AXI_arqos(3 downto 0) => CPU_M_AXI_IC_ARQOS(3 downto 0),
      S01_AXI_arready(0) => CPU_M_AXI_IC_ARREADY(0),
      S01_AXI_arsize(2 downto 0) => CPU_M_AXI_IC_ARSIZE(2 downto 0),
      S01_AXI_arvalid(0) => CPU_M_AXI_IC_ARVALID(0),
      S01_AXI_awaddr(31 downto 0) => CPU_M_AXI_IC_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => CPU_M_AXI_IC_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => CPU_M_AXI_IC_AWCACHE(3 downto 0),
      S01_AXI_awid(0) => CPU_M_AXI_IC_AWID(0),
      S01_AXI_awlen(7 downto 0) => CPU_M_AXI_IC_AWLEN(7 downto 0),
      S01_AXI_awlock(0) => CPU_M_AXI_IC_AWLOCK(0),
      S01_AXI_awprot(2 downto 0) => CPU_M_AXI_IC_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => CPU_M_AXI_IC_AWQOS(3 downto 0),
      S01_AXI_awready(0) => CPU_M_AXI_IC_AWREADY(0),
      S01_AXI_awsize(2 downto 0) => CPU_M_AXI_IC_AWSIZE(2 downto 0),
      S01_AXI_awvalid(0) => CPU_M_AXI_IC_AWVALID(0),
      S01_AXI_bid(2 downto 0) => CPU_M_AXI_IC_BID(2 downto 0),
      S01_AXI_bready(0) => CPU_M_AXI_IC_BREADY(0),
      S01_AXI_bresp(1 downto 0) => CPU_M_AXI_IC_BRESP(1 downto 0),
      S01_AXI_bvalid(0) => CPU_M_AXI_IC_BVALID(0),
      S01_AXI_rdata(31 downto 0) => CPU_M_AXI_IC_RDATA(31 downto 0),
      S01_AXI_rid(2 downto 0) => CPU_M_AXI_IC_RID(2 downto 0),
      S01_AXI_rlast(0) => CPU_M_AXI_IC_RLAST(0),
      S01_AXI_rready(0) => CPU_M_AXI_IC_RREADY(0),
      S01_AXI_rresp(1 downto 0) => CPU_M_AXI_IC_RRESP(1 downto 0),
      S01_AXI_rvalid(0) => CPU_M_AXI_IC_RVALID(0),
      S01_AXI_wdata(31 downto 0) => CPU_M_AXI_IC_WDATA(31 downto 0),
      S01_AXI_wlast(0) => CPU_M_AXI_IC_WLAST(0),
      S01_AXI_wready(0) => CPU_M_AXI_IC_WREADY(0),
      S01_AXI_wstrb(3 downto 0) => CPU_M_AXI_IC_WSTRB(3 downto 0),
      S01_AXI_wvalid(0) => CPU_M_AXI_IC_WVALID(0),
      S02_AXI_araddr(31 downto 0) => Ethernet_M_AXI_SG_ARADDR(31 downto 0),
      S02_AXI_arburst(1 downto 0) => Ethernet_M_AXI_SG_ARBURST(1 downto 0),
      S02_AXI_arcache(3 downto 0) => Ethernet_M_AXI_SG_ARCACHE(3 downto 0),
      S02_AXI_arlen(7 downto 0) => Ethernet_M_AXI_SG_ARLEN(7 downto 0),
      S02_AXI_arprot(2 downto 0) => Ethernet_M_AXI_SG_ARPROT(2 downto 0),
      S02_AXI_arready => Ethernet_M_AXI_SG_ARREADY,
      S02_AXI_arsize(2 downto 0) => Ethernet_M_AXI_SG_ARSIZE(2 downto 0),
      S02_AXI_arvalid => Ethernet_M_AXI_SG_ARVALID,
      S02_AXI_awaddr(31 downto 0) => Ethernet_M_AXI_SG_AWADDR(31 downto 0),
      S02_AXI_awburst(1 downto 0) => Ethernet_M_AXI_SG_AWBURST(1 downto 0),
      S02_AXI_awcache(3 downto 0) => Ethernet_M_AXI_SG_AWCACHE(3 downto 0),
      S02_AXI_awlen(7 downto 0) => Ethernet_M_AXI_SG_AWLEN(7 downto 0),
      S02_AXI_awprot(2 downto 0) => Ethernet_M_AXI_SG_AWPROT(2 downto 0),
      S02_AXI_awready => Ethernet_M_AXI_SG_AWREADY,
      S02_AXI_awsize(2 downto 0) => Ethernet_M_AXI_SG_AWSIZE(2 downto 0),
      S02_AXI_awvalid => Ethernet_M_AXI_SG_AWVALID,
      S02_AXI_bready => Ethernet_M_AXI_SG_BREADY,
      S02_AXI_bresp(1 downto 0) => Ethernet_M_AXI_SG_BRESP(1 downto 0),
      S02_AXI_bvalid => Ethernet_M_AXI_SG_BVALID,
      S02_AXI_rdata(31 downto 0) => Ethernet_M_AXI_SG_RDATA(31 downto 0),
      S02_AXI_rlast => Ethernet_M_AXI_SG_RLAST,
      S02_AXI_rready => Ethernet_M_AXI_SG_RREADY,
      S02_AXI_rresp(1 downto 0) => Ethernet_M_AXI_SG_RRESP(1 downto 0),
      S02_AXI_rvalid => Ethernet_M_AXI_SG_RVALID,
      S02_AXI_wdata(31 downto 0) => Ethernet_M_AXI_SG_WDATA(31 downto 0),
      S02_AXI_wlast => Ethernet_M_AXI_SG_WLAST,
      S02_AXI_wready => Ethernet_M_AXI_SG_WREADY,
      S02_AXI_wstrb(3 downto 0) => Ethernet_M_AXI_SG_WSTRB(3 downto 0),
      S02_AXI_wvalid => Ethernet_M_AXI_SG_WVALID,
      S03_AXI_araddr(31 downto 0) => Ethernet_M_AXI_MM2S_ARADDR(31 downto 0),
      S03_AXI_arburst(1 downto 0) => Ethernet_M_AXI_MM2S_ARBURST(1 downto 0),
      S03_AXI_arcache(3 downto 0) => Ethernet_M_AXI_MM2S_ARCACHE(3 downto 0),
      S03_AXI_arlen(7 downto 0) => Ethernet_M_AXI_MM2S_ARLEN(7 downto 0),
      S03_AXI_arprot(2 downto 0) => Ethernet_M_AXI_MM2S_ARPROT(2 downto 0),
      S03_AXI_arready => Ethernet_M_AXI_MM2S_ARREADY,
      S03_AXI_arsize(2 downto 0) => Ethernet_M_AXI_MM2S_ARSIZE(2 downto 0),
      S03_AXI_arvalid => Ethernet_M_AXI_MM2S_ARVALID,
      S03_AXI_rdata(31 downto 0) => Ethernet_M_AXI_MM2S_RDATA(31 downto 0),
      S03_AXI_rlast => Ethernet_M_AXI_MM2S_RLAST,
      S03_AXI_rready => Ethernet_M_AXI_MM2S_RREADY,
      S03_AXI_rresp(1 downto 0) => Ethernet_M_AXI_MM2S_RRESP(1 downto 0),
      S03_AXI_rvalid => Ethernet_M_AXI_MM2S_RVALID,
      S04_AXI_awaddr(31 downto 0) => Ethernet_M_AXI_S2MM_AWADDR(31 downto 0),
      S04_AXI_awburst(1 downto 0) => Ethernet_M_AXI_S2MM_AWBURST(1 downto 0),
      S04_AXI_awcache(3 downto 0) => Ethernet_M_AXI_S2MM_AWCACHE(3 downto 0),
      S04_AXI_awlen(7 downto 0) => Ethernet_M_AXI_S2MM_AWLEN(7 downto 0),
      S04_AXI_awprot(2 downto 0) => Ethernet_M_AXI_S2MM_AWPROT(2 downto 0),
      S04_AXI_awready => Ethernet_M_AXI_S2MM_AWREADY,
      S04_AXI_awsize(2 downto 0) => Ethernet_M_AXI_S2MM_AWSIZE(2 downto 0),
      S04_AXI_awvalid => Ethernet_M_AXI_S2MM_AWVALID,
      S04_AXI_bready => Ethernet_M_AXI_S2MM_BREADY,
      S04_AXI_bresp(1 downto 0) => Ethernet_M_AXI_S2MM_BRESP(1 downto 0),
      S04_AXI_bvalid => Ethernet_M_AXI_S2MM_BVALID,
      S04_AXI_wdata(31 downto 0) => Ethernet_M_AXI_S2MM_WDATA(31 downto 0),
      S04_AXI_wlast => Ethernet_M_AXI_S2MM_WLAST,
      S04_AXI_wready => Ethernet_M_AXI_S2MM_WREADY,
      S04_AXI_wstrb(3 downto 0) => Ethernet_M_AXI_S2MM_WSTRB(3 downto 0),
      S04_AXI_wvalid => Ethernet_M_AXI_S2MM_WVALID,
      SYS_CLK => SYS_CLK_1,
      SYS_RST_N => SYS_RST_N_1,
      bus_struct_reset(0) => Memory_bus_struct_reset(0),
      device_temp_i(11 downto 0) => xadc_wiz_0_temp_out(11 downto 0),
      mb_debug_sys_rst => mb_debug_sys_rst_1,
      mb_reset => Memory_mb_reset,
      peripheral_aresetn(0) => S_AXI_ARESETN_1(0)
    );
QSPI: component Mars_AX3_QSPI_0
     port map (
      cfgclk => NLW_QSPI_cfgclk_UNCONNECTED,
      cfgmclk => NLW_QSPI_cfgmclk_UNCONNECTED,
      eos => NLW_QSPI_eos_UNCONNECTED,
      ext_spi_clk => Memory_CLK100,
      io0_i => QSPI_SPI_0_IO0_I,
      io0_o => QSPI_SPI_0_IO0_O,
      io0_t => QSPI_SPI_0_IO0_T,
      io1_i => QSPI_SPI_0_IO1_I,
      io1_o => QSPI_SPI_0_IO1_O,
      io1_t => QSPI_SPI_0_IO1_T,
      io2_i => QSPI_SPI_0_IO2_I,
      io2_o => QSPI_SPI_0_IO2_O,
      io2_t => QSPI_SPI_0_IO2_T,
      io3_i => QSPI_SPI_0_IO3_I,
      io3_o => QSPI_SPI_0_IO3_O,
      io3_t => QSPI_SPI_0_IO3_T,
      ip2intc_irpt => QSPI_ip2intc_irpt,
      preq => NLW_QSPI_preq_UNCONNECTED,
      s_axi4_aclk => Memory_CLK100,
      s_axi4_araddr(23 downto 0) => CPU_M06_AXI_ARADDR(23 downto 0),
      s_axi4_arburst(1 downto 0) => CPU_M06_AXI_ARBURST(1 downto 0),
      s_axi4_arcache(3 downto 0) => CPU_M06_AXI_ARCACHE(3 downto 0),
      s_axi4_aresetn => S_AXI_ARESETN_1(0),
      s_axi4_arlen(7 downto 0) => CPU_M06_AXI_ARLEN(7 downto 0),
      s_axi4_arlock => CPU_M06_AXI_ARLOCK(0),
      s_axi4_arprot(2 downto 0) => CPU_M06_AXI_ARPROT(2 downto 0),
      s_axi4_arready => CPU_M06_AXI_ARREADY,
      s_axi4_arsize(2 downto 0) => CPU_M06_AXI_ARSIZE(2 downto 0),
      s_axi4_arvalid => CPU_M06_AXI_ARVALID,
      s_axi4_awaddr(23 downto 0) => CPU_M06_AXI_AWADDR(23 downto 0),
      s_axi4_awburst(1 downto 0) => CPU_M06_AXI_AWBURST(1 downto 0),
      s_axi4_awcache(3 downto 0) => CPU_M06_AXI_AWCACHE(3 downto 0),
      s_axi4_awlen(7 downto 0) => CPU_M06_AXI_AWLEN(7 downto 0),
      s_axi4_awlock => CPU_M06_AXI_AWLOCK(0),
      s_axi4_awprot(2 downto 0) => CPU_M06_AXI_AWPROT(2 downto 0),
      s_axi4_awready => CPU_M06_AXI_AWREADY,
      s_axi4_awsize(2 downto 0) => CPU_M06_AXI_AWSIZE(2 downto 0),
      s_axi4_awvalid => CPU_M06_AXI_AWVALID,
      s_axi4_bready => CPU_M06_AXI_BREADY,
      s_axi4_bresp(1 downto 0) => CPU_M06_AXI_BRESP(1 downto 0),
      s_axi4_bvalid => CPU_M06_AXI_BVALID,
      s_axi4_rdata(31 downto 0) => CPU_M06_AXI_RDATA(31 downto 0),
      s_axi4_rlast => CPU_M06_AXI_RLAST,
      s_axi4_rready => CPU_M06_AXI_RREADY,
      s_axi4_rresp(1 downto 0) => CPU_M06_AXI_RRESP(1 downto 0),
      s_axi4_rvalid => CPU_M06_AXI_RVALID,
      s_axi4_wdata(31 downto 0) => CPU_M06_AXI_WDATA(31 downto 0),
      s_axi4_wlast => CPU_M06_AXI_WLAST,
      s_axi4_wready => CPU_M06_AXI_WREADY,
      s_axi4_wstrb(3 downto 0) => CPU_M06_AXI_WSTRB(3 downto 0),
      s_axi4_wvalid => CPU_M06_AXI_WVALID,
      ss_i(0) => QSPI_SPI_0_SS_I(0),
      ss_o(0) => QSPI_SPI_0_SS_O(0),
      ss_t => QSPI_SPI_0_SS_T
    );
UART: component Mars_AX3_UART_0
     port map (
      interrupt => UART_interrupt,
      rx => UART_UART_RxD,
      s_axi_aclk => Memory_CLK100,
      s_axi_araddr(3 downto 0) => CPU_M03_AXI_ARADDR(3 downto 0),
      s_axi_aresetn => S_AXI_ARESETN_1(0),
      s_axi_arready => CPU_M03_AXI_ARREADY,
      s_axi_arvalid => CPU_M03_AXI_ARVALID(0),
      s_axi_awaddr(3 downto 0) => CPU_M03_AXI_AWADDR(3 downto 0),
      s_axi_awready => CPU_M03_AXI_AWREADY,
      s_axi_awvalid => CPU_M03_AXI_AWVALID(0),
      s_axi_bready => CPU_M03_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => CPU_M03_AXI_BRESP(1 downto 0),
      s_axi_bvalid => CPU_M03_AXI_BVALID,
      s_axi_rdata(31 downto 0) => CPU_M03_AXI_RDATA(31 downto 0),
      s_axi_rready => CPU_M03_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => CPU_M03_AXI_RRESP(1 downto 0),
      s_axi_rvalid => CPU_M03_AXI_RVALID,
      s_axi_wdata(31 downto 0) => CPU_M03_AXI_WDATA(31 downto 0),
      s_axi_wready => CPU_M03_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => CPU_M03_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => CPU_M03_AXI_WVALID(0),
      tx => UART_UART_TxD
    );
axi_timer: component Mars_AX3_axi_timer_0
     port map (
      capturetrig0 => '0',
      capturetrig1 => '0',
      freeze => '0',
      generateout0 => NLW_axi_timer_generateout0_UNCONNECTED,
      generateout1 => NLW_axi_timer_generateout1_UNCONNECTED,
      interrupt => axi_timer_interrupt,
      pwm0 => NLW_axi_timer_pwm0_UNCONNECTED,
      s_axi_aclk => Memory_CLK100,
      s_axi_araddr(4 downto 0) => CPU_M04_AXI_ARADDR(4 downto 0),
      s_axi_aresetn => S_AXI_ARESETN_1(0),
      s_axi_arready => CPU_M04_AXI_ARREADY,
      s_axi_arvalid => CPU_M04_AXI_ARVALID(0),
      s_axi_awaddr(4 downto 0) => CPU_M04_AXI_AWADDR(4 downto 0),
      s_axi_awready => CPU_M04_AXI_AWREADY,
      s_axi_awvalid => CPU_M04_AXI_AWVALID(0),
      s_axi_bready => CPU_M04_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => CPU_M04_AXI_BRESP(1 downto 0),
      s_axi_bvalid => CPU_M04_AXI_BVALID,
      s_axi_rdata(31 downto 0) => CPU_M04_AXI_RDATA(31 downto 0),
      s_axi_rready => CPU_M04_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => CPU_M04_AXI_RRESP(1 downto 0),
      s_axi_rvalid => CPU_M04_AXI_RVALID,
      s_axi_wdata(31 downto 0) => CPU_M04_AXI_WDATA(31 downto 0),
      s_axi_wready => CPU_M04_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => CPU_M04_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => CPU_M04_AXI_WVALID(0)
    );
microblaze_xlconcat: component Mars_AX3_microblaze_xlconcat_0
     port map (
      In0(0) => CPU_Interrupt,
      In1(0) => axi_timer_interrupt,
      In2(0) => UART_interrupt,
      In3(0) => QSPI_ip2intc_irpt,
      In4(0) => IIC_iic2intc_irpt,
      In5(0) => xadc_wiz_0_ip2intc_irpt,
      In6(0) => Ethernet_mm2s_introut,
      In7(0) => Ethernet_s2mm_introut,
      In8(0) => Ethernet_mac_irq,
      In9(0) => Ethernet_interrupt,
      dout(9 downto 0) => microblaze_xlconcat_dout(9 downto 0)
    );
xadc_wiz_0: component Mars_AX3_xadc_wiz_0_0
     port map (
      alarm_out => NLW_xadc_wiz_0_alarm_out_UNCONNECTED,
      busy_out => NLW_xadc_wiz_0_busy_out_UNCONNECTED,
      channel_out(4 downto 0) => NLW_xadc_wiz_0_channel_out_UNCONNECTED(4 downto 0),
      eoc_out => NLW_xadc_wiz_0_eoc_out_UNCONNECTED,
      eos_out => NLW_xadc_wiz_0_eos_out_UNCONNECTED,
      ip2intc_irpt => xadc_wiz_0_ip2intc_irpt,
      ot_out => NLW_xadc_wiz_0_ot_out_UNCONNECTED,
      s_axi_aclk => Memory_CLK100,
      s_axi_araddr(10 downto 0) => CPU_M07_AXI_ARADDR(10 downto 0),
      s_axi_aresetn => S_AXI_ARESETN_1(0),
      s_axi_arready => CPU_M07_AXI_ARREADY,
      s_axi_arvalid => CPU_M07_AXI_ARVALID(0),
      s_axi_awaddr(10 downto 0) => CPU_M07_AXI_AWADDR(10 downto 0),
      s_axi_awready => CPU_M07_AXI_AWREADY,
      s_axi_awvalid => CPU_M07_AXI_AWVALID(0),
      s_axi_bready => CPU_M07_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => CPU_M07_AXI_BRESP(1 downto 0),
      s_axi_bvalid => CPU_M07_AXI_BVALID,
      s_axi_rdata(31 downto 0) => CPU_M07_AXI_RDATA(31 downto 0),
      s_axi_rready => CPU_M07_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => CPU_M07_AXI_RRESP(1 downto 0),
      s_axi_rvalid => CPU_M07_AXI_RVALID,
      s_axi_wdata(31 downto 0) => CPU_M07_AXI_WDATA(31 downto 0),
      s_axi_wready => CPU_M07_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => CPU_M07_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => CPU_M07_AXI_WVALID(0),
      temp_out(11 downto 0) => xadc_wiz_0_temp_out(11 downto 0),
      user_temp_alarm_out => NLW_xadc_wiz_0_user_temp_alarm_out_UNCONNECTED,
      vccaux_alarm_out => NLW_xadc_wiz_0_vccaux_alarm_out_UNCONNECTED,
      vccint_alarm_out => NLW_xadc_wiz_0_vccint_alarm_out_UNCONNECTED,
      vn_in => '0',
      vp_in => '0'
    );
end STRUCTURE;
