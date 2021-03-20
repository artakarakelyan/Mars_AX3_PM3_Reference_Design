--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Sat Mar 20 20:56:45 2021
--Host        : Artak-New running 64-bit major release  (build 9200)
--Command     : generate_target Mars_AX3_wrapper.bd
--Design      : Mars_AX3_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mars_AX3_wrapper is
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
    IIC_scl_io : inout STD_LOGIC;
    IIC_sda_io : inout STD_LOGIC;
    LED_N : out STD_LOGIC_VECTOR ( 3 downto 0 );
    MDIO_mdc : out STD_LOGIC;
    MDIO_mdio_io : inout STD_LOGIC;
    QSPI_io0_io : inout STD_LOGIC;
    QSPI_io1_io : inout STD_LOGIC;
    QSPI_io2_io : inout STD_LOGIC;
    QSPI_io3_io : inout STD_LOGIC;
    QSPI_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
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
end Mars_AX3_wrapper;

architecture STRUCTURE of Mars_AX3_wrapper is
  component Mars_AX3 is
  port (
    IIC_scl_i : in STD_LOGIC;
    IIC_scl_o : out STD_LOGIC;
    IIC_scl_t : out STD_LOGIC;
    IIC_sda_i : in STD_LOGIC;
    IIC_sda_o : out STD_LOGIC;
    IIC_sda_t : out STD_LOGIC;
    CLK50 : out STD_LOGIC;
    CLK100 : out STD_LOGIC;
    CLK200 : out STD_LOGIC;
    SYS_CLK : in STD_LOGIC;
    SYS_RST_N : in STD_LOGIC;
    DDR3_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR3_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR3_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR3_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    DDR3_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR3_ras_n : out STD_LOGIC;
    DDR3_cas_n : out STD_LOGIC;
    DDR3_we_n : out STD_LOGIC;
    DDR3_reset_n : out STD_LOGIC;
    DDR3_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR3_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    MDIO_mdc : out STD_LOGIC;
    MDIO_mdio_i : in STD_LOGIC;
    MDIO_mdio_o : out STD_LOGIC;
    MDIO_mdio_t : out STD_LOGIC;
    RGMII_rd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RGMII_rx_ctl : in STD_LOGIC;
    RGMII_rxc : in STD_LOGIC;
    RGMII_td : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RGMII_tx_ctl : out STD_LOGIC;
    RGMII_txc : out STD_LOGIC;
    ETH_RST_N : out STD_LOGIC_VECTOR ( 0 to 0 );
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
    UART_rxd : in STD_LOGIC;
    UART_txd : out STD_LOGIC;
    LED_N : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component Mars_AX3;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal IIC_scl_i : STD_LOGIC;
  signal IIC_scl_o : STD_LOGIC;
  signal IIC_scl_t : STD_LOGIC;
  signal IIC_sda_i : STD_LOGIC;
  signal IIC_sda_o : STD_LOGIC;
  signal IIC_sda_t : STD_LOGIC;
  signal MDIO_mdio_i : STD_LOGIC;
  signal MDIO_mdio_o : STD_LOGIC;
  signal MDIO_mdio_t : STD_LOGIC;
  signal QSPI_io0_i : STD_LOGIC;
  signal QSPI_io0_o : STD_LOGIC;
  signal QSPI_io0_t : STD_LOGIC;
  signal QSPI_io1_i : STD_LOGIC;
  signal QSPI_io1_o : STD_LOGIC;
  signal QSPI_io1_t : STD_LOGIC;
  signal QSPI_io2_i : STD_LOGIC;
  signal QSPI_io2_o : STD_LOGIC;
  signal QSPI_io2_t : STD_LOGIC;
  signal QSPI_io3_i : STD_LOGIC;
  signal QSPI_io3_o : STD_LOGIC;
  signal QSPI_io3_t : STD_LOGIC;
  signal QSPI_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal QSPI_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal QSPI_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal QSPI_ss_t : STD_LOGIC;
begin
IIC_scl_iobuf: component IOBUF
     port map (
      I => IIC_scl_o,
      IO => IIC_scl_io,
      O => IIC_scl_i,
      T => IIC_scl_t
    );
IIC_sda_iobuf: component IOBUF
     port map (
      I => IIC_sda_o,
      IO => IIC_sda_io,
      O => IIC_sda_i,
      T => IIC_sda_t
    );
MDIO_mdio_iobuf: component IOBUF
     port map (
      I => MDIO_mdio_o,
      IO => MDIO_mdio_io,
      O => MDIO_mdio_i,
      T => MDIO_mdio_t
    );
Mars_AX3_i: component Mars_AX3
     port map (
      CLK100 => CLK100,
      CLK200 => CLK200,
      CLK50 => CLK50,
      DDR3_addr(13 downto 0) => DDR3_addr(13 downto 0),
      DDR3_ba(2 downto 0) => DDR3_ba(2 downto 0),
      DDR3_cas_n => DDR3_cas_n,
      DDR3_ck_n(0) => DDR3_ck_n(0),
      DDR3_ck_p(0) => DDR3_ck_p(0),
      DDR3_cke(0) => DDR3_cke(0),
      DDR3_dm(1 downto 0) => DDR3_dm(1 downto 0),
      DDR3_dq(15 downto 0) => DDR3_dq(15 downto 0),
      DDR3_dqs_n(1 downto 0) => DDR3_dqs_n(1 downto 0),
      DDR3_dqs_p(1 downto 0) => DDR3_dqs_p(1 downto 0),
      DDR3_odt(0) => DDR3_odt(0),
      DDR3_ras_n => DDR3_ras_n,
      DDR3_reset_n => DDR3_reset_n,
      DDR3_we_n => DDR3_we_n,
      ETH_RST_N(0) => ETH_RST_N(0),
      IIC_scl_i => IIC_scl_i,
      IIC_scl_o => IIC_scl_o,
      IIC_scl_t => IIC_scl_t,
      IIC_sda_i => IIC_sda_i,
      IIC_sda_o => IIC_sda_o,
      IIC_sda_t => IIC_sda_t,
      LED_N(3 downto 0) => LED_N(3 downto 0),
      MDIO_mdc => MDIO_mdc,
      MDIO_mdio_i => MDIO_mdio_i,
      MDIO_mdio_o => MDIO_mdio_o,
      MDIO_mdio_t => MDIO_mdio_t,
      QSPI_io0_i => QSPI_io0_i,
      QSPI_io0_o => QSPI_io0_o,
      QSPI_io0_t => QSPI_io0_t,
      QSPI_io1_i => QSPI_io1_i,
      QSPI_io1_o => QSPI_io1_o,
      QSPI_io1_t => QSPI_io1_t,
      QSPI_io2_i => QSPI_io2_i,
      QSPI_io2_o => QSPI_io2_o,
      QSPI_io2_t => QSPI_io2_t,
      QSPI_io3_i => QSPI_io3_i,
      QSPI_io3_o => QSPI_io3_o,
      QSPI_io3_t => QSPI_io3_t,
      QSPI_ss_i(0) => QSPI_ss_i_0(0),
      QSPI_ss_o(0) => QSPI_ss_o_0(0),
      QSPI_ss_t => QSPI_ss_t,
      RGMII_rd(3 downto 0) => RGMII_rd(3 downto 0),
      RGMII_rx_ctl => RGMII_rx_ctl,
      RGMII_rxc => RGMII_rxc,
      RGMII_td(3 downto 0) => RGMII_td(3 downto 0),
      RGMII_tx_ctl => RGMII_tx_ctl,
      RGMII_txc => RGMII_txc,
      SYS_CLK => SYS_CLK,
      SYS_RST_N => SYS_RST_N,
      UART_rxd => UART_rxd,
      UART_txd => UART_txd
    );
QSPI_io0_iobuf: component IOBUF
     port map (
      I => QSPI_io0_o,
      IO => QSPI_io0_io,
      O => QSPI_io0_i,
      T => QSPI_io0_t
    );
QSPI_io1_iobuf: component IOBUF
     port map (
      I => QSPI_io1_o,
      IO => QSPI_io1_io,
      O => QSPI_io1_i,
      T => QSPI_io1_t
    );
QSPI_io2_iobuf: component IOBUF
     port map (
      I => QSPI_io2_o,
      IO => QSPI_io2_io,
      O => QSPI_io2_i,
      T => QSPI_io2_t
    );
QSPI_io3_iobuf: component IOBUF
     port map (
      I => QSPI_io3_o,
      IO => QSPI_io3_io,
      O => QSPI_io3_i,
      T => QSPI_io3_t
    );
QSPI_ss_iobuf_0: component IOBUF
     port map (
      I => QSPI_ss_o_0(0),
      IO => QSPI_ss_io(0),
      O => QSPI_ss_i_0(0),
      T => QSPI_ss_t
    );
end STRUCTURE;
