######################################################################
#
# File name : Eight_Bit_Magnitude_Comparator_simulate.do
# Created on: Wed Sep 26 19:31:48 -0400 2018
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.Eight_Bit_Magnitude_Comparator

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {Eight_Bit_Magnitude_Comparator_wave.do}

view wave
view structure
view signals

do {Eight_Bit_Magnitude_Comparator.udo}

run 1000ns
