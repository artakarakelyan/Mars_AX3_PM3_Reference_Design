// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat Mar 20 20:58:41 2021
// Host        : Artak-New running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/GitHub/Mars_AX3_PM3_Reference_Design/Vivado/MA-AX3-100-2I-D8/Mars_AX3_PM3.srcs/sources_1/bd/Mars_AX3/ip/Mars_AX3_axi_ethernet_0/bd_0/ip/ip_5/bd_a7e0_util_vector_logic_0_0_stub.v
// Design      : bd_a7e0_util_vector_logic_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.1" *)
module bd_a7e0_util_vector_logic_0_0(Op1, Res)
/* synthesis syn_black_box black_box_pad_pin="Op1[0:0],Res[0:0]" */;
  input [0:0]Op1;
  output [0:0]Res;
endmodule
