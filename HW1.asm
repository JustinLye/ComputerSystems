.data
#if (i==j) f = g + h else f = g - h
I: .word 3
J: .word 4
G: .word 5
H: .word 6

.text
main:
	la $t0, I
	lw $t1, 0($t0)
	la $t0, J
	lw $t2, 0($t0)
	la $t0, G
	lw $t3, 0($t0)
	la $t0, H
	lw $t4, 0($t0)
	bne $t1, $t2, Else
	add $s1, $t3, $t4
	j Exit
	Else:
	sub $s1, $t3, $t4
	Exit:
	li $v0, 10
	syscall