restart

force input_a 0
force input_b 0
force input_select 0

run 20ns

force input_a 0
force input_b 1
force input_select 0

run 10ns

force input_a 0
force input_b 1
force input_select 1

run 10ns

force input_a 1
force input_b 1
force input_select 0

run 10ns

force input_a 1
force input_b 1
force input_select 1

run 10ns

