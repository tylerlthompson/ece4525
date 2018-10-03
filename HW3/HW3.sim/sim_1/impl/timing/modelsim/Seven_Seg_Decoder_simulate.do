######################################################################
#
# File name : Seven_Seg_Decoder_simulate.do
# Created on: Tue Sep 25 12:29:51 -0400 2018
#
# Auto generated by Vivado for 'post-implementation' simulation
#
######################################################################
vsim -voptargs="+acc" +transport_int_delays +pulse_e/0 +pulse_int_e/0 +pulse_r/0 +pulse_int_r/0 -L xil_defaultlib -L simprims_ver -L secureip -lib xil_defaultlib xil_defaultlib.Seven_Seg_Decoder xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {Seven_Seg_Decoder_wave.do}

view wave
view structure
view signals

do {Seven_Seg_Decoder.udo}

run 1000ns