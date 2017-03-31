.data
		f:
		g:
		y:
.text
main:
		addi $sp, $sp, -4		#make stack frame
		sw $ra, 0($sp)			#store $ra on stack
		addi $a0, $zero, 2		#$a0 = 2
		sw $a0, f				#f = 2
		addi $a1, $zero, 3		#$a1 = 3
		sw $a1, g				#g = 3
		jal sum					#call sum function
		sw $v0, y				#y = sum(f,g)
		lw $ra, 0($sp)			#restore $ra from stack
		addi $sp, $sp, 4		#restore stack pointer
		li $v0, 10
		syscall
sum:
		add $v0, $a0, $a1		#$v0 = a + b
		jr $ra					#return to caller
		
		