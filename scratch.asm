.data
A: .word 0xFFFFFFFA
.text
main:
		la $t1, A
		lw $t0, 0($t1)
		sll $t2, $t0, 4
		li $v0, 10
		syscall