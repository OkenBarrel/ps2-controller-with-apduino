@echo off
set xv_path=D:\\vivado\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto d5d8d237782b4c9da8f4f2ad519a0a0d -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L secureip --snapshot px2_top_func_synth xil_defaultlib.px2_top xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
