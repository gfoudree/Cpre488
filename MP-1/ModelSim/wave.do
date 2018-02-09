onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Input /ppm_tb/my_ppm_capture/PPM_IN
add wave -noupdate -expand -group Input /ppm_tb/my_ppm_capture/PPM_CLK
add wave -noupdate -expand -group Input /ppm_tb/my_ppm_capture/S_AXI_ARESETN
add wave -noupdate -expand -group Reg /ppm_tb/my_ppm_capture/slv_reg0
add wave -noupdate -expand -group Reg /ppm_tb/my_ppm_capture/slv_reg1
add wave -noupdate -expand -group Reg /ppm_tb/my_ppm_capture/slv_reg4
add wave -noupdate -expand -group Reg /ppm_tb/my_ppm_capture/slv_reg5
add wave -noupdate -expand -group Reg /ppm_tb/my_ppm_capture/slv_reg6
add wave -noupdate -expand -group Reg /ppm_tb/my_ppm_capture/slv_reg7
add wave -noupdate -expand -group Reg /ppm_tb/my_ppm_capture/slv_reg8
add wave -noupdate -expand -group Reg /ppm_tb/my_ppm_capture/slv_reg9
add wave -noupdate -expand -group Reg /ppm_tb/my_ppm_capture/next_slv_reg1
add wave -noupdate -expand -group Reg /ppm_tb/my_ppm_capture/next_slv_reg4
add wave -noupdate -expand -group Reg /ppm_tb/my_ppm_capture/next_slv_reg5
add wave -noupdate -expand -group Reg /ppm_tb/my_ppm_capture/next_slv_reg6
add wave -noupdate -expand -group Reg /ppm_tb/my_ppm_capture/next_slv_reg7
add wave -noupdate -expand -group Reg /ppm_tb/my_ppm_capture/next_slv_reg8
add wave -noupdate -expand -group Reg /ppm_tb/my_ppm_capture/next_slv_reg9
add wave -noupdate -expand -group FSM /ppm_tb/my_ppm_capture/PS
add wave -noupdate -expand -group FSM /ppm_tb/my_ppm_capture/NS
add wave -noupdate -expand -group FSM /ppm_tb/my_ppm_capture/reg_addr
add wave -noupdate -expand -group FSM /ppm_tb/my_ppm_capture/next_reg_addr
add wave -noupdate -expand -group FSM /ppm_tb/my_ppm_capture/ppm_capture_count_en
add wave -noupdate -expand -group FSM /ppm_tb/my_ppm_capture/next_ppm_capture_count_en
add wave -noupdate -expand -group FSM /ppm_tb/my_ppm_capture/ppm_capture_count_reset
add wave -noupdate -expand -group FSM /ppm_tb/my_ppm_capture/next_ppm_capture_count_reset
add wave -noupdate -expand -group FSM /ppm_tb/my_ppm_capture/ppm_capture_count
add wave -noupdate -expand -group FSM /ppm_tb/my_ppm_capture/next_ppm_capture_count
add wave -noupdate -expand -group FSM /ppm_tb/my_ppm_capture/ppm_capture_idle
add wave -noupdate -expand -group FSM /ppm_tb/my_ppm_capture/next_ppm_capture_idle
add wave -noupdate -expand -group TB /ppm_tb/my_in
add wave -noupdate -expand -group TB /ppm_tb/ppm
add wave -noupdate -expand -group TB /ppm_tb/reset
add wave -noupdate -expand -group TB /ppm_tb/clk
add wave -noupdate -expand -group TB /ppm_tb/input_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 364
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1364 ps}
