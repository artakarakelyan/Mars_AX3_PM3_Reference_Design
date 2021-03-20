// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat Mar 20 21:01:48 2021
// Host        : Artak-New running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_a7e0_c_shift_ram_0_0_sim_netlist.v
// Design      : bd_a7e0_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_a7e0_c_shift_ram_0_0,c_shift_ram_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_14,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (D,
    CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN Mars_AX3_SDRAM_0_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_14 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "1" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_14
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_14_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
EbXZS4y9cLjOTv9aN2dDC1sJBVVR3T6cbmKAVT9lmEHVIdHGCTfu8iy7QkwIs1KmhdwMqwdjQdXK
KX59vPzAEw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
svosYlCBRVGey6v4WrNTTJ/a5E95XJFz56V4Zc0YljtTgqhYJjaDcp0yGul9TGC5O3yPB4RfWGyi
btg6o3Dcl+FOWudpxsWABJlvSnbhUeNY+1OKCV5sW4s8s0XiKCJje0Ckn8Rp6OvgxUpP6PcdRMvZ
/iOZAbfkFtowP72szm0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bkZxbcKN0VCVZ8Sn45uafqVYQYk99p4mTYGqhmN6rGL2wN71zIp7oyvjrZ5+IkYIHjaRPVw6MFHU
01i0/bnlUJiW8yu2wC0IWq+Qr+7tToxb6o9RWnXK0n99HX1QMXGzkrlEpdmtBZrVGvgv4FixWWZQ
dodQluVohp21teUBqa8WcGsxqwaf1e28uNmi0DepWjqMe9id/BduXSphJGM1DlXD21S42kAcvg1F
rd0pAgZ6lhG9/NzFbvb2jrcNLh6ifBCr2yjVd33eQU68fnkIGCXAggzWpyR3yOvnmG/zCHLWi4gb
PMOlEmzrjfeM8zl2NP1wqpFDnlaPnYEIcaR53A==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uYdetOP0NrAC/6FuAtYFxT5Pr7xP1xI60RhX9Ysmg000CklbBe3op1FJo9+N93iKzuAQn8/dUzat
ZR36c3yAxvWyYey+XkDfh+7aMlphnj5vggVXK9DqeVsHakNPxVCao7RCkkSR5x9XCYQXJlARvh9C
RhB/l2sQN5DF9bDt9yCKJlWeBEbbcjDJ34WronEFGxp/E9TbIEVWGB4V7jnlgc0oxMMYU40V0d4i
oAADER64AUPfYZ+0e97lsHeETWrkCE5+mE0OLxvjypqZXIFAINmnYsr5zMzToF2CiK/NT3DIL+hM
q6OlPRN1R85uBOCDP7qHtxj+CdoOVPKhdBfsMg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
mo9oRLIx4kH0M86v4sywZvgPz5p30+mzb2H1aU6fkraIKHMy5ue8V7ysmq55k9NVOSXTmYoCdFml
rPPuT8ktqPXADjRPNUmPsenolR9+96Fta26fIQSUqMHuwI/y88nM10meyCjIBjD3+oIqsgrFqbaG
saQSaPJ/MMnei2igUfM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MqMRozeQ+7B22v/pgqDAubmlkM+wpqpbsz6L+ntdBscEB6ki7vLly/oGOJTK4ju8/qS8LlggHRaO
xtd0voFIGd0icRz64Q8EBqol0lxXJPuQx4zOa4ucCqaUViJ8DL8xQgErcDHpb1p8W6mgaMCbp1Kn
SuN+ZfS1rS2R+r3eI2jOHh5EF/8a+cFR0oqrSsWzggfrGMzKWWsSLwd0s7UMDTtruNQTcAzYvm5V
RP9lHvvN8So5DeLrtLSl96n6SsbeObAAXX1i6fiyPV/C4IkPyx5F/L/IwAENNAvrINtYTWp3zjEx
G/xKzVTUEKeNs9XMESxa+4oJjG8+036ic0vnUw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IMm39dcG+n5fcIDQcybfOguCUX3GDSDHnE0ukUt3z0GfgxGXQ4udN7KfIK0bhw+jASYUkEQOG82Z
jWNGyelrCJ7tpuvsm9YaIUYr2IJ2QT1Ynkbvb89to7fC2N8oJIj+CoBTtLC86KT5zZElgE6hbiEz
7BmQos82ixAQStfvYXzLNA28OuJ6lb2E0qmPHv4aIX8Fpurga4e+hsxFRIU3Z4ic/LvKJqpD4ezA
/K83dWOlScX9ZuWTi4mAGoqA+zlbNbFwBU8V+8K3oDzdsqo44Z/2l9hMNYUPYCk1/tnKaQd15Ehg
LrY/vRDu7I8Vy15n/vvtYw8+JsW+ZTjk06pwIA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SsO3/u3pdnkO+dB+OKyx1QDt1mi6uw+plCPLC3gD5vGcT/Rw1DFHrlAIQTmqwHN5GzbPEGkjYmZY
9kwB9EjM2gIdSIdoYRB1RyY5bhp3JCgYfTzMPK5LNFIi+g7M+TtGYVMGT8Di35eaWdm5aaUgxJyR
rB3b4SCUL81yP7DQyIwpQFQa4PC7Xf7b/l1KQrz+rVnuLA25Y6pCjkhIHqPImKXB1AIZfdbma0kD
own9h+IJWBIJ2BjOJkXUROMuM/7PUU6G0C+o/q/qITJAS9HIja+EqxZMlLGXOml4m0pXrwayXWl6
J//yfLFAhoQveWL1I3f0/XvBrtcSUqNyZJThzQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rGUo/JqxXHI4LiroeJP/5v98epEBpyTzmJ7YInVFh76jqPQYqQwo7AVwoh9TgiUlhpU9Wb+qQU19
+qvTF/Gqn30nqqrVU/oVBHdlWt4Qs7hNLYOLL2vX0gnNrqLUKTwnZ21AvRsqNAIDdd1qtREs1EeS
42HSzbuUYLsGYNqM8uyFwr0jelHBt5LHDWvXN1qjep+TpbkIqq07XOteo6VssQFqpoz/YTd2B2WE
0lBQSolvgVtGwYzyvQpu1ZzLlU+b0f4KM2H2Ya3wcFnTGTJr+/5jFzS67ngtvo4QtGMsCXIVZ4g3
ExCDIk47At+SmE7ocd0zDTf64FowzSAMc5LF9w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hs34KwSOFx0IyI+JbSCtagEqfaBFIFlFKvC7WEPHTkb0Z996p6B6d3XJbPJopsz9xQzJJG9bPtKA
6pLmAMNVOBS45tVMkbZq3PVYihWY84ANEBEpBlR2wTtsw7TK0cnVuA1BytgT6IuEfAk2dVBVmh5+
LLvFSk9h7jtWXlPLcqKnqU7qUsYeY7aWlk2sIyndOnn8VB7g9eKpBeGT5cO7uOyF7TNhLqlo/58r
QNn+s/3PrJLivJqYqfZQNt90gdP6L1MbOjNW/c3hrK1hCbn28g1XBCQnxvxh8bTnw/VoNf2gsWN2
NOca0dwK9Gy6u3hMX3mq8xEGyrD9Jsh1/ot6mA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
r1+qNIMQ51nOMMhnvq5MHc16BY+4F5LqdB6MABdY6oyF/w7yCO/1epgOa2nh8hDoPdWmdW1fEkI2
Zb6qvL1LFcRHdmy3TAkts3Xxh3aHRuLr60JQjaLDpAFjuHzkHiG6vrwmXOBQu3vYu4Zgxyr5YERs
bAa70yWhLSLjmZPgNA2HFPBbG6sSXnnoeQI2+OxMbiuMuptRxb1Ot2LX0NE2jOd9arSCD05l7Z/4
7Cimv9uh3jC5vTSwvV6AhQKPaON+AaaJaxJ10645jAcsomw7J/18t9ekICFTXZMjnaPhK8lRKLDf
TvcPau4i5MeXXmn12iIzWiSNJ9Kl5JLdfhUkmw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4672)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
