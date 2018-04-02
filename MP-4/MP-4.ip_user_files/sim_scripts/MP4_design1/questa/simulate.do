onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib MP4_design1_opt

do {wave.do}

view wave
view structure
view signals

do {MP4_design1.udo}

run -all

quit -force
