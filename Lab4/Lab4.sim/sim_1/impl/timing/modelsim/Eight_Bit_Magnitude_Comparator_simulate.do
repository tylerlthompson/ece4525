######################################################################
#
# File name : Eight_Bit_Magnitude_Comparator_simulate.do
# Created on: Wed Sep 26 19:36:24 -0400 2018
#
# Auto generated by Vivado for 'post-implementation' simulation
#
######################################################################
vsim -voptargs="+acc" +transport_int_delays +pulse_e/0 +pulse_int_e/0 +pulse_r/0 +pulse_int_r/0 -L xil_defaultlib -L simprims_ver -L secureip -lib xil_defaultlib xil_defaultlib.Eight_Bit_Magnitude_Comparator xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {Eight_Bit_Magnitude_Comparator_wave.do}

view wave
view structure
view signals

do {Eight_Bit_Magnitude_Comparator.udo}

run 1000ns