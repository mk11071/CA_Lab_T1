li x10, 0x200
li x11, 7
li x1,9
li x2,
sw x1,28(x10)
sw x2,32(x10)
slli x11,x11,2
jal x1, swap


j exit


swap:
    add x12,x10,x11
    lw x14,0(x12)
    lw x13,4(x12)
    sw x14, 4(x12 )
    sw x13, 0(x12)
    jalr x0, 0(x1)
exit:
    add x0,x0,x0