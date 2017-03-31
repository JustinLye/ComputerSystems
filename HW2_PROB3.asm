.data
.text
main:
		addi $t0, $0, 0x0
		addi $t1, $0, 0x1
lt:		slt $t2, $a0, $t1
		bne $t2, $0, else
		add $t0, $t0, $t1
		addi $t1, $t1, 2
else:	j lt
		add $v0, $t0, $0
exit:	ori $v0, $0, 0xA
		syscall

