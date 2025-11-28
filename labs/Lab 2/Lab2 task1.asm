.data 

	numberPrompt  : .asciiz"Total numbers: "
	enteredNumber : .asciiz"Enter a number: "
	average       : .asciiz"The average: "	

.text

main:

	li $v0,4
	la $a0,numberPrompt
	syscall

	li $v0,5
	syscall

	move $t0,$v0
	move $t1,$v0
	li $t2,0

	for :
		beqz $t0,EndFor
		li $v0,4
		la $a0,enteredNumber
		syscall
		li $v0,5
		syscall
		add $t2,$t2,$v0
		addi $t0,$t0,-1
		j for
	EndFor:

	
	div $t2,$t1
	mflo $t0

	li $v0,4
	la $a0,average
	syscall
	
	move $a0,$t0
	li $v0,1
	syscall

	li $v0,10
	syscall

