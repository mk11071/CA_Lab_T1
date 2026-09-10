li x4,1
li x3,6
li sp,0x100
ntri:
    
    addi sp,sp,-8
    sw x1,4(sp)
    sw x3,0(sp)
    addi x5,x3,-1
    bge x5,x4,l1

    addi x3,x0,1
    addi,sp,sp,8
    jalr x0,0(x1)

l1:
    addi x3,x3,-1
    jal x1,ntri
    add x6,x3,x0
    lw x3,0(sp)
    lw x1,4(sp)
    addi sp,sp,8

    add x3,x3,x6
    jalr x0,0(x1)

    
