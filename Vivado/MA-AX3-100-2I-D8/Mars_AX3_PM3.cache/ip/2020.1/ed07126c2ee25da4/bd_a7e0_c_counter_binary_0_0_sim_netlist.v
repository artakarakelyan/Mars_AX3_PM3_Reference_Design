// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat Mar 20 21:01:53 2021
// Host        : Artak-New running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_a7e0_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_a7e0_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_a7e0_c_counter_binary_0_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN Mars_AX3_SDRAM_0_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 24}" *) output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1100000000000000000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1100000000000000000000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1100000000000000000000" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1100000000000000000000" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "24" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [23:0]L;
  output THRESH0;
  output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1100000000000000000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1100000000000000000000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
EJFZwtxl4g9/OL6+bopUV8BP4e67HNukCIy7Ih3E75y7soa6GhqEucPXMiOy+mJrcrNwD+HjZ0/I
BwEKIiA4mA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
rZCGWdmPJXoOuANoS8fyUXk7SyF+uTNJL18BfeKc+fxcyRrCB++WrM02adxoUdICz4/92yY8TQgj
xyPC0eaHZcjSLepbnHHgSReIQ1PL0hmufLbye7QTD0ygUXC4MvFVY8s3KeW9cPCqOxkyCSziJQzs
J5OT9XLQno1e9rIBr9M=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I7Zo4frj3tO6FFzeDhpSENS0yd34dQZBtiyIrI/GMASFBUeny6muOD2l0HK69ImRJIOyobvK1+9O
DhxptAc4NzRpY4xUZvr4ix1AhM1Kars1OkrQCWz4a7ciGU/XDblidF3IL0Fa7c41gHIZR9c/Usa6
XL7UEu3aSPQYbZLSDOzeao4VtSSn+dCcjsH4X8zVjSqXg8dcN3fd5C15JaMYg00F2yOFtxwWwZWq
Yvwe1q1PG/wcA1cKAOscANbj4o3O4LjfylNIB6L+Mssxosh+e0+oobWNk/ouBa4k1c3/IzXGSCAs
hEvbI+iqkWJJKZrSb9PZk7S7XSJcScrJO/DGkQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DDRecdVJcCPEpbUqhuwKtKWXteF7XhGc5d+lQn2uiREzbHyuZvQ1wDwAGGrPwE75gjqc7CdHPMOY
8+3nqcEwR4Q5USgQcou3Cyc6C0TnzzDD/dLKPHDWA1s52x8Rx+LBH9WCvBpD5BKkE4o1s3rN1tL2
wTdCqzzKD8YlryKQ4U0lr2bX6Mlf4/nIt2K1eyPKbIrHIvKDThmaIF/qLnLnkE04pksWJ9Af1OVB
46iqBssrR5p6wZc241D4CqSRCRamfP/s1JrTi8bBNCcXhC0f0Aa35UAoG8vnFngHlFd3G2J88cas
Fo7UH4k1BTTfgbQ35ec0XfSbS/qQWS+EgAF+wA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
L11p2bsABDhO9HvT3IM+HulCClFvs/UPexuAVExicKtzrLN7tNvUjSouZSn9KwAjR2hg5ZIJ23uy
1elB+eyEl65vQnoH4+s6Q5K4EIcMo5WVKfIKwgu5Q3Sg/jYW+aWT/kGuc7CazRsTxJ7XPFndpMIM
cxYWx2DLps320t+Be0c=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uublhc2r9VmPPq1tMATsd3XJltn9QRg1/PdCtSlxgFBDDAk13md52Fz+h+DOWptR3Q4i+Sx5IhIP
QIONVNTf1DnoK/wa1lkbd1dROJam8/cZQFiIxnsnSPGXzOGoc0c04xDSCJCCDxiDMF1YTtAqt6nw
yZh1RwOhPpgwUKjeJ4o4TY6/i0xuYAYVc83O6KwI9Ywk9UsfyIQQS8UXFo8zA9eniU2n2NcyAVNj
Y8xZ9PYJfzfDo6dHWsj4Ik588uhfO/bmsf2/ZuY5HCAMQpnda9XzPkVomNjRfsUghko7KipIl2ur
aHh+4i2kI/+cHaihhw3z14aGidBkuYKaopasbA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VYqlyQSuRywWcSrUprXX2UzoaWsJXTTbptzDY9ycgFR91H2uYfY43f80gn0E87Gvj90Qmn0Dl6ck
2VjO2Zn9yATmqtuzi/Etuf29dkl3uyKtk02OitZJEhD1CDyUJHDXKHkPMXOZCBU5CfkrIWw2SsSq
YuQKmvxp4BrhcwXypr+vRSsYd1liMxxuXOdBN5AIyzibGfcR4YUeOokIoP05xZoQOfPQkotMC1B6
SHVKEaBxe37YkyKAkQ0f9eKfnPPLG/G5qeLrFPAiIar0HHpOvdCOO69vi3RG1XqoxtTm/wGwRb5J
ZqzZyTn1Fm55PXyKhlElzXXAv1xPOTbkJXRZNQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EktM4icAEVQRmfzXBBFeRr7d3ZTOU9f+J40sQAiff114nDU+fxlewcv+twlytUk9LMSR67RJlLt4
+ZBTwcuSPZ2Cvrommkp++7rNze0VCD8pSAdj4uo1ZnYWVWmPMQaRIqI88lnAzc5+T/LxEiXKn4ji
AYGs9fja4ME8C0CHbBsg+jfUryleVk1D8jEMCetM7qDx64s/7AGfwzDqMiW2DPCPLKNUsdlOlBYT
JAOnfy6deN7/o7BYxBsE1P4Pib1x1hvR8RwEm38pBOLKGade6KL/1SHmz5N1KGLPSXQXlK53RLTI
Exc4wN04Kg72tf503oGq6Vp90c5pksQ9cc0M+w==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qzYsaSn6YzxyfrxIwv3eyowRK7ZyzZmQHzUmV2AITf6g43c7IV/fwNBDik+XFhLScW2SxsyaGGI7
5n6kAt9uM3GerkCXA+LJQrqshcEyjuvm17vWVovBURqxhTARgZaTs5OtXdhc/wLi5e6lsdyyLtQo
bt66ubjErMgf5+tD8rpn0HkjUYmGv/MBZ0i4bGui735H12aK+wTfhGVOOiuWHCk2zCJJSx3vH4sl
dKtlpg4W0hPEM3TBPHaLnOpIDkrIUaGGN5fm6NJL6US59+Lr8/3mplbD8ld21OKzgLH+5YPRMoo4
1Pbjxkawu5Kk60AsuaR/OxngawaRMd9N4niRfQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h27fp132P4nH1F9PYKoyxas04F31s/VGeyn8rPQwCDNteo4uc2FarvlVpnIPSyPckjtyCbvKYfZn
1G2efhqoQL/so9txxilFmyolHehzkf8A+HGhhboRZnYxZ7InkGAe8W9T5JtjmkGMgg92wq8Twepy
/M4GcmVVvgZYSjQ8jXUmZwZluA5EMmpkZPqnjLdzmGcTBbX94RiQV5FpkttC2exgOf+cXlGJ3Hu8
ekzOhp1PDbEQ3E/zlE7Rf8pNfdVmtQGcrDqbA4HF9o+QEfzcJcCN30WnnKhRzDL1h6fBLlzmJn0F
mydJBC463iC2IE8NY4LviXcM+v84/gPnRJUSuA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qUyQmhp05jMFVUV1BUGlBtZiE+YT/GuVT2bo9wLtJm5oFWgHFzyxHEAApKheIHOubXeqJ0EAWlKk
vQS2Gstdii6yesVGPYd23MQmHsMMOpMkRRWEvU6wX7hwx6FISUyS7uOUDUdgwgpHuvpjit0/EMk9
ERSwVwY6j0q+fvSa86z3L7rWa5qWjtY5duOSrKMaq6QfWX9h79xjtNZNOPRq1WoYUBG4Pbu1CqgB
m9jGdwNTBWPuYxgFpftEd35wXYTzyJJt6szOvVgSdgC840E8PVQ+HKTTx9ng7sXiOlBPYQvY7l5o
Ebdnu800t2VdSE+hXtxQ+oQAnqpxuIUatbcizg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12464)
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
