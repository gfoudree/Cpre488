
w
Command: %s
1870*	planAhead2B
.open_checkpoint MP4_design1_wrapper_routed.dcp2default:defaultZ12-2866h px� 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.018 . Memory (MB): peak = 236.945 ; gain = 2.0042default:defaulth px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
862default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
|
Netlist was created with %s %s291*project2
Vivado2default:default2

2017.1_sdx2default:defaultZ1-479h px� 
V
Loading part %s157*device2#
xc7z020clg484-12default:defaultZ21-403h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
�
Parsing XDC File [%s]
179*designutils2u
_C:/Cpre488/MP-4/MP-4.runs/impl_1/.Xil/Vivado-12108-CO2041-14/dcp3/MP4_design1_wrapper_board.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2u
_C:/Cpre488/MP-4/MP-4.runs/impl_1/.Xil/Vivado-12108-CO2041-14/dcp3/MP4_design1_wrapper_board.xdc2default:default8Z20-178h px� 
�
Parsing XDC File [%s]
179*designutils2u
_C:/Cpre488/MP-4/MP-4.runs/impl_1/.Xil/Vivado-12108-CO2041-14/dcp3/MP4_design1_wrapper_early.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2u
_C:/Cpre488/MP-4/MP-4.runs/impl_1/.Xil/Vivado-12108-CO2041-14/dcp3/MP4_design1_wrapper_early.xdc2default:default8Z20-178h px� 
�
Parsing XDC File [%s]
179*designutils2o
YC:/Cpre488/MP-4/MP-4.runs/impl_1/.Xil/Vivado-12108-CO2041-14/dcp3/MP4_design1_wrapper.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2o
YC:/Cpre488/MP-4/MP-4.runs/impl_1/.Xil/Vivado-12108-CO2041-14/dcp3/MP4_design1_wrapper.xdc2default:default8Z20-178h px� 
?
Reading XDEF placement.
206*designutilsZ20-206h px� 
D
Reading placer database...
1602*designutilsZ20-1892h px� 
=
Reading XDEF routing.
207*designutilsZ20-207h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
Read XDEF File: 2default:default2
00:00:012default:default2 
00:00:00.4872default:default2
538.2232default:default2
3.0042default:defaultZ17-268h px� 
�
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
1.0000002default:default2
0.0000002default:defaultZ20-1924h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common20
Finished XDEF File Restore: 2default:default2
00:00:012default:default2 
00:00:00.4872default:default2
538.2232default:default2
3.0042default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2`
L  A total of 2 instances were transformed.
  SRLC32E => SRL16E: 2 instances
2default:defaultZ1-111h px� 
�
'Checkpoint was created with %s build %s378*project2/
Vivado v2017.1_sdx (64-bit)2default:default2
19156202default:defaultZ1-604h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
open_checkpoint: 2default:default2
00:00:072default:default2
00:00:082default:default2
542.2932default:default2
307.3522default:defaultZ17-268h px� 
s
Command: %s
53*	vivadotcl2B
.write_bitstream -force MP4_design1_wrapper.bit2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2"
xc7z020-clg4842default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2"
xc7z020-clg4842default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
Z
DRC finished with %s
1905*	planAhead2
0 Errors2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
Q
/Please set project.enableDesignId to be 'true'.457*projectZ1-821h px� 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
j
Writing bitstream %s...
11*	bitstream2-
./MP4_design1_wrapper.bit2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
s
QWebTalk data collection is enabled (User setting is ON. Install Setting is ON.).
118*projectZ1-118h px� 
�
�'%s' has been successfully sent to Xilinx on %s. For additional details about this file, please refer to the Webtalk help file at %s.
186*common2Q
=C:/Cpre488/MP-4/MP-4.runs/impl_1/usage_statistics_webtalk.xml2default:default2,
Tue Apr  3 11:40:37 20182default:default2M
9C:/Xilinx/SDx/2017.1/Vivado/doc/webtalk_introduction.html2default:defaultZ17-186h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
162default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:172default:default2
00:00:162default:default2
940.9302default:default2
398.6372default:defaultZ17-268h px� 


End Record