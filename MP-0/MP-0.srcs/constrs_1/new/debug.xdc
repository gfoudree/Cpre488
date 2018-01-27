set_property PACKAGE_PIN Y21  [get_ports {vga_out[4]}];  # "VGA-B1"
set_property PACKAGE_PIN Y20  [get_ports {vga_out[5]}];  # "VGA-B2"
set_property PACKAGE_PIN AB20 [get_ports {vga_out[6]}];  # "VGA-B3"
set_property PACKAGE_PIN AB19 [get_ports {vga_out[7]}];  # "VGA-B4"
set_property PACKAGE_PIN AB22 [get_ports {vga_out[0]}];  # "VGA-G1"
set_property PACKAGE_PIN AA22 [get_ports {vga_out[1]}];  # "VGA-G2"
set_property PACKAGE_PIN AB21 [get_ports {vga_out[2]}];  # "VGA-G3"
set_property PACKAGE_PIN AA21 [get_ports {vga_out[3]}];  # "VGA-G4"
set_property PACKAGE_PIN AA19 [get_ports {vid_hsync_out}];  # "VGA-HS"
set_property PACKAGE_PIN V20  [get_ports {vga_out[8]}];  # "VGA-R1"
set_property PACKAGE_PIN U20  [get_ports {vga_out[9]}];  # "VGA-R2"
set_property PACKAGE_PIN V19  [get_ports {vga_out[10]}];  # "VGA-R3"
set_property PACKAGE_PIN V18  [get_ports {vga_out[11]}];  # "VGA-R4"
set_property PACKAGE_PIN Y19  [get_ports {vid_vsync_out}];  # "VGA-VS"

#set_property PACKAGE_PIN Y11  [get_ports {debug_vtc_vsync_out}];  # "JA1"
#set_property PACKAGE_PIN AA11 [get_ports {debug_vtc_hsync_out}];  # "JA2"
#set_property PACKAGE_PIN Y10  [get_ports {debug_clk}];  # "JA3"
#set_property PACKAGE_PIN AA9  [get_ports {debug_clken}];  # "JA4"
#set_property PACKAGE_PIN AB11 [get_ports {JA7}];  # "JA7"
#set_property PACKAGE_PIN AB10 [get_ports {JA8}];  # "JA8"
#set_property PACKAGE_PIN AB9  [get_ports {JA9}];  # "JA9"
#set_property PACKAGE_PIN AA8  [get_ports {JA10}];  # "JA10"



# ----------------------------------------------------------------------------
# IOSTANDARD Constraints
#
# Note that these IOSTANDARD constraints are applied to all IOs currently
# assigned within an I/O bank.  If these IOSTANDARD constraints are 
# evaluated prior to other PACKAGE_PIN constraints being applied, then 
# the IOSTANDARD specified will likely not be applied properly to those 
# pins.  Therefore, bank wide IOSTANDARD constraints should be placed 
# within the XDC file in a location that is evaluated AFTER all 
# PACKAGE_PIN constraints within the target bank have been evaluated.
#
# Un-comment one or more of the following IOSTANDARD constraints according to
# the bank pin assignments that are required within a design.
# ---------------------------------------------------------------------------- 

# Note that the bank voltage for IO Bank 33 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];

# Set the bank voltage for IO Bank 34 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 34]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 34]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];

# Set the bank voltage for IO Bank 35 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 35]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 35]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];

# Note that the bank voltage for IO Bank 13 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];
