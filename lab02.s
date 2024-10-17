
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------
    addi t0,t0,0 #posa stoixeia we have checked for loop
    addi s0,s0,0 #address of last known(?)
    
loop:
    bge t0, a1, done
    slli t2,t0,2 #metatopish calc
    add t3,a0,t2 #calc dieuthinsi thexontos
    lw t1,0(t3)
    beq t1,a2, found
    
    addi t0,t0,1
    j loop
    
found:
    addi s0,t3,0
    addi t0,t0,1
    j loop
    
# Write your code here!
# Do not remove the prog label or write code above it!
#-----------------------------
done:
    addi a7, zero, 10 
    ecall