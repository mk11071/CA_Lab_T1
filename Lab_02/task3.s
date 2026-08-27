addi x22, x0,0
addi x1, x0,10
condition_1:
    blt x22, x1, loop_1
    beq x0, x0, Exit_int
loop_1:
    slli x24, x22, 2  
    sw x22, 0x200(x24)
    addi x22, x22, 1
    beq x0, x0, condition_1
Exit_int:
li x22,0
li x23, 0
condition_2:
    blt x22, x1, loop_2
    beq x0, x0, Exit
loop_2: 
    slli x24, x22, 2 
    sw x25, 0x200(x24)
    add x23, x23, x25
    addi x22, x22, 1
    beq x0, x0, condition_2


Exit:
    add x0,x0,x0


    