onerror {resume}
quietly set dataset_list [list sim oursFinal ours11 theirs1 ours1]
if {[catch {datasetcheck $dataset_list}]} {abort}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group tb sim:/tb/S_AXI_ACLK
add wave -noupdate -expand -group tb sim:/tb/update
add wave -noupdate -expand -group tb sim:/tb/enable
add wave -noupdate -expand -group tb sim:/tb/ready
add wave -noupdate -expand -group tb sim:/tb/reset
add wave -noupdate -expand -group tb sim:/tb/cur_block
add wave -noupdate -expand -group tb sim:/tb/finished
add wave -noupdate -expand -group tb sim:/tb/word_input
add wave -noupdate -expand -group tb sim:/tb/word_address
add wave -noupdate -expand -group tb sim:/tb/debug_port
add wave -noupdate -expand -group tb sim:/tb/hash_output
add wave -noupdate -expand -group tb sim:/tb/input_data
add wave -noupdate -group hash sim:/tb/hasher0/clk
add wave -noupdate -group hash sim:/tb/hasher0/reset
add wave -noupdate -group hash sim:/tb/hasher0/enable
add wave -noupdate -group hash sim:/tb/hasher0/ready
add wave -noupdate -group hash sim:/tb/hasher0/update
add wave -noupdate -group hash sim:/tb/hasher0/cur_block
add wave -noupdate -group hash sim:/tb/hasher0/word_address
add wave -noupdate -group hash sim:/tb/hasher0/word_input
add wave -noupdate -group hash sim:/tb/hasher0/hash_output
add wave -noupdate -group hash sim:/tb/hasher0/debug_port
add wave -noupdate -group hash sim:/tb/hasher0/state
add wave -noupdate -group hash sim:/tb/hasher0/W
add wave -noupdate -group hash sim:/tb/hasher0/current_w
add wave -noupdate -group hash sim:/tb/hasher0/h0
add wave -noupdate -group hash sim:/tb/hasher0/h1
add wave -noupdate -group hash sim:/tb/hasher0/h2
add wave -noupdate -group hash sim:/tb/hasher0/h3
add wave -noupdate -group hash sim:/tb/hasher0/h4
add wave -noupdate -group hash sim:/tb/hasher0/h5
add wave -noupdate -group hash sim:/tb/hasher0/h6
add wave -noupdate -group hash sim:/tb/hasher0/h7
add wave -noupdate -group hash sim:/tb/hasher0/a
add wave -noupdate -group hash sim:/tb/hasher0/b
add wave -noupdate -group hash sim:/tb/hasher0/c
add wave -noupdate -group hash sim:/tb/hasher0/d
add wave -noupdate -group hash sim:/tb/hasher0/e
add wave -noupdate -group hash sim:/tb/hasher0/f
add wave -noupdate -group hash sim:/tb/hasher0/g
add wave -noupdate -group hash sim:/tb/hasher0/h
add wave -noupdate -group hash sim:/tb/hasher0/current_iteration
add wave -noupdate -expand -group reg sim:/tb/slv_reg0
add wave -noupdate -expand -group reg sim:/tb/slv_reg1
add wave -noupdate -expand -group reg sim:/tb/slv_reg2
add wave -noupdate -expand -group reg sim:/tb/slv_reg3
add wave -noupdate -expand -group reg sim:/tb/slv_reg4
add wave -noupdate -expand -group reg sim:/tb/slv_reg5
add wave -noupdate -expand -group reg sim:/tb/slv_reg6
add wave -noupdate -expand -group reg sim:/tb/slv_reg7
add wave -noupdate -expand -group reg sim:/tb/slv_reg8
add wave -noupdate -expand -group reg sim:/tb/slv_reg9
add wave -noupdate -expand -group reg sim:/tb/slv_reg10
add wave -noupdate -expand -group reg sim:/tb/slv_reg11
add wave -noupdate -expand -group reg sim:/tb/slv_reg12
add wave -noupdate -expand -group reg sim:/tb/slv_reg13
add wave -noupdate -expand -group reg sim:/tb/slv_reg14
add wave -noupdate -expand -group reg sim:/tb/slv_reg15
add wave -noupdate -expand -group reg sim:/tb/slv_reg16
add wave -noupdate -expand -group reg sim:/tb/slv_reg17
add wave -noupdate -expand -group reg sim:/tb/slv_reg18
add wave -noupdate -expand -group reg sim:/tb/slv_reg19
add wave -noupdate -expand -group reg sim:/tb/slv_reg20
add wave -noupdate -expand -group reg sim:/tb/slv_reg21
add wave -noupdate -expand -group reg sim:/tb/slv_reg22
add wave -noupdate -expand -group reg sim:/tb/slv_reg23
add wave -noupdate -expand -group reg sim:/tb/slv_reg24
add wave -noupdate -expand -group reg sim:/tb/slv_reg25
add wave -noupdate -expand -group reg sim:/tb/slv_reg26
add wave -noupdate -expand -group reg sim:/tb/slv_reg27
add wave -noupdate -expand -group reg sim:/tb/slv_reg28
add wave -noupdate -expand -group reg sim:/tb/slv_reg29
add wave -noupdate -expand -group reg sim:/tb/slv_reg30
add wave -noupdate -expand -group reg sim:/tb/slv_reg31
add wave -noupdate -expand -group reg sim:/tb/slv_reg32
add wave -noupdate -expand -group reg sim:/tb/slv_reg33
add wave -noupdate -expand -group reg sim:/tb/slv_reg34
add wave -noupdate -expand -group reg sim:/tb/slv_reg35
add wave -noupdate -expand -group reg sim:/tb/slv_reg36
add wave -noupdate -expand -group reg sim:/tb/slv_reg37
add wave -noupdate -expand -group reg sim:/tb/slv_reg38
add wave -noupdate -expand -group reg sim:/tb/slv_reg39
add wave -noupdate -expand -group reg sim:/tb/slv_reg40
add wave -noupdate -expand -group reg sim:/tb/slv_reg41
add wave -noupdate -expand -group reg sim:/tb/slv_reg42
add wave -noupdate -expand -group reg sim:/tb/slv_reg43
add wave -noupdate -expand -group reg sim:/tb/slv_reg44
add wave -noupdate -expand -group reg sim:/tb/slv_reg45
add wave -noupdate -expand -group reg sim:/tb/slv_reg46
add wave -noupdate -expand -group reg sim:/tb/slv_reg47
add wave -noupdate -expand -group reg sim:/tb/slv_reg48
add wave -noupdate -expand -group reg sim:/tb/slv_reg49
add wave -noupdate -expand -group reg sim:/tb/slv_reg50
add wave -noupdate -expand -group reg sim:/tb/slv_reg51
add wave -noupdate -expand -group reg sim:/tb/slv_reg52
add wave -noupdate -expand -group reg sim:/tb/slv_reg53
add wave -noupdate -expand -group reg sim:/tb/slv_reg54
add wave -noupdate -expand -group reg sim:/tb/slv_reg55
add wave -noupdate -expand -group reg sim:/tb/slv_reg56
add wave -noupdate -expand -group reg sim:/tb/slv_reg57
add wave -noupdate -expand -group reg sim:/tb/slv_reg58
add wave -noupdate -expand -group reg sim:/tb/slv_reg59
add wave -noupdate -expand -group reg sim:/tb/slv_reg60
add wave -noupdate -expand -group reg sim:/tb/slv_reg61
add wave -noupdate -expand -group reg sim:/tb/slv_reg62
add wave -noupdate -expand -group reg sim:/tb/slv_reg63
TreeUpdate [SetDefaultTree]
WaveRestoreCursors
quietly wave cursor active 0
configure wave -namecolwidth 240
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
WaveRestoreZoom {0 ps} {50826 ps}
