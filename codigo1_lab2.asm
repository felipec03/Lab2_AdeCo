# Lab 2: Codigo 1, Implementacion de BubbleSort
.data
	# La cantidad maxima de numeros a ingresar por consola es de 8 numeros.
	arreglo1: .word 0:8 # input1
	mensaje1: .asciiz "Insertar secuencia de a los mas 8 numeros enteros. \nEsta secuancia sera ordenada por medio de Bubblesort: \n"
.text
	# Mensaje para insertar la primera secuancia de numeros
	li $v0, 4
	la $a0, mensaje1
	syscall
	
	# Guarda la secuancia en $t0
	li $v0, 5
	syscall
	move $t0, $v0
	
	addi $t2, $zero, 0 # Contador del while, i = 0
	addi $t3, $zero, 10000000 # Número que permite ir particionando el número en unidades
	
	addi $t4, $zero, 160 # Offset inicial
	
	# Ciclo While para almacenar el arreglo de manera separada en la direccion requerida
	while:
		bgt $t2, 7, exit # Condicional
		# Primer arreglo
		div $t0, $t3
		mflo $a1
		sw $a1, arreglo1($t4)
			addi $t4, $t4, 4
		mfhi $t0
			
		addi $t2, $t2, 1 # i++
		divu $t3, $t3, 10 # constante = constante / 10
		jal while
		
	# El resultado debe ser mostrado por consola y almacenado en Data Segment
	exit:
		li $v0, 10
		syscall
		