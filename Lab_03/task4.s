li x2,0x200
li x5,0
add x5,x5,x10
li x4,0
lb x3,0(x10)
add x4,x4,x11
not_null:
    beq x3,x0, exit
    sb x3,0(x4)
    lb x3, 0(x5)
    addi x5,x5,1
    addi x4,x4,1
    beq x0,x0, not_null
exit:
    add x0,x0,x0


