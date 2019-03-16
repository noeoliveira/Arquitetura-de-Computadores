.data
	#Carrega dados pra memoria
	G: .word 6
	B: .word 1,2,3,4,5
	A: .word 1,2,3,4,5,6
.text 
	#Carrega numeros para os regitradores
	lw $t0, G
	
	#o valor 16 é o complemento de B+4*posição no caso é B+4*4
	#lw $t2, B+16
	#Linha acima tambem pode ser escrita assim onde o registrador $t2 pode ser um aleatorio
	la $t1, B
	lw $t1, 16($t1)
	
	la $t2, A
	#A instrução mul $t1, $t1, 4 tambem pode ser representado da forma abaixo
	sll $t1, $t1, 2
	
	add $t2, $t2, $t1
	lw $t2, ($t2)
	
	
	#Subtrai valores para o registrador $a0
	sub $a0, $t0, $t2
	
	li $v0, 1
	syscall
