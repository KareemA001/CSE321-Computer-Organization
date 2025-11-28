.data 

	Course	   : .asciiz"Course: CSE321-Computer-Organization"
	Name	   : .asciiz"Name : Karim Alaa\n"
	ID	   : .asciiz"ID   : 0123654789\n"

.text

main:
		
li $v0,4
la $a0,Name
syscall

la $a0,ID
syscall

la $a0,Course
syscall

li $v0,10
syscall	