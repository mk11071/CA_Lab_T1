addi x10, x0, 12    #x10 and x11 are passed as parameters 
addi x11, x0, 12
jal x1,sum  #function call
li x10,1    #loading immidiate for ecall function 
ecall
j exit
sum:
    add x11,x10,x11 # sum result being stored in x11
    jalr x0, 0(x1)
exit:
    j exit  