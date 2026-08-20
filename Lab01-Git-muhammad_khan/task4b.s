#  character arrray "a" at 0x100
#  character arrray "b" at 0x200
#  character arrray "c" at 0x300
addi x2, x0,8
addi x3, x0, 16
addi x6, x0, 32
lb x1, 0x100(x0)
lh x4, 0x200(x0)
add x5, x1, x4
sw x5, 0x300(x0)

lb x1, 0x100(x2)
lh x4, 0x200(x3)
add x5, x1, x4
sw x5, 0x300(x6)

lb x1, 0x100(x2)
lh x4, 0x200(x3)
add x5, x1, x4
sw x5, 0x300(x6)

lb x1, 0x100(x2)
lh x4, 0x200(x3)
add x5, x1, x4
sw x5, 0x300(x6)

