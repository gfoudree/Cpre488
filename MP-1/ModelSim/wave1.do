onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TB /ppm_tb_gen/my_in
add wave -noupdate -expand -group TB /ppm_tb_gen/ppm
add wave -noupdate -expand -group TB /ppm_tb_gen/reset
add wave -noupdate -expand -group TB /ppm_tb_gen/clk
add wave -noupdate -expand -group TB /ppm_tb_gen/input_state
add wave -noupdate -expand -group IO /ppm_tb_gen/my_ppm_gen/PPM_OUT
add wave -noupdate -expand -group IO /ppm_tb_gen/my_ppm_gen/PPM_CLK
add wave -noupdate -expand -group IO /ppm_tb_gen/my_ppm_gen/S_AXI_ARESETN
add wave -noupdate -group Reg /ppm_tb_gen/my_ppm_gen/slv_reg0
add wave -noupdate -group Reg /ppm_tb_gen/my_ppm_gen/slv_reg10
add wave -noupdate -group Reg /ppm_tb_gen/my_ppm_gen/slv_reg11
add wave -noupdate -group Reg /ppm_tb_gen/my_ppm_gen/slv_reg12
add wave -noupdate -group Reg /ppm_tb_gen/my_ppm_gen/slv_reg13
add wave -noupdate -group Reg /ppm_tb_gen/my_ppm_gen/slv_reg14
add wave -noupdate -group Reg /ppm_tb_gen/my_ppm_gen/slv_reg15
add wave -noupdate -expand -group FSM /ppm_tb_gen/my_ppm_gen/PS
add wave -noupdate -expand -group FSM /ppm_tb_gen/my_ppm_gen/NS
add wave -noupdate -expand -group FSM /ppm_tb_gen/my_ppm_gen/next_PPM_OUT
add wave -noupdate -expand -group FSM /ppm_tb_gen/my_ppm_gen/reg_addr
add wave -noupdate -expand -group FSM /ppm_tb_gen/my_ppm_gen/next_reg_addr
add wave -noupdate -expand -group {Frame Counter} /ppm_tb_gen/my_ppm_gen/count_frame_en
add wave -noupdate -expand -group {Frame Counter} /ppm_tb_gen/my_ppm_gen/next_count_frame_en
add wave -noupdate -expand -group {Frame Counter} /ppm_tb_gen/my_ppm_gen/count_frame_done
add wave -noupdate -expand -group {Frame Counter} /ppm_tb_gen/my_ppm_gen/next_count_frame_done
add wave -noupdate -expand -group {Frame Counter} /ppm_tb_gen/my_ppm_gen/countFrameVal
add wave -noupdate -expand -group {Frame Counter} /ppm_tb_gen/my_ppm_gen/next_countFrameVal
add wave -noupdate -expand -group {Ch Counter} /ppm_tb_gen/my_ppm_gen/count_ch_done
add wave -noupdate -expand -group {Ch Counter} /ppm_tb_gen/my_ppm_gen/next_count_ch_done
add wave -noupdate -expand -group {Ch Counter} /ppm_tb_gen/my_ppm_gen/count_ch_en
add wave -noupdate -expand -group {Ch Counter} /ppm_tb_gen/my_ppm_gen/next_count_ch_en
add wave -noupdate -expand -group {Ch Counter} /ppm_tb_gen/my_ppm_gen/countChVal
add wave -noupdate -expand -group {Ch Counter} /ppm_tb_gen/my_ppm_gen/next_countChVal
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 321
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
WaveRestoreZoom {0 ps} {110336 ps}
