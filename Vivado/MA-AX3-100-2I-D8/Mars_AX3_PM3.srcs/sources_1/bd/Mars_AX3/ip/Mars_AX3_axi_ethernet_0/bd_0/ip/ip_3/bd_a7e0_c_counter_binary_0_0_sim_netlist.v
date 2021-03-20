// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat Mar 20 21:01:54 2021
// Host        : Artak-New running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Mars_AX3_PM3_Reference_Design/Vivado/MA-AX3-100-2I-D8/Mars_AX3_PM3.srcs/sources_1/bd/Mars_AX3/ip/Mars_AX3_axi_ethernet_0/bd_0/ip/ip_3/bd_a7e0_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_a7e0_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_a7e0_c_counter_binary_0_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module bd_a7e0_c_counter_binary_0_0
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
  bd_a7e0_c_counter_binary_0_0_c_counter_binary_v12_0_14 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module bd_a7e0_c_counter_binary_0_0_c_counter_binary_v12_0_14
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
  bd_a7e0_c_counter_binary_0_0_c_counter_binary_v12_0_14_viv i_synth
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
Lk9SjVC6GqUBdUVz2pALbBBTkgxba1Jn4KYafqUn3FXjmMaQtwsHE/Py0D6TfahA+0c2wflacKIE
6frwEWLoAc1Rdo82mQ+IdW+wxx2beysPcfpqtI6C14RGjPb3hK3Lj3N1eoq/0v6H4x8u0fX8wHNq
aYZ50FUbfxv0IiwyTyUslOza36UR3iu3OoGM57VKEqRMsagq49KlWJbWGwtpPiGeQDYsI2VCVU9G
fLN9pAwfWqgxO5Si59OFoANh7RKPN/9goOUiefkFLxufGTlqWVNV74y9fcmczgHEw50HldENh/6O
aW2Zq/S59BLVQNkUBxo4Iw8ibdPmiLGYbtaDHQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bmLjVWb9pKXvwco/eOzllUie6Eu4J+Q7PQ3aTCI+qLSNyEDrc+8ydswLonwFHVouqr0fII1fK6gz
7Drane2mS814TJhanQG2QodEmdzVBqxEvkXhDnDZawkcSDPHe+9b1n8gKE2MlaFWkEbQ2ciaUIjy
gzjm7HFvbm8IZ7X3lw1pfvnwpnTohec9vWn3yoto9gJ5GAHQOT3FfIb7aFt6cwEaGcqjtY8fGSYM
m8M3q1VTjb+insD+3a79pds6nijWMk6zGRxCNrPeVpnXNoXg2nZWF1NduwEc3YX090nkd+DB+b13
Kk/2yBSV4TW9ebNrzSJAnBXmdYuh/NId4OHPCQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12640)
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
