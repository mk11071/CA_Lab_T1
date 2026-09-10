
addi x10,x10,0x100
li x9,6 #test values 
li x12,9
sw x9,0(x10)   #storing test values
sw x12,4(x10)
li x20,0
li x11,0
jal x1, swap
end:
    j end
 swap:
    slli x6, x11, 2 #multiplying by 4 as array is of long int 
    add  x6, x10, x6    
    lw   x5, 0(x6)      
    lw   x7, 4(x6)      
    sw   x7, 0(x6)       
    sw   x5, 4(x6)       
    jalr x0, 0(x1)      


















