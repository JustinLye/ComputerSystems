.data
.text
main:
		ori $s0, $0, 10
		ori $s1, $0, 10
		beq $s0, $s1, lteq	#if(g==h) then branch to lteq
		slt $t0, $s0, $s1	#if(g<h) then $t0 = 1
		beq $t0, $0, else	#if($t0==0) then branch to else
lteq:	add $s0, $0, $0		#g = 0
		j exit				#jump to exit
else:	add $s1, $0, $0		#h=0
exit:
		li $v0, 10
		syscall
		