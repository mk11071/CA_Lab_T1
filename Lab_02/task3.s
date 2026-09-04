    # First Loop=
    addi x22, x0, 0         
    addi x5, x0, 10        
    bge  x22, x5, Exit_int 

loop_1:
    slli x24, x22, 2        
    sw   x22, 0x200(x24) 
    addi x22, x22, 1        
    blt  x22, x5, loop_1   

    # Second Loop
Exit_int:
    li   x22, 0             
    li   x23, 0             
    bge  x22, x5, Exit      

loop_2: 
    slli x24, x22, 2     
    
    lw   x25, 0x200(x24)      
    add  x23, x23, x25      
    addi x22, x22, 1        
    blt  x22, x5, loop_2    
Exit:
    j Exit