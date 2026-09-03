# int a = 5;
    addi x1, x0, 5

    # int b = 0 + 0;
    addi x2, x0, 0

    # a = b + 32;
    addi x1, x2, 32

    # int d = (a + b) - 5;
    add  x3, x1, x2
    addi x3, x3, -5

    # int e = (((a - d) + (b - a)) + d);
    sub  x5, x1, x3      
    sub  x6, x2, x1       
    add  x5, x5, x6        
    add  x4, x5, x3        

    # e = a + b + d + e;
    add  x4, x4, x1        
    add  x4, x4, x2       
    add  x4, x4, x3       

end:
    j end