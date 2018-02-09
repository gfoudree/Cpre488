@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto 6b01809f9eb84c46a6488d7b6e3ed7cc -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot axi_ppm_v1_0_behav xil_defaultlib.axi_ppm_v1_0 -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
