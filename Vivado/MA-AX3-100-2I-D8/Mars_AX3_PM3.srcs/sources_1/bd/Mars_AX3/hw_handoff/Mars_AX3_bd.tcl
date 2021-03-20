
################################################################
# This is a generated script based on design: Mars_AX3
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source Mars_AX3_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-2
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name Mars_AX3

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}


##################################################################
# MIG PRJ FILE TCL PROCs
##################################################################

proc write_mig_file_Mars_AX3_SDRAM_0 { str_mig_prj_filepath } {

   file mkdir [ file dirname "$str_mig_prj_filepath" ]
   set mig_prj_file [open $str_mig_prj_filepath  w+]

   puts $mig_prj_file {﻿<?xml version="1.0" encoding="UTF-8" standalone="no" ?>}
   puts $mig_prj_file {<Project NoOfControllers="1">}
   puts $mig_prj_file {  <!-- IMPORTANT: This is an internal file that has been generated by the MIG software. Any direct editing or changes made to this file may result in unpredictable behavior or data corruption. It is strongly advised that users do not edit the contents of this file. Re-run the MIG GUI with the required settings if any of the options provided below need to be altered. -->}
   puts $mig_prj_file {  <ModuleName>Mars_AX3_SDRAM_0</ModuleName>}
   puts $mig_prj_file {  <dci_inouts_inputs>1</dci_inouts_inputs>}
   puts $mig_prj_file {  <dci_inputs>1</dci_inputs>}
   puts $mig_prj_file {  <Debug_En>OFF</Debug_En>}
   puts $mig_prj_file {  <DataDepth_En>1024</DataDepth_En>}
   puts $mig_prj_file {  <LowPower_En>ON</LowPower_En>}
   puts $mig_prj_file {  <XADC_En>Disabled</XADC_En>}
   puts $mig_prj_file {  <TargetFPGA>xc7a100t-csg324/-2</TargetFPGA>}
   puts $mig_prj_file {  <Version>4.2</Version>}
   puts $mig_prj_file {  <SystemClock>Single-Ended</SystemClock>}
   puts $mig_prj_file {  <ReferenceClock>No Buffer</ReferenceClock>}
   puts $mig_prj_file {  <SysResetPolarity>ACTIVE LOW</SysResetPolarity>}
   puts $mig_prj_file {  <BankSelectionFlag>FALSE</BankSelectionFlag>}
   puts $mig_prj_file {  <InternalVref>0</InternalVref>}
   puts $mig_prj_file {  <dci_hr_inouts_inputs>50 Ohms</dci_hr_inouts_inputs>}
   puts $mig_prj_file {  <dci_cascade>0</dci_cascade>}
   puts $mig_prj_file {  <Controller number="0">}
   puts $mig_prj_file {    <MemoryDevice>DDR3_SDRAM/Components/MT41K128M16XX-15E</MemoryDevice>}
   puts $mig_prj_file {    <TimePeriod>2500</TimePeriod>}
   puts $mig_prj_file {    <VccAuxIO>1.8V</VccAuxIO>}
   puts $mig_prj_file {    <PHYRatio>4:1</PHYRatio>}
   puts $mig_prj_file {    <InputClkFreq>50</InputClkFreq>}
   puts $mig_prj_file {    <UIExtraClocks>1</UIExtraClocks>}
   puts $mig_prj_file {    <MMCM_VCO>800</MMCM_VCO>}
   puts $mig_prj_file {    <MMCMClkOut0>16.000</MMCMClkOut0>}
   puts $mig_prj_file {    <MMCMClkOut1>8</MMCMClkOut1>}
   puts $mig_prj_file {    <MMCMClkOut2>4</MMCMClkOut2>}
   puts $mig_prj_file {    <MMCMClkOut3>1</MMCMClkOut3>}
   puts $mig_prj_file {    <MMCMClkOut4>1</MMCMClkOut4>}
   puts $mig_prj_file {    <DataWidth>16</DataWidth>}
   puts $mig_prj_file {    <DeepMemory>1</DeepMemory>}
   puts $mig_prj_file {    <DataMask>1</DataMask>}
   puts $mig_prj_file {    <ECC>Disabled</ECC>}
   puts $mig_prj_file {    <Ordering>Normal</Ordering>}
   puts $mig_prj_file {    <BankMachineCnt>4</BankMachineCnt>}
   puts $mig_prj_file {    <CustomPart>TRUE</CustomPart>}
   puts $mig_prj_file {    <NewPartName>Mars_AX3</NewPartName>}
   puts $mig_prj_file {    <RowAddress>14</RowAddress>}
   puts $mig_prj_file {    <ColAddress>10</ColAddress>}
   puts $mig_prj_file {    <BankAddress>3</BankAddress>}
   puts $mig_prj_file {    <MemoryVoltage>1.5V</MemoryVoltage>}
   puts $mig_prj_file {    <C0_MEM_SIZE>268435456</C0_MEM_SIZE>}
   puts $mig_prj_file {    <UserMemoryAddressMap>ROW_BANK_COLUMN</UserMemoryAddressMap>}
   puts $mig_prj_file {    <PinSelection>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="J17" SLEW="" VCCAUX_IO="HIGH" name="ddr3_addr[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="G16" SLEW="" VCCAUX_IO="HIGH" name="ddr3_addr[10]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="G18" SLEW="" VCCAUX_IO="HIGH" name="ddr3_addr[11]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="H16" SLEW="" VCCAUX_IO="HIGH" name="ddr3_addr[12]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="G17" SLEW="" VCCAUX_IO="HIGH" name="ddr3_addr[13]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="J14" SLEW="" VCCAUX_IO="HIGH" name="ddr3_addr[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="J18" SLEW="" VCCAUX_IO="HIGH" name="ddr3_addr[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="D18" SLEW="" VCCAUX_IO="HIGH" name="ddr3_addr[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="J13" SLEW="" VCCAUX_IO="HIGH" name="ddr3_addr[4]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="E17" SLEW="" VCCAUX_IO="HIGH" name="ddr3_addr[5]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="K13" SLEW="" VCCAUX_IO="HIGH" name="ddr3_addr[6]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="E18" SLEW="" VCCAUX_IO="HIGH" name="ddr3_addr[7]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="H17" SLEW="" VCCAUX_IO="HIGH" name="ddr3_addr[8]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="F18" SLEW="" VCCAUX_IO="HIGH" name="ddr3_addr[9]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="D17" SLEW="" VCCAUX_IO="HIGH" name="ddr3_ba[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="H14" SLEW="" VCCAUX_IO="HIGH" name="ddr3_ba[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="K15" SLEW="" VCCAUX_IO="HIGH" name="ddr3_ba[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="F16" SLEW="" VCCAUX_IO="HIGH" name="ddr3_cas_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="C17" SLEW="" VCCAUX_IO="HIGH" name="ddr3_ck_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="C16" SLEW="" VCCAUX_IO="HIGH" name="ddr3_ck_p[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="G14" SLEW="" VCCAUX_IO="HIGH" name="ddr3_cke[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="D15" SLEW="" VCCAUX_IO="HIGH" name="ddr3_dm[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="D12" SLEW="" VCCAUX_IO="HIGH" name="ddr3_dm[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="A18" SLEW="" VCCAUX_IO="HIGH" name="ddr3_dq[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="B13" SLEW="" VCCAUX_IO="HIGH" name="ddr3_dq[10]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="D14" SLEW="" VCCAUX_IO="HIGH" name="ddr3_dq[11]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="F13" SLEW="" VCCAUX_IO="HIGH" name="ddr3_dq[12]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="A11" SLEW="" VCCAUX_IO="HIGH" name="ddr3_dq[13]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="F14" SLEW="" VCCAUX_IO="HIGH" name="ddr3_dq[14]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="B11" SLEW="" VCCAUX_IO="HIGH" name="ddr3_dq[15]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="E16" SLEW="" VCCAUX_IO="HIGH" name="ddr3_dq[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="A15" SLEW="" VCCAUX_IO="HIGH" name="ddr3_dq[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="E15" SLEW="" VCCAUX_IO="HIGH" name="ddr3_dq[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="B18" SLEW="" VCCAUX_IO="HIGH" name="ddr3_dq[4]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="B17" SLEW="" VCCAUX_IO="HIGH" name="ddr3_dq[5]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="A16" SLEW="" VCCAUX_IO="HIGH" name="ddr3_dq[6]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="B16" SLEW="" VCCAUX_IO="HIGH" name="ddr3_dq[7]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="B14" SLEW="" VCCAUX_IO="HIGH" name="ddr3_dq[8]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="C14" SLEW="" VCCAUX_IO="HIGH" name="ddr3_dq[9]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="A14" SLEW="" VCCAUX_IO="HIGH" name="ddr3_dqs_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="B12" SLEW="" VCCAUX_IO="HIGH" name="ddr3_dqs_n[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="A13" SLEW="" VCCAUX_IO="HIGH" name="ddr3_dqs_p[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="C12" SLEW="" VCCAUX_IO="HIGH" name="ddr3_dqs_p[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="K16" SLEW="" VCCAUX_IO="HIGH" name="ddr3_odt[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="F15" SLEW="" VCCAUX_IO="HIGH" name="ddr3_ras_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="LVCMOS15" PADName="G13" SLEW="" VCCAUX_IO="HIGH" name="ddr3_reset_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="J15" SLEW="" VCCAUX_IO="HIGH" name="ddr3_we_n"/>}
   puts $mig_prj_file {    </PinSelection>}
   puts $mig_prj_file {    <System_Clock>}
   puts $mig_prj_file {      <Pin Bank="14" PADName="P17(MRCC_P)" name="sys_clk_i"/>}
   puts $mig_prj_file {    </System_Clock>}
   puts $mig_prj_file {    <System_Control>}
   puts $mig_prj_file {      <Pin Bank="Select Bank" PADName="No connect" name="sys_rst"/>}
   puts $mig_prj_file {      <Pin Bank="Select Bank" PADName="No connect" name="init_calib_complete"/>}
   puts $mig_prj_file {      <Pin Bank="Select Bank" PADName="No connect" name="tg_compare_error"/>}
   puts $mig_prj_file {    </System_Control>}
   puts $mig_prj_file {    <TimingParameters>}
   puts $mig_prj_file {      <Parameters tcke="5.625" tfaw="40" tras="35" trcd="13.75" trefi="7.8" trfc="160" trp="13.75" trrd="7.5" trtp="7.5" twtr="7.5"/>}
   puts $mig_prj_file {    </TimingParameters>}
   puts $mig_prj_file {    <mrBurstLength name="Burst Length">8 - Fixed</mrBurstLength>}
   puts $mig_prj_file {    <mrBurstType name="Read Burst Type and Length">Sequential</mrBurstType>}
   puts $mig_prj_file {    <mrCasLatency name="CAS Latency">6</mrCasLatency>}
   puts $mig_prj_file {    <mrMode name="Mode">Normal</mrMode>}
   puts $mig_prj_file {    <mrDllReset name="DLL Reset">No</mrDllReset>}
   puts $mig_prj_file {    <mrPdMode name="DLL control for precharge PD">Slow Exit</mrPdMode>}
   puts $mig_prj_file {    <emrDllEnable name="DLL Enable">Enable</emrDllEnable>}
   puts $mig_prj_file {    <emrOutputDriveStrength name="Output Driver Impedance Control">RZQ/7</emrOutputDriveStrength>}
   puts $mig_prj_file {    <emrMirrorSelection name="Address Mirroring">Disable</emrMirrorSelection>}
   puts $mig_prj_file {    <emrCSSelection name="Controller Chip Select Pin">Disable</emrCSSelection>}
   puts $mig_prj_file {    <emrRTT name="RTT (nominal) - On Die Termination (ODT)">RZQ/4</emrRTT>}
   puts $mig_prj_file {    <emrPosted name="Additive Latency (AL)">0</emrPosted>}
   puts $mig_prj_file {    <emrOCD name="Write Leveling Enable">Disabled</emrOCD>}
   puts $mig_prj_file {    <emrDQS name="TDQS enable">Enabled</emrDQS>}
   puts $mig_prj_file {    <emrRDQS name="Qoff">Output Buffer Enabled</emrRDQS>}
   puts $mig_prj_file {    <mr2PartialArraySelfRefresh name="Partial-Array Self Refresh">Full Array</mr2PartialArraySelfRefresh>}
   puts $mig_prj_file {    <mr2CasWriteLatency name="CAS write latency">5</mr2CasWriteLatency>}
   puts $mig_prj_file {    <mr2AutoSelfRefresh name="Auto Self Refresh">Enabled</mr2AutoSelfRefresh>}
   puts $mig_prj_file {    <mr2SelfRefreshTempRange name="High Temparature Self Refresh Rate">Normal</mr2SelfRefreshTempRange>}
   puts $mig_prj_file {    <mr2RTTWR name="RTT_WR - Dynamic On Die Termination (ODT)">Dynamic ODT off</mr2RTTWR>}
   puts $mig_prj_file {    <PortInterface>AXI</PortInterface>}
   puts $mig_prj_file {    <AXIParameters>}
   puts $mig_prj_file {      <C0_C_RD_WR_ARB_ALGORITHM>RD_PRI_REG</C0_C_RD_WR_ARB_ALGORITHM>}
   puts $mig_prj_file {      <C0_S_AXI_ADDR_WIDTH>28</C0_S_AXI_ADDR_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_DATA_WIDTH>32</C0_S_AXI_DATA_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_ID_WIDTH>3</C0_S_AXI_ID_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_SUPPORTS_NARROW_BURST>0</C0_S_AXI_SUPPORTS_NARROW_BURST>}
   puts $mig_prj_file {    </AXIParameters>}
   puts $mig_prj_file {  </Controller>}
   puts $mig_prj_file {</Project>}

   close $mig_prj_file
}
# End of write_mig_file_Mars_AX3_SDRAM_0()



##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: microblaze_local_memory
proc create_hier_cell_microblaze_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_microblaze_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 LMB_M

  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 LMB_M1


  # Create pins
  create_bd_pin -dir I -type clk Clk
  create_bd_pin -dir I -type rst LMB_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 lmb_bram ]
  set_property -dict [ list \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Use_RSTB_Pin {true} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net Conn [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins LMB_M] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins LMB_M1] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net dlmb_bram_if_cntlr_BRAM_PORT [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net ilmb_bram_if_cntlr_BRAM_PORT [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins LMB_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net Net1 [get_bd_pins Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Memory
proc create_hier_cell_Memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_Memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR3

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S01_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S02_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S03_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S04_AXI


  # Create pins
  create_bd_pin -dir O -type clk CLK50
  create_bd_pin -dir O -type clk CLK100
  create_bd_pin -dir O -type clk CLK200
  create_bd_pin -dir I -type clk SYS_CLK
  create_bd_pin -dir I -type rst SYS_RST_N
  create_bd_pin -dir O -from 0 -to 0 -type rst bus_struct_reset
  create_bd_pin -dir I -from 11 -to 0 device_temp_i
  create_bd_pin -dir I -type rst mb_debug_sys_rst
  create_bd_pin -dir O -type rst mb_reset
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn

  # Create instance: SDRAM, and set properties
  set SDRAM [ create_bd_cell -type ip -vlnv xilinx.com:ip:mig_7series:4.2 SDRAM ]

  # Generate the PRJ File for MIG
  set str_mig_folder [get_property IP_DIR [ get_ips [ get_property CONFIG.Component_Name $SDRAM ] ] ]
  set str_mig_file_name mig.prj
  set str_mig_file_path ${str_mig_folder}/${str_mig_file_name}

  write_mig_file_Mars_AX3_SDRAM_0 $str_mig_file_path

  set_property -dict [ list \
   CONFIG.XML_INPUT_FILE {mig.prj} \
 ] $SDRAM

  # Create instance: interconnect_DDR, and set properties
  set interconnect_DDR [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 interconnect_DDR ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {5} \
 ] $interconnect_DDR

  # Create instance: rst_mig_7series_0_100M_0, and set properties
  set rst_mig_7series_0_100M_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_mig_7series_0_100M_0 ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {0} \
 ] $rst_mig_7series_0_100M_0

  # Create instance: rst_mig_7series_0_100M_1, and set properties
  set rst_mig_7series_0_100M_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_mig_7series_0_100M_1 ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {0} \
 ] $rst_mig_7series_0_100M_1

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins DDR3] [get_bd_intf_pins SDRAM/DDR3]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins S00_AXI] [get_bd_intf_pins interconnect_DDR/S00_AXI]
  connect_bd_intf_net -intf_net S01_AXI_1 [get_bd_intf_pins S01_AXI] [get_bd_intf_pins interconnect_DDR/S01_AXI]
  connect_bd_intf_net -intf_net S02_AXI_1 [get_bd_intf_pins S02_AXI] [get_bd_intf_pins interconnect_DDR/S02_AXI]
  connect_bd_intf_net -intf_net S03_AXI_1 [get_bd_intf_pins S03_AXI] [get_bd_intf_pins interconnect_DDR/S03_AXI]
  connect_bd_intf_net -intf_net S04_AXI_1 [get_bd_intf_pins S04_AXI] [get_bd_intf_pins interconnect_DDR/S04_AXI]
  connect_bd_intf_net -intf_net interconnect_DDR_M00_AXI [get_bd_intf_pins SDRAM/S_AXI] [get_bd_intf_pins interconnect_DDR/M00_AXI]

  # Create port connections
  connect_bd_net -net SDRAM_mmcm_locked [get_bd_pins SDRAM/mmcm_locked] [get_bd_pins rst_mig_7series_0_100M_0/dcm_locked] [get_bd_pins rst_mig_7series_0_100M_1/dcm_locked]
  connect_bd_net -net SDRAM_ui_addn_clk_0 [get_bd_pins CLK50] [get_bd_pins SDRAM/ui_addn_clk_0]
  connect_bd_net -net SDRAM_ui_addn_clk_1 [get_bd_pins CLK100] [get_bd_pins SDRAM/ui_addn_clk_1] [get_bd_pins interconnect_DDR/ACLK] [get_bd_pins interconnect_DDR/S00_ACLK] [get_bd_pins interconnect_DDR/S01_ACLK] [get_bd_pins interconnect_DDR/S02_ACLK] [get_bd_pins interconnect_DDR/S03_ACLK] [get_bd_pins interconnect_DDR/S04_ACLK] [get_bd_pins rst_mig_7series_0_100M_0/slowest_sync_clk]
  connect_bd_net -net SDRAM_ui_addn_clk_2 [get_bd_pins CLK200] [get_bd_pins SDRAM/clk_ref_i] [get_bd_pins SDRAM/ui_addn_clk_2]
  connect_bd_net -net SDRAM_ui_clk [get_bd_pins SDRAM/ui_clk] [get_bd_pins interconnect_DDR/M00_ACLK] [get_bd_pins rst_mig_7series_0_100M_1/slowest_sync_clk]
  connect_bd_net -net SDRAM_ui_clk_sync_rst [get_bd_pins SDRAM/ui_clk_sync_rst] [get_bd_pins rst_mig_7series_0_100M_0/ext_reset_in] [get_bd_pins rst_mig_7series_0_100M_1/ext_reset_in]
  connect_bd_net -net SYS_CLK_1 [get_bd_pins SYS_CLK] [get_bd_pins SDRAM/sys_clk_i]
  connect_bd_net -net SYS_RST_N_1 [get_bd_pins SYS_RST_N] [get_bd_pins SDRAM/sys_rst]
  connect_bd_net -net device_temp_i_1 [get_bd_pins device_temp_i] [get_bd_pins SDRAM/device_temp_i]
  connect_bd_net -net mb_debug_sys_rst_1 [get_bd_pins mb_debug_sys_rst] [get_bd_pins rst_mig_7series_0_100M_0/mb_debug_sys_rst]
  connect_bd_net -net rst_mig_7series_0_100M_0_bus_struct_reset [get_bd_pins bus_struct_reset] [get_bd_pins rst_mig_7series_0_100M_0/bus_struct_reset]
  connect_bd_net -net rst_mig_7series_0_100M_0_mb_reset [get_bd_pins mb_reset] [get_bd_pins rst_mig_7series_0_100M_0/mb_reset]
  connect_bd_net -net rst_mig_7series_0_100M_0_peripheral_aresetn [get_bd_pins peripheral_aresetn] [get_bd_pins rst_mig_7series_0_100M_0/peripheral_aresetn]
  connect_bd_net -net rst_mig_7series_0_100M_1_interconnect_aresetn [get_bd_pins interconnect_DDR/M00_ARESETN] [get_bd_pins interconnect_DDR/S00_ARESETN] [get_bd_pins interconnect_DDR/S01_ARESETN] [get_bd_pins interconnect_DDR/S02_ARESETN] [get_bd_pins interconnect_DDR/S03_ARESETN] [get_bd_pins interconnect_DDR/S04_ARESETN] [get_bd_pins rst_mig_7series_0_100M_1/interconnect_aresetn]
  connect_bd_net -net rst_mig_7series_0_100M_1_peripheral_aresetn [get_bd_pins SDRAM/aresetn] [get_bd_pins interconnect_DDR/ARESETN] [get_bd_pins rst_mig_7series_0_100M_1/peripheral_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Ethernet
proc create_hier_cell_Ethernet { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_Ethernet() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:mdio_rtl:1.0 MDIO

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_MM2S

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_S2MM

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_SG

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 RGMII

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_LITE

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi


  # Create pins
  create_bd_pin -dir O -from 0 -to 0 -type rst ETH_RST_N
  create_bd_pin -dir I -type clk clk_in1
  create_bd_pin -dir O -type intr interrupt
  create_bd_pin -dir O -type intr mac_irq
  create_bd_pin -dir O -type intr mm2s_introut
  create_bd_pin -dir I -type clk ref_clk
  create_bd_pin -dir I -type rst reset
  create_bd_pin -dir O -type intr s2mm_introut
  create_bd_pin -dir I -type rst s_axi_lite_resetn

  # Create instance: axi_dma, and set properties
  set axi_dma [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma ]
  set_property -dict [ list \
   CONFIG.c_include_mm2s_dre {1} \
   CONFIG.c_include_s2mm_dre {1} \
   CONFIG.c_sg_length_width {16} \
   CONFIG.c_sg_use_stsapp_length {1} \
 ] $axi_dma

  # Create instance: axi_ethernet, and set properties
  set axi_ethernet [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernet:7.2 axi_ethernet ]
  set_property -dict [ list \
   CONFIG.PHY_TYPE {RGMII} \
 ] $axi_ethernet

  # Create instance: clk_wiz, and set properties
  set clk_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {125.247} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {125.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {8.000} \
   CONFIG.USE_LOCKED {false} \
 ] $clk_wiz

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins MDIO] [get_bd_intf_pins axi_ethernet/mdio]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins RGMII] [get_bd_intf_pins axi_ethernet/rgmii]
  connect_bd_intf_net -intf_net S_AXI_LITE_1 [get_bd_intf_pins S_AXI_LITE] [get_bd_intf_pins axi_dma/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_dma_M_AXIS_CNTRL [get_bd_intf_pins axi_dma/M_AXIS_CNTRL] [get_bd_intf_pins axi_ethernet/s_axis_txc]
  connect_bd_intf_net -intf_net axi_dma_M_AXIS_MM2S [get_bd_intf_pins axi_dma/M_AXIS_MM2S] [get_bd_intf_pins axi_ethernet/s_axis_txd]
  connect_bd_intf_net -intf_net axi_dma_M_AXI_MM2S [get_bd_intf_pins M_AXI_MM2S] [get_bd_intf_pins axi_dma/M_AXI_MM2S]
  connect_bd_intf_net -intf_net axi_dma_M_AXI_S2MM [get_bd_intf_pins M_AXI_S2MM] [get_bd_intf_pins axi_dma/M_AXI_S2MM]
  connect_bd_intf_net -intf_net axi_dma_M_AXI_SG [get_bd_intf_pins M_AXI_SG] [get_bd_intf_pins axi_dma/M_AXI_SG]
  connect_bd_intf_net -intf_net axi_ethernet_m_axis_rxd [get_bd_intf_pins axi_dma/S_AXIS_S2MM] [get_bd_intf_pins axi_ethernet/m_axis_rxd]
  connect_bd_intf_net -intf_net axi_ethernet_m_axis_rxs [get_bd_intf_pins axi_dma/S_AXIS_STS] [get_bd_intf_pins axi_ethernet/m_axis_rxs]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins axi_ethernet/s_axi]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins clk_in1] [get_bd_pins axi_dma/m_axi_mm2s_aclk] [get_bd_pins axi_dma/m_axi_s2mm_aclk] [get_bd_pins axi_dma/m_axi_sg_aclk] [get_bd_pins axi_dma/s_axi_lite_aclk] [get_bd_pins axi_ethernet/axis_clk] [get_bd_pins axi_ethernet/s_axi_lite_clk] [get_bd_pins clk_wiz/clk_in1]
  connect_bd_net -net Net1 [get_bd_pins s_axi_lite_resetn] [get_bd_pins axi_dma/axi_resetn] [get_bd_pins axi_ethernet/s_axi_lite_resetn]
  connect_bd_net -net axi_dma_mm2s_cntrl_reset_out_n [get_bd_pins axi_dma/mm2s_cntrl_reset_out_n] [get_bd_pins axi_ethernet/axi_txc_arstn]
  connect_bd_net -net axi_dma_mm2s_introut [get_bd_pins mm2s_introut] [get_bd_pins axi_dma/mm2s_introut]
  connect_bd_net -net axi_dma_mm2s_prmry_reset_out_n [get_bd_pins axi_dma/mm2s_prmry_reset_out_n] [get_bd_pins axi_ethernet/axi_txd_arstn]
  connect_bd_net -net axi_dma_s2mm_introut [get_bd_pins s2mm_introut] [get_bd_pins axi_dma/s2mm_introut]
  connect_bd_net -net axi_dma_s2mm_prmry_reset_out_n [get_bd_pins axi_dma/s2mm_prmry_reset_out_n] [get_bd_pins axi_ethernet/axi_rxd_arstn]
  connect_bd_net -net axi_dma_s2mm_sts_reset_out_n [get_bd_pins axi_dma/s2mm_sts_reset_out_n] [get_bd_pins axi_ethernet/axi_rxs_arstn]
  connect_bd_net -net axi_ethernet_interrupt [get_bd_pins interrupt] [get_bd_pins axi_ethernet/interrupt]
  connect_bd_net -net axi_ethernet_mac_irq [get_bd_pins mac_irq] [get_bd_pins axi_ethernet/mac_irq]
  connect_bd_net -net axi_ethernet_phy_rst_n [get_bd_pins ETH_RST_N] [get_bd_pins axi_ethernet/phy_rst_n]
  connect_bd_net -net clk_wiz_clk_out1 [get_bd_pins axi_ethernet/gtx_clk] [get_bd_pins clk_wiz/clk_out1]
  connect_bd_net -net ref_clk_1 [get_bd_pins ref_clk] [get_bd_pins axi_ethernet/ref_clk]
  connect_bd_net -net reset_1 [get_bd_pins reset] [get_bd_pins clk_wiz/reset]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: CPU
proc create_hier_cell_CPU { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_CPU() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M02_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M03_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M04_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M05_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M06_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M07_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M09_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M10_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_DC

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_IC


  # Create pins
  create_bd_pin -dir I -type clk Clk
  create_bd_pin -dir O -type rst Debug_SYS_Rst
  create_bd_pin -dir O -type intr Interrupt
  create_bd_pin -dir I -from 0 -to 0 -type rst LMB_Rst
  create_bd_pin -dir I -type rst Reset
  create_bd_pin -dir I -type rst S_AXI_ARESETN
  create_bd_pin -dir I -from 9 -to 0 -type intr intr

  # Create instance: interconnect_CPU, and set properties
  set interconnect_CPU [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 interconnect_CPU ]
  set_property -dict [ list \
   CONFIG.NUM_MI {11} \
   CONFIG.NUM_SI {1} \
 ] $interconnect_CPU

  # Create instance: mdm_0, and set properties
  set mdm_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_0 ]
  set_property -dict [ list \
   CONFIG.C_USE_UART {1} \
 ] $mdm_0

  # Create instance: microblaze_CPU, and set properties
  set microblaze_CPU [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:11.0 microblaze_CPU ]
  set_property -dict [ list \
   CONFIG.C_DCACHE_ADDR_TAG {15} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_USE_DCACHE {1} \
   CONFIG.C_USE_ICACHE {1} \
 ] $microblaze_CPU

  # Create instance: microblaze_axi_intc, and set properties
  set microblaze_axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 microblaze_axi_intc ]
  set_property -dict [ list \
   CONFIG.C_DISABLE_SYNCHRONIZERS {1} \
   CONFIG.C_HAS_FAST {1} \
 ] $microblaze_axi_intc

  # Create instance: microblaze_local_memory
  create_hier_cell_microblaze_local_memory $hier_obj microblaze_local_memory

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins M04_AXI] [get_bd_intf_pins interconnect_CPU/M04_AXI]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins M07_AXI] [get_bd_intf_pins interconnect_CPU/M07_AXI]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins M05_AXI] [get_bd_intf_pins interconnect_CPU/M05_AXI]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins M02_AXI] [get_bd_intf_pins interconnect_CPU/M02_AXI]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins M06_AXI] [get_bd_intf_pins interconnect_CPU/M06_AXI]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins M03_AXI] [get_bd_intf_pins interconnect_CPU/M03_AXI]
  connect_bd_intf_net -intf_net interconnect_CPU_M00_AXI [get_bd_intf_pins interconnect_CPU/M00_AXI] [get_bd_intf_pins mdm_0/S_AXI]
  connect_bd_intf_net -intf_net interconnect_CPU_M01_AXI [get_bd_intf_pins interconnect_CPU/M01_AXI] [get_bd_intf_pins microblaze_axi_intc/s_axi]
  connect_bd_intf_net -intf_net interconnect_CPU_M09_AXI [get_bd_intf_pins M09_AXI] [get_bd_intf_pins interconnect_CPU/M09_AXI]
  connect_bd_intf_net -intf_net interconnect_CPU_M10_AXI [get_bd_intf_pins M10_AXI] [get_bd_intf_pins interconnect_CPU/M10_AXI]
  connect_bd_intf_net -intf_net mdm_0_MBDEBUG_0 [get_bd_intf_pins mdm_0/MBDEBUG_0] [get_bd_intf_pins microblaze_CPU/DEBUG]
  connect_bd_intf_net -intf_net microblaze_CPU_DLMB [get_bd_intf_pins microblaze_CPU/DLMB] [get_bd_intf_pins microblaze_local_memory/LMB_M]
  connect_bd_intf_net -intf_net microblaze_CPU_ILMB [get_bd_intf_pins microblaze_CPU/ILMB] [get_bd_intf_pins microblaze_local_memory/LMB_M1]
  connect_bd_intf_net -intf_net microblaze_CPU_M_AXI_DC [get_bd_intf_pins M_AXI_DC] [get_bd_intf_pins microblaze_CPU/M_AXI_DC]
  connect_bd_intf_net -intf_net microblaze_CPU_M_AXI_DP [get_bd_intf_pins interconnect_CPU/S00_AXI] [get_bd_intf_pins microblaze_CPU/M_AXI_DP]
  connect_bd_intf_net -intf_net microblaze_CPU_M_AXI_IC [get_bd_intf_pins M_AXI_IC] [get_bd_intf_pins microblaze_CPU/M_AXI_IC]
  connect_bd_intf_net -intf_net microblaze_axi_intc_interrupt [get_bd_intf_pins microblaze_CPU/INTERRUPT] [get_bd_intf_pins microblaze_axi_intc/interrupt]

  # Create port connections
  connect_bd_net -net Clk_1 [get_bd_pins Clk] [get_bd_pins interconnect_CPU/ACLK] [get_bd_pins interconnect_CPU/M00_ACLK] [get_bd_pins interconnect_CPU/M01_ACLK] [get_bd_pins interconnect_CPU/M02_ACLK] [get_bd_pins interconnect_CPU/M03_ACLK] [get_bd_pins interconnect_CPU/M04_ACLK] [get_bd_pins interconnect_CPU/M05_ACLK] [get_bd_pins interconnect_CPU/M06_ACLK] [get_bd_pins interconnect_CPU/M07_ACLK] [get_bd_pins interconnect_CPU/M08_ACLK] [get_bd_pins interconnect_CPU/M09_ACLK] [get_bd_pins interconnect_CPU/M10_ACLK] [get_bd_pins interconnect_CPU/S00_ACLK] [get_bd_pins mdm_0/S_AXI_ACLK] [get_bd_pins microblaze_CPU/Clk] [get_bd_pins microblaze_axi_intc/processor_clk] [get_bd_pins microblaze_axi_intc/s_axi_aclk] [get_bd_pins microblaze_local_memory/Clk]
  connect_bd_net -net LMB_Rst_1 [get_bd_pins LMB_Rst] [get_bd_pins microblaze_local_memory/LMB_Rst]
  connect_bd_net -net Net [get_bd_pins Reset] [get_bd_pins microblaze_CPU/Reset] [get_bd_pins microblaze_axi_intc/processor_rst]
  connect_bd_net -net S_AXI_ARESETN_1 [get_bd_pins S_AXI_ARESETN] [get_bd_pins interconnect_CPU/ARESETN] [get_bd_pins interconnect_CPU/M00_ARESETN] [get_bd_pins interconnect_CPU/M01_ARESETN] [get_bd_pins interconnect_CPU/M02_ARESETN] [get_bd_pins interconnect_CPU/M03_ARESETN] [get_bd_pins interconnect_CPU/M04_ARESETN] [get_bd_pins interconnect_CPU/M05_ARESETN] [get_bd_pins interconnect_CPU/M06_ARESETN] [get_bd_pins interconnect_CPU/M07_ARESETN] [get_bd_pins interconnect_CPU/M08_ARESETN] [get_bd_pins interconnect_CPU/M09_ARESETN] [get_bd_pins interconnect_CPU/M10_ARESETN] [get_bd_pins interconnect_CPU/S00_ARESETN] [get_bd_pins mdm_0/S_AXI_ARESETN] [get_bd_pins microblaze_axi_intc/s_axi_aresetn]
  connect_bd_net -net intr_1 [get_bd_pins intr] [get_bd_pins microblaze_axi_intc/intr]
  connect_bd_net -net mdm_0_Debug_SYS_Rst [get_bd_pins Debug_SYS_Rst] [get_bd_pins mdm_0/Debug_SYS_Rst]
  connect_bd_net -net mdm_0_Interrupt [get_bd_pins Interrupt] [get_bd_pins mdm_0/Interrupt]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR3 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR3 ]

  set IIC [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 IIC ]

  set MDIO [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_rtl:1.0 MDIO ]

  set QSPI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 QSPI ]

  set RGMII [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 RGMII ]

  set UART [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 UART ]


  # Create ports
  set CLK50 [ create_bd_port -dir O -type clk CLK50 ]
  set CLK100 [ create_bd_port -dir O -type clk CLK100 ]
  set CLK200 [ create_bd_port -dir O -type clk CLK200 ]
  set ETH_RST_N [ create_bd_port -dir O -from 0 -to 0 -type rst ETH_RST_N ]
  set LED_N [ create_bd_port -dir O -from 3 -to 0 LED_N ]
  set SYS_CLK [ create_bd_port -dir I -type clk SYS_CLK ]
  set SYS_RST_N [ create_bd_port -dir I -type rst SYS_RST_N ]

  # Create instance: CPU
  create_hier_cell_CPU [current_bd_instance .] CPU

  # Create instance: Ethernet
  create_hier_cell_Ethernet [current_bd_instance .] Ethernet

  # Create instance: IIC, and set properties
  set IIC [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 IIC ]

  # Create instance: LEDs, and set properties
  set LEDs [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 LEDs ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_DOUT_DEFAULT {0x000000FF} \
   CONFIG.C_GPIO_WIDTH {4} \
 ] $LEDs

  # Create instance: Memory
  create_hier_cell_Memory [current_bd_instance .] Memory

  # Create instance: QSPI, and set properties
  set QSPI [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 QSPI ]
  set_property -dict [ list \
   CONFIG.C_FIFO_DEPTH {256} \
   CONFIG.C_SCK_RATIO {2} \
   CONFIG.C_SPI_MEMORY {3} \
   CONFIG.C_SPI_MODE {2} \
   CONFIG.C_TYPE_OF_AXI4_INTERFACE {1} \
 ] $QSPI

  # Create instance: UART, and set properties
  set UART [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 UART ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {115200} \
 ] $UART

  # Create instance: axi_timer, and set properties
  set axi_timer [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer ]

  # Create instance: microblaze_xlconcat, and set properties
  set microblaze_xlconcat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 microblaze_xlconcat ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {10} \
 ] $microblaze_xlconcat

  # Create instance: xadc_wiz_0, and set properties
  set xadc_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xadc_wiz:3.3 xadc_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CHANNEL_ENABLE_VP_VN {false} \
   CONFIG.ENABLE_TEMP_BUS {true} \
 ] $xadc_wiz_0

  # Create interface connections
  connect_bd_intf_net -intf_net CPU_M02_AXI [get_bd_intf_pins CPU/M02_AXI] [get_bd_intf_pins LEDs/S_AXI]
  connect_bd_intf_net -intf_net CPU_M03_AXI [get_bd_intf_pins CPU/M03_AXI] [get_bd_intf_pins UART/S_AXI]
  connect_bd_intf_net -intf_net CPU_M04_AXI [get_bd_intf_pins CPU/M04_AXI] [get_bd_intf_pins axi_timer/S_AXI]
  connect_bd_intf_net -intf_net CPU_M05_AXI [get_bd_intf_pins CPU/M05_AXI] [get_bd_intf_pins IIC/S_AXI]
  connect_bd_intf_net -intf_net CPU_M06_AXI [get_bd_intf_pins CPU/M06_AXI] [get_bd_intf_pins QSPI/AXI_FULL]
  connect_bd_intf_net -intf_net CPU_M07_AXI [get_bd_intf_pins CPU/M07_AXI] [get_bd_intf_pins xadc_wiz_0/s_axi_lite]
  connect_bd_intf_net -intf_net CPU_M_AXI_DC [get_bd_intf_pins CPU/M_AXI_DC] [get_bd_intf_pins Memory/S00_AXI]
  connect_bd_intf_net -intf_net CPU_M_AXI_IC [get_bd_intf_pins CPU/M_AXI_IC] [get_bd_intf_pins Memory/S01_AXI]
  connect_bd_intf_net -intf_net Ethernet_MDIO [get_bd_intf_ports MDIO] [get_bd_intf_pins Ethernet/MDIO]
  connect_bd_intf_net -intf_net Ethernet_M_AXI_MM2S [get_bd_intf_pins Ethernet/M_AXI_MM2S] [get_bd_intf_pins Memory/S03_AXI]
  connect_bd_intf_net -intf_net Ethernet_M_AXI_S2MM [get_bd_intf_pins Ethernet/M_AXI_S2MM] [get_bd_intf_pins Memory/S04_AXI]
  connect_bd_intf_net -intf_net Ethernet_M_AXI_SG [get_bd_intf_pins Ethernet/M_AXI_SG] [get_bd_intf_pins Memory/S02_AXI]
  connect_bd_intf_net -intf_net Ethernet_RGMII [get_bd_intf_ports RGMII] [get_bd_intf_pins Ethernet/RGMII]
  connect_bd_intf_net -intf_net IIC_IIC [get_bd_intf_ports IIC] [get_bd_intf_pins IIC/IIC]
  connect_bd_intf_net -intf_net Memory_DDR3 [get_bd_intf_ports DDR3] [get_bd_intf_pins Memory/DDR3]
  connect_bd_intf_net -intf_net QSPI_SPI_0 [get_bd_intf_ports QSPI] [get_bd_intf_pins QSPI/SPI_0]
  connect_bd_intf_net -intf_net S_AXI_LITE_1 [get_bd_intf_pins CPU/M10_AXI] [get_bd_intf_pins Ethernet/S_AXI_LITE]
  connect_bd_intf_net -intf_net UART_UART [get_bd_intf_ports UART] [get_bd_intf_pins UART/UART]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins CPU/M09_AXI] [get_bd_intf_pins Ethernet/s_axi]

  # Create port connections
  connect_bd_net -net CPU_Interrupt [get_bd_pins CPU/Interrupt] [get_bd_pins microblaze_xlconcat/In0]
  connect_bd_net -net Ethernet_ETH_RST_N [get_bd_ports ETH_RST_N] [get_bd_pins Ethernet/ETH_RST_N]
  connect_bd_net -net Ethernet_interrupt [get_bd_pins Ethernet/interrupt] [get_bd_pins microblaze_xlconcat/In9]
  connect_bd_net -net Ethernet_mac_irq [get_bd_pins Ethernet/mac_irq] [get_bd_pins microblaze_xlconcat/In8]
  connect_bd_net -net Ethernet_mm2s_introut [get_bd_pins Ethernet/mm2s_introut] [get_bd_pins microblaze_xlconcat/In6]
  connect_bd_net -net Ethernet_s2mm_introut [get_bd_pins Ethernet/s2mm_introut] [get_bd_pins microblaze_xlconcat/In7]
  connect_bd_net -net IIC_iic2intc_irpt [get_bd_pins IIC/iic2intc_irpt] [get_bd_pins microblaze_xlconcat/In4]
  connect_bd_net -net LEDs_gpio_io_o [get_bd_ports LED_N] [get_bd_pins LEDs/gpio_io_o]
  connect_bd_net -net Memory_CLK50 [get_bd_ports CLK50] [get_bd_pins Memory/CLK50]
  connect_bd_net -net Memory_CLK100 [get_bd_ports CLK100] [get_bd_pins CPU/Clk] [get_bd_pins Ethernet/clk_in1] [get_bd_pins IIC/s_axi_aclk] [get_bd_pins LEDs/s_axi_aclk] [get_bd_pins Memory/CLK100] [get_bd_pins QSPI/ext_spi_clk] [get_bd_pins QSPI/s_axi4_aclk] [get_bd_pins UART/s_axi_aclk] [get_bd_pins axi_timer/s_axi_aclk] [get_bd_pins xadc_wiz_0/s_axi_aclk]
  connect_bd_net -net Memory_CLK200 [get_bd_ports CLK200] [get_bd_pins Ethernet/ref_clk] [get_bd_pins Memory/CLK200]
  connect_bd_net -net Memory_bus_struct_reset [get_bd_pins CPU/LMB_Rst] [get_bd_pins Ethernet/reset] [get_bd_pins Memory/bus_struct_reset]
  connect_bd_net -net Memory_mb_reset [get_bd_pins CPU/Reset] [get_bd_pins Memory/mb_reset]
  connect_bd_net -net QSPI_ip2intc_irpt [get_bd_pins QSPI/ip2intc_irpt] [get_bd_pins microblaze_xlconcat/In3]
  connect_bd_net -net SYS_CLK_1 [get_bd_ports SYS_CLK] [get_bd_pins Memory/SYS_CLK]
  connect_bd_net -net SYS_RST_N_1 [get_bd_ports SYS_RST_N] [get_bd_pins Memory/SYS_RST_N]
  connect_bd_net -net S_AXI_ARESETN_1 [get_bd_pins CPU/S_AXI_ARESETN] [get_bd_pins Ethernet/s_axi_lite_resetn] [get_bd_pins IIC/s_axi_aresetn] [get_bd_pins LEDs/s_axi_aresetn] [get_bd_pins Memory/peripheral_aresetn] [get_bd_pins QSPI/s_axi4_aresetn] [get_bd_pins UART/s_axi_aresetn] [get_bd_pins axi_timer/s_axi_aresetn] [get_bd_pins xadc_wiz_0/s_axi_aresetn]
  connect_bd_net -net UART_interrupt [get_bd_pins UART/interrupt] [get_bd_pins microblaze_xlconcat/In2]
  connect_bd_net -net axi_timer_interrupt [get_bd_pins axi_timer/interrupt] [get_bd_pins microblaze_xlconcat/In1]
  connect_bd_net -net mb_debug_sys_rst_1 [get_bd_pins CPU/Debug_SYS_Rst] [get_bd_pins Memory/mb_debug_sys_rst]
  connect_bd_net -net microblaze_xlconcat_dout [get_bd_pins CPU/intr] [get_bd_pins microblaze_xlconcat/dout]
  connect_bd_net -net xadc_wiz_0_ip2intc_irpt [get_bd_pins microblaze_xlconcat/In5] [get_bd_pins xadc_wiz_0/ip2intc_irpt]
  connect_bd_net -net xadc_wiz_0_temp_out [get_bd_pins Memory/device_temp_i] [get_bd_pins xadc_wiz_0/temp_out]

  # Create address segments
  assign_bd_address -offset 0x40800000 -range 0x00010000 -target_address_space [get_bd_addr_spaces CPU/microblaze_CPU/Data] [get_bd_addr_segs IIC/S_AXI/Reg] -force
  assign_bd_address -offset 0x40000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces CPU/microblaze_CPU/Data] [get_bd_addr_segs LEDs/S_AXI/Reg] -force
  assign_bd_address -offset 0x44A00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces CPU/microblaze_CPU/Data] [get_bd_addr_segs QSPI/aximm/MEM0] -force
  assign_bd_address -offset 0x80000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces CPU/microblaze_CPU/Data] [get_bd_addr_segs Memory/SDRAM/memmap/memaddr] -force
  assign_bd_address -offset 0x80000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces CPU/microblaze_CPU/Instruction] [get_bd_addr_segs Memory/SDRAM/memmap/memaddr] -force
  assign_bd_address -offset 0x40600000 -range 0x00010000 -target_address_space [get_bd_addr_spaces CPU/microblaze_CPU/Data] [get_bd_addr_segs UART/S_AXI/Reg] -force
  assign_bd_address -offset 0x41E00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces CPU/microblaze_CPU/Data] [get_bd_addr_segs Ethernet/axi_dma/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x40C00000 -range 0x00040000 -target_address_space [get_bd_addr_spaces CPU/microblaze_CPU/Data] [get_bd_addr_segs Ethernet/axi_ethernet/s_axi/Reg0] -force
  assign_bd_address -offset 0x41C00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces CPU/microblaze_CPU/Data] [get_bd_addr_segs axi_timer/S_AXI/Reg] -force
  assign_bd_address -offset 0x00000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces CPU/microblaze_CPU/Data] [get_bd_addr_segs CPU/microblaze_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] -force
  assign_bd_address -offset 0x00000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces CPU/microblaze_CPU/Instruction] [get_bd_addr_segs CPU/microblaze_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] -force
  assign_bd_address -offset 0x41400000 -range 0x00001000 -target_address_space [get_bd_addr_spaces CPU/microblaze_CPU/Data] [get_bd_addr_segs CPU/mdm_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x41200000 -range 0x00010000 -target_address_space [get_bd_addr_spaces CPU/microblaze_CPU/Data] [get_bd_addr_segs CPU/microblaze_axi_intc/S_AXI/Reg] -force
  assign_bd_address -offset 0x44A10000 -range 0x00010000 -target_address_space [get_bd_addr_spaces CPU/microblaze_CPU/Data] [get_bd_addr_segs xadc_wiz_0/s_axi_lite/Reg] -force
  assign_bd_address -offset 0x80000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces Ethernet/axi_dma/Data_SG] [get_bd_addr_segs Memory/SDRAM/memmap/memaddr] -force
  assign_bd_address -offset 0x80000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces Ethernet/axi_dma/Data_MM2S] [get_bd_addr_segs Memory/SDRAM/memmap/memaddr] -force
  assign_bd_address -offset 0x80000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces Ethernet/axi_dma/Data_S2MM] [get_bd_addr_segs Memory/SDRAM/memmap/memaddr] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


