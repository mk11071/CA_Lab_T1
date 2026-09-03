# Initialize registers with the given immediate data values
li x10, 0x78786464  # Load value 0x78786464 into register x10
li x11, 0xA8A81919  # Load value 0xA8A81919 into register x11

# Store the values from registers into memory
sw x10, 0x100(x0)   # Store Word  from x10 into memory address 0x100
sw x11, 0x1F0(x0)   # Store Word  from x11 into memory address 0x1F0

#  Load specific sizes from memory back into registers
lhu x12, 0x100(x0)  # Load Halfword Unsigned from 0x100 into x12 
lh  x13, 0x1F0(x0)  # Load Halfword  from 0x1F0 into x13 
lb  x14, 0x1F0(x0)  # Load Byte  from 0x1F0 into x14 

end:
    j end          

