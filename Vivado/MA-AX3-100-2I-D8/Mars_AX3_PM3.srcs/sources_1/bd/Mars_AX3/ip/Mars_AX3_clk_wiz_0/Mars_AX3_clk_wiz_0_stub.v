// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat Mar 20 21:01:32 2021
// Host        : Artak-New running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/GitHub/Mars_AX3_PM3_Reference_Design/Vivado/MA-AX3-100-2I-D8/Mars_AX3_PM3.srcs/sources_1/bd/Mars_AX3/ip/Mars_AX3_clk_wiz_0/Mars_AX3_clk_wiz_0_stub.v
// Design      : Mars_AX3_clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module Mars_AX3_clk_wiz_0(clk_out1, reset, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,reset,clk_in1" */;
  output clk_out1;
  input reset;
  input clk_in1;
endmodule
