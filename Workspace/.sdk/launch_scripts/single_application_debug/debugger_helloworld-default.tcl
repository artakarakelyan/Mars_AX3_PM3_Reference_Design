connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS3 210299AFBB0C" && level==0 && jtag_device_ctx=="jsn-JTAG-HS3-210299AFBB0C-13631093-0"}
fpga -file F:/GitHub/Mars_AX3_PM3_Reference_Design/Workspace/HelloWorld/_ide/bitstream/Mars_AX3_PM3.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw F:/GitHub/Mars_AX3_PM3_Reference_Design/Workspace/Hello/export/Hello/hw/Mars_AX3_PM3.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow F:/GitHub/Mars_AX3_PM3_Reference_Design/Workspace/HelloWorld/Debug/HelloWorld.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
