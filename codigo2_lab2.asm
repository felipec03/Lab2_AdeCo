.data
	mensajeIntroductorio: .asciiz "Seleccione la formula: \n1) Combinatoria \n2) Permutaciones \n3) Variaciones \nSeleccione una opci�n: "
	mensajePermutacion: .asciiz "Permutaci�n seleccionada\n"
	mensajeCombinacion: .asciiz "Combinaci�n seleccionada\n"
	mensajeVariacion: .asciiz "Variaci�n seleccionada\n"
	numeroEleccion: .word 0
	numeroN: .word 0
	numeroM: .word 0
.text
	.globl main
	main:
		li $v0, 4
		la $a0, mensajeIntroductorio
		syscall
		
		li $v0, 5
		syscall
		
		# Guarda en el registro $a0 la elecci�n
		sw $a0, numeroEleccion
		
		# Condicionales respecto a la elecci�n
		beq $a0, 1, permutacion
		beq $a0, 2, combinacion
		beq $a0, 3, variacion
		
	# Etiquetas con operaciones elementales pedidas
	miMultiplicacion: 
	miDivision: 
	miFactorial: 
	# Serie de etiquetas respectiva a cada operaci�n
	permutacion: 
 	combinacion: 
	variacion: 