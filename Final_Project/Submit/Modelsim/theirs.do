onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group tb /tb_sha256/reset
add wave -noupdate -group tb /tb_sha256/update
add wave -noupdate -group tb /tb_sha256/enable
add wave -noupdate -group tb /tb_sha256/word_input
add wave -noupdate -group tb /tb_sha256/ready
add wave -noupdate -group tb /tb_sha256/word_address
add wave -noupdate -group tb /tb_sha256/debug_port
add wave -noupdate -group tb /tb_sha256/hash_output
add wave -noupdate -group tb /tb_sha256/clk
add wave -noupdate -group tb /tb_sha256/testdata_address
add wave -noupdate -expand -group hasher /tb_sha256/uut/clk
add wave -noupdate -expand -group hasher /tb_sha256/uut/reset
add wave -noupdate -expand -group hasher /tb_sha256/uut/enable
add wave -noupdate -expand -group hasher /tb_sha256/uut/ready
add wave -noupdate -expand -group hasher /tb_sha256/uut/update
add wave -noupdate -expand -group hasher /tb_sha256/uut/word_address
add wave -noupdate -expand -group hasher /tb_sha256/uut/word_input
add wave -noupdate -expand -group hasher /tb_sha256/uut/hash_output
add wave -noupdate -expand -group hasher /tb_sha256/uut/debug_port
add wave -noupdate -expand -group hasher /tb_sha256/uut/state
add wave -noupdate -expand -group hasher /tb_sha256/uut/W
add wave -noupdate -expand -group hasher /tb_sha256/uut/current_w
add wave -noupdate -expand -group hasher /tb_sha256/uut/h0
add wave -noupdate -expand -group hasher /tb_sha256/uut/h1
add wave -noupdate -expand -group hasher /tb_sha256/uut/h2
add wave -noupdate -expand -group hasher /tb_sha256/uut/h3
add wave -noupdate -expand -group hasher /tb_sha256/uut/h4
add wave -noupdate -expand -group hasher /tb_sha256/uut/h5
add wave -noupdate -expand -group hasher /tb_sha256/uut/h6
add wave -noupdate -expand -group hasher /tb_sha256/uut/h7
add wave -noupdate -expand -group hasher /tb_sha256/uut/a
add wave -noupdate -expand -group hasher /tb_sha256/uut/b
add wave -noupdate -expand -group hasher /tb_sha256/uut/c
add wave -noupdate -expand -group hasher /tb_sha256/uut/d
add wave -noupdate -expand -group hasher /tb_sha256/uut/e
add wave -noupdate -expand -group hasher /tb_sha256/uut/f
add wave -noupdate -expand -group hasher /tb_sha256/uut/g
add wave -noupdate -expand -group hasher /tb_sha256/uut/h
add wave -noupdate -expand -group hasher /tb_sha256/uut/current_iteration
TreeUpdate [SetDefaultTree]
WaveRestoreCursors
quietly wave cursor active 0
configure wave -namecolwidth 230
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
WaveRestoreZoom {0 ps} {58926 ps}
