# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
debug::add_scope route 5
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir E:/Files_for_work/hardware_proj/px2/px2.cache/wt [current_project]
set_property parent.project_path E:/Files_for_work/hardware_proj/px2/px2.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths e:/Files_for_work/hardware_proj/ip_repo/px2_game_1.0 [current_project]
read_verilog -library xil_defaultlib E:/Files_for_work/hardware_proj/px2/px2.srcs/sources_1/new/px2_top.v
read_xdc E:/Files_for_work/hardware_proj/px2/px2.srcs/constrs_1/new/pins.xdc
set_property used_in_implementation false [get_files E:/Files_for_work/hardware_proj/px2/px2.srcs/constrs_1/new/pins.xdc]

synth_design -top px2_top -part xc7z020clg484-1
write_checkpoint -noxdef px2_top.dcp
catch { report_utilization -file px2_top_utilization_synth.rpt -pb px2_top_utilization_synth.pb }
