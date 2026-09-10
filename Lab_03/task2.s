li x10, 5 #test values 
li x11,9
li x12,3
li x13, 7

jal x1, leaf_example
end:
    j end   
leaf_example:
    addi sp, sp, -12    #allocating space in stack and moving stack pointer
    sw x20, 8(sp)
    sw x19, 4(sp)
    sw x18, 0(sp)
    
    add x18, x10, x11   # g+h
    add x19, x12, x13   # i+j
    sub x20, x18, x19   #(g+h)-(i+j)
    add x10, x20, x0    #storing in x10 
    
    lw x18, 0(sp)   #restoing old values for registers
    lw x19, 4(sp)
    lw x20, 8(sp)
    addi sp, sp, 12 #incrementing stack pointer
    
    jalr x0, 0(x1)