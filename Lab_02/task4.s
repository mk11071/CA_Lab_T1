li x7, 0
li x5, 10
li x6, 5
li x10, 0x100
outer_loop:
    li x29, 0
    bge x7, x5, exit        
    bge x29, x6, increment_outer  

inner_loop:
    add x2, x7, x29
    slli x3, x29, 4
    add x3, x3, x10
    sw x2, 0x00(x3)
    
    addi x29, x29, 1
    blt x29, x6, inner_loop

increment_outer:
    addi x7, x7, 1
    beq x0, x0, outer_loop

exit:
    j exit