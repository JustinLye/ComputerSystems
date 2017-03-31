.data
X: .word 0xF
.text
main:
		add $a0, $a1, $0
		jal f2
		li $t0, 11
f1:		jr $ra
f2:		sw $s0, 0($s2)
		bne $a0, $0, else
		j f1
else:	addi $a0, $a0, -1
		j f2
		li $v0, 10
		
		
		syscall