@echo off
set xv_path=D:\\vivado\\Vivado\\2015.2\\bin
call %xv_path%/xsim px2_sim_behav -key {Behavioral:sim_1:Functional:px2_sim} -tclbatch px2_sim.tcl -view E:/Files_for_work/hardware_proj/px2/px2_sim_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
