# 
# Synthesis run script generated by Vivado
# 

set_param tcl.collectionResultDisplayLimit 0
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7k325tffg900-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir E:/VivadoProject/AD9361_TX_1MHz_Baseband_800Hz_IF/AD9361_TX_1MHz_Baseband_800Hz_IF.cache/wt [current_project]
set_property parent.project_path E:/VivadoProject/AD9361_TX_1MHz_Baseband_800Hz_IF/AD9361_TX_1MHz_Baseband_800Hz_IF.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:kc705:part0:1.5 [current_project]
set_property ip_output_repo e:/VivadoProject/AD9361_TX_1MHz_Baseband_800Hz_IF/AD9361_TX_1MHz_Baseband_800Hz_IF.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  E:/VivadoProject/AD9361_TX_1MHz_Baseband_800Hz_IF/AD9361_TX_1MHz_Baseband_800Hz_IF.srcs/sources_1/imports/new/ad9361_init.v
  E:/VivadoProject/AD9361_TX_1MHz_Baseband_800Hz_IF/AD9361_TX_1MHz_Baseband_800Hz_IF.srcs/sources_1/imports/new/ad9361_lut.v
  E:/VivadoProject/AD9361_TX_1MHz_Baseband_800Hz_IF/AD9361_TX_1MHz_Baseband_800Hz_IF.srcs/sources_1/imports/new/ad9361_spi_ctrl.v
  E:/VivadoProject/AD9361_TX_1MHz_Baseband_800Hz_IF/AD9361_TX_1MHz_Baseband_800Hz_IF.srcs/sources_1/imports/new/ad9361_spi_drv.v
  E:/VivadoProject/AD9361_TX_1MHz_Baseband_800Hz_IF/AD9361_TX_1MHz_Baseband_800Hz_IF.srcs/sources_1/new/ad9361_txdata.v
  E:/VivadoProject/AD9361_TX_1MHz_Baseband_800Hz_IF/AD9361_TX_1MHz_Baseband_800Hz_IF.srcs/sources_1/imports/new/ad9361_unit.v
  E:/VivadoProject/AD9361_TX_1MHz_Baseband_800Hz_IF/AD9361_TX_1MHz_Baseband_800Hz_IF.srcs/sources_1/new/ad9361_tx_top.v
}
read_ip -quiet E:/VivadoProject/AD9361_TX_1MHz_Baseband_800Hz_IF/AD9361_TX_1MHz_Baseband_800Hz_IF.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci
set_property used_in_implementation false [get_files -all e:/VivadoProject/AD9361_TX_1MHz_Baseband_800Hz_IF/AD9361_TX_1MHz_Baseband_800Hz_IF.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc]
set_property used_in_implementation false [get_files -all e:/VivadoProject/AD9361_TX_1MHz_Baseband_800Hz_IF/AD9361_TX_1MHz_Baseband_800Hz_IF.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
set_property used_in_implementation false [get_files -all e:/VivadoProject/AD9361_TX_1MHz_Baseband_800Hz_IF/AD9361_TX_1MHz_Baseband_800Hz_IF.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]
set_property is_locked true [get_files E:/VivadoProject/AD9361_TX_1MHz_Baseband_800Hz_IF/AD9361_TX_1MHz_Baseband_800Hz_IF.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci]

read_ip -quiet E:/VivadoProject/AD9361_TX_1MHz_Baseband_800Hz_IF/AD9361_TX_1MHz_Baseband_800Hz_IF.srcs/sources_1/ip/dds_compiler_0/dds_compiler_0.xci
set_property used_in_implementation false [get_files -all e:/VivadoProject/AD9361_TX_1MHz_Baseband_800Hz_IF/AD9361_TX_1MHz_Baseband_800Hz_IF.srcs/sources_1/ip/dds_compiler_0/dds_compiler_0_ooc.xdc]
set_property is_locked true [get_files E:/VivadoProject/AD9361_TX_1MHz_Baseband_800Hz_IF/AD9361_TX_1MHz_Baseband_800Hz_IF.srcs/sources_1/ip/dds_compiler_0/dds_compiler_0.xci]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc E:/VivadoProject/AD9361_TX_1MHz_Baseband_800Hz_IF/AD9361_TX_1MHz_Baseband_800Hz_IF.srcs/constrs_1/imports/new/ad9361_rx_top.xdc
set_property used_in_implementation false [get_files E:/VivadoProject/AD9361_TX_1MHz_Baseband_800Hz_IF/AD9361_TX_1MHz_Baseband_800Hz_IF.srcs/constrs_1/imports/new/ad9361_rx_top.xdc]


synth_design -top ad9361_tx_top -part xc7k325tffg900-2


write_checkpoint -force -noxdef ad9361_tx_top.dcp

catch { report_utilization -file ad9361_tx_top_utilization_synth.rpt -pb ad9361_tx_top_utilization_synth.pb }