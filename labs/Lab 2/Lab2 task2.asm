.data
numberPrompt: .asciiz "Enter a number: "
result: .asciiz "The result: "

.text
main:

    li $v0,4
    la $a0,numberPrompt
    syscall

    li $v0,5
    syscall

    move $t0,$v0       

    li $t1, 1
    beq $t0,$t1,CASE1

    li $t1, 2
    beq $t0,$t1,CASE2

    li $t1, 3
    beq $t0, $t1, CASE3

    j DEFAULT

CASE1:
    li $t2,10         
    j END

CASE2:
    li $t2,20         
    j END

CASE3:
    li $t2,30          
    j END

DEFAULT:
    li $t2,-1  
        
END:

    li $v0,4
    la $a0,result
    syscall

    li $v0,1
    move $a0,$t2
    syscall

    li $v0,10
    syscall
