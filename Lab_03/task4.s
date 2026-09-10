
li x5,6 # these 4 lines are just for testing purposes
sw x5,0x200(x0)
li x5, 5
sb x5,0x201(x0)
jal x1, strcpy
end:
 j end
strcpy:
    addi sp,sp,-16
    sw x10,12(sp)
    sw x11,8(sp)
    sw x19,4(sp)
    sw x3,0(sp)
    li x19,0
    li x10,0x100
    li x11,0x200
    not_null:
        add x19,x19,x11
        lb x3,0(x19)
        
        sub x19,x19,x11
        add x19,x19,x10
        sb x3,0(x19)
        beq x3,x0, exit
        sub x19,x19,x10
        addi x19,x19,1
        beq x0,x0, not_null
    exit:
        lw x3,0(sp)
        lw x19,4(sp)
        lw x11,8(sp)
        lw x10,12(sp)
        addi sp,sp,16
        jalr x0,0(x1)


