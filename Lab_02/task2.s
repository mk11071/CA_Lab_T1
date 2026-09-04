# Variable Initialization
addi x20, x0, 3         # x = 3 (Change this value to 1, 2, 3, 4, or other to test)
addi x22, x0, 10        # b = 10 
addi x23, x0, 4         # c = 4  

# Condition Checking
addi x5, x0, 1         
beq  x20, x5, case1    
addi x5, x0, 2
beq  x20, x5, case2     
addi x5, x0, 3
beq  x20, x5, case3     
addi x5, x0, 4
beq  x20, x5, case4     
# Cases
default:
    addi x21, x0, 0     
    beq  x0, x0, Exit   
case1:
    add  x21, x22, x23  
    beq  x0, x0, Exit  
case2:
    sub  x21, x22, x23 
    beq  x0, x0, Exit   

case3:
    slli x21, x22, 1   
    beq  x0, x0, Exit   
case4:
    srai x21, x22, 1    
                    
Exit:
    add  x0, x0, x0     