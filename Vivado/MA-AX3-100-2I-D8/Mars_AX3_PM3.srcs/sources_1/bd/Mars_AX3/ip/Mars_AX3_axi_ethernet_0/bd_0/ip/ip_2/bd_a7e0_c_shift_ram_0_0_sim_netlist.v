// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat Mar 20 21:01:48 2021
// Host        : Artak-New running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Mars_AX3_PM3_Reference_Design/Vivado/MA-AX3-100-2I-D8/Mars_AX3_PM3.srcs/sources_1/bd/Mars_AX3/ip/Mars_AX3_axi_ethernet_0/bd_0/ip/ip_2/bd_a7e0_c_shift_ram_0_0_sim_netlist.v
// Design      : bd_a7e0_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_a7e0_c_shift_ram_0_0,c_shift_ram_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_14,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module bd_a7e0_c_shift_ram_0_0
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
  bd_a7e0_c_shift_ram_0_0_c_shift_ram_v12_0_14 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module bd_a7e0_c_shift_ram_0_0_c_shift_ram_v12_0_14
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
  bd_a7e0_c_shift_ram_0_0_c_shift_ram_v12_0_14_viv i_synth
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
n/woLJ2ejDjSnldaxl+flmGa5GPO6wMka8si+WsQdKZVzB51PDDr9IHkhVddQXWLWhyPH0rGBHGY
26MZMi0Yi0n0dzdviV1frpBUjI5HwcUsnUebEharhtLn1i0RbjLBlLf46CX2SZ6C4PbER1n0hLbp
U+y75Vr+pCVbg53x/avEZpwoEVFoICNJXtJCB4eRPZ5vvtryKxoKZPPPZvyk9YyEQOiTY4FXz6CE
iS9126azzAuOmt7/2TRQXfEsoGkCMjx81WlvLRDYei9bmSjACeUo+DKeq5LA1Nqj0wYRtF2bBbHp
AJynDrZ/mB98toEptZd9gvPfoMKabyEyDYjCbQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ahAvFwGoSTuNLth2fx/xRGWABpEnxxFR/eBfYpj3vzaYyZBpaR1Z1RcEbxNc65pbg1l57H9hiP6y
suQzKrufluQGqO2Bn1PlocJdSzuzI0UUae61gXA17zRDAKcgxO9KK7bhYS32EoI5oTXFl3KnBodJ
mRjA23mdOBQUgdD2+P/WrAPaBo653tI92X/330cqaPjeOIZyOUeRHkdebY8jP1soAVjGDm++OYIj
jGcMEAaPf2kPM901wIhdIr2NFtFHMdElIn9VCKD+EbPUKVXHJbpJqG1c6x9e9IVSlPeyM6nkhZ+M
SwaNn2OEDoLYdVvpWkz7TLaHk/Yz9hmK/lQELA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4736)
`pragma protect data_block
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
30S8MB0=
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
