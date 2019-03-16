.data
	#Carrega dados pra memoria
	G: .word 6
	H: .word 7
	B: .word 1,2,3,4,5
.text 
	#Carrega numeros para os regitradores
	lw $t0, G
	lw $t1, H
	
	#o valor 16 é o complemento de B+4*posição no caso é B+4*4
	#lw $t2, B+16
	#Linha acima tambem pode ser escrita assim onde o registrador $t3 pode ser um aleatorio
	la $t3, B
	lw $t2, 16($t3)
	
	#Adiciona valores para o registrador $a0
	add $a0, $t0, $t1
	add $a0, $a0, $t2
	
	li $v0, 1
	
	syscall
