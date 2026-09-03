# Iteration 0:

lb  x1, 0x100(x0)       # Load byte a[0] from address 0x100 into x1
lh  x2, 0x200(x0)       # Load halfword b[0] from address 0x200 into x2
add x3, x1, x2          # x3 = a[0] + b[0]
sw  x3, 0x300(x0)       # Store word c[0] to address 0x300

# Iteration 1: 
 
lb  x1, 0x101(x0)       # Load byte a[1] from address 0x101 into x1 
lh  x2, 0x202(x0)       # Load halfword b[1] from address 0x202 into x2 
add x3, x1, x2          # x3 = a[1] + b[1]
sw  x3, 0x304(x0)       # Store word c[1] to address 0x304 (+4 byte offset)

# Iteration 2:
 
lb  x1, 0x102(x0)       # Load byte a[2] from address 0x102 into x1 
lh  x2, 0x204(x0)       # Load halfword b[2] from address 0x204 into x2 
add x3, x1, x2          # x3 = a[2] + b[2]
sw  x3, 0x308(x0)       # Store word c[2] to address 0x308 (+4 byte offset)

# Iteration 3: 
 
lb  x1, 0x103(x0)       # Load byte a[3] from address 0x103 into x1 
lh  x2, 0x206(x0)       # Load halfword b[3] from address 0x206 into x2 
add x3, x1, x2          # x3 = a[3] + b[3]
sw  x3, 0x30C(x0)       # Store word c[3] to address 0x30C 

end:
    j end               