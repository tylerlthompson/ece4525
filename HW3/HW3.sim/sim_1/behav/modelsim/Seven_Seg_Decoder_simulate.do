######################################################################
#
# File name : Seven_Seg_Decoder_simulate.do
# Created on: Tue Sep 25 12:26:46 -0400 2018
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.Seven_Seg_Decoder

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {Seven_Seg_Decoder_wave.do}

view wave
view structure
view signals

do {Seven_Seg_Decoder.udo}

run 1000ns
