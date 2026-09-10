li x3,6
fact:
    addi sp,sp,-4
    sw x4,0(sp)
    li x4,1
    while_loop:    
        ble x3,x0,exit
        mul x4,x4,x3
        addi x3,x3,-1
        j while_loop
    exit:
    add x10,x4,x0
    li x11,2
    ecall
    lw x4,0(sp)
    addi sp,sp,4
