li x10,4
li x11,6
li x12, 7
li x13, 1
leaf_example:
li x1,0x100 
addi x1,x1,-28
sw x10,24(x1)
sw x11,20(x1)
sw x12,16(x1)
sw x13,12(x1)
sw x18,8(x1)
sw x19,4(x1)
sw x20,0(x1)
add x18, x10,x11
add x19,x12,x13
sub x20,x18,x19
add x10,x20,x0
li x10, 1
add x11,x20,x0
ecall
lw x18,8(x1)
lw x19,4(x2)
lw x20,0(x3)


    jalr x0, 0(x1)
