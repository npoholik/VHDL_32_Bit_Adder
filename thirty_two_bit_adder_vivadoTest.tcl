add_force -radix hex a 0x00000000
add_force -radix hex b 0x00000000
add_force cin 0
run 100us

add_force -radix hex a xFFFFFFFF 
add_force -radix hex b xFFFFFFFF 
add_force cin 0
run 100us

add_force -radix hex a xFFFFFFFF 
add_force -radix hex b xFFFFFFFF 
add_force cin 1
run 100us

add_force -radix hex a xFFFFFFFF 
add_force -radix hex b x00000000 
add_force cin 0
run 100us

add_force -radix hex a xFFFFFFFF 
add_force -radix hex b x00000000 
add_force cin 1
run 100us

add_force -radix hex a x00000000 
add_force -radix hex b xFFFFFFFF 
add_force cin 0
run 100us

add_force -radix hex a x00000000 
add_force -radix hex b xFFFFFFFF 
add_force cin 1
run 100us

add_force -radix hex a xAAAAAAAA 
add_force -radix hex b x55555555 
add_force cin 0
run 100us

add_force -radix hex a xAAAAAAAA 
add_force -radix hex b x55555555 
add_force cin 1
run 100us

add_force -radix hex a x55555555 
add_force -radix hex b xAAAAAAAA 
add_force cin 0
run 100us

add_force -radix hex a x55555555 
add_force -radix hex b xAAAAAAAA 
add_force cin 1
run 100us
