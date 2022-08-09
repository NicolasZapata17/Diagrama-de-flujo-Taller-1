Algoritmo cajero
	
	Definir clave_t Como Entero
	Definir n_intentos Como Entero
	Definir estado_t Como Logico
	Definir Tipo_c Como Caracter
	Definir Valor_t Como Entero
	Definir saldo Como Real
	clave_t <- 0
	clave_t_true <- 1234
	n_intentos <- 2
	estado_t <- Verdadero
	Tipo_c <- 'Ahorros o Corriente'
	Valor_t <- 0
	saldo <- 0
	Finalizar <- Falso
	
	
	Mientras n_intentos>=0 Y Finalizar=Falso Hacer
		Escribir 'Para retirar por favor digite su clave (1234)'
		Leer clave_t
		
		Si clave_t=clave_t_true Entonces
			Escribir 'clave correcta'
			Escribir Tipo_c
			Leer Ahorros
			Escribir 'Ingrese Valor a Retirar'
			Leer Valor_t
			Escribir 'Su saldo es:',saldo
			// Resto del proceso
			Finalizar <- Verdadero
		SiNo
			Escribir 'Contraseña incorrecta, tiene ',n_intentos,' intentos'
			n_intentos <- n_intentos-1
		FinSi
		
	FinMientras
	
	Si n_intentos<0 Entonces
		estado_t <- Falso
		Escribir 'Tarjeta bloqueada, bye'
	SiNo
		Escribir '¿Imprimir Recibo?'
	FinSi
	
FinAlgoritmo
