Algoritmo cajeroAutomatic
	user <- 'TOMAS'
	pass <- '1234'
	SALDO <- 2650000
	intentos <- 1
	Salir <- falso
	Mientras intentos<4 Y Salir=falso Hacer
		Escribir 'Ingrese nombre de usuario'
		Leer nom
		Escribir 'Ingrese contraseña'
		Leer clave
		Si nom=user Y clave=pass Entonces
			Escribir 'Bienvenido al sistema de Homebanking'
			Mientras Salir=falso Hacer
				Escribir 'Menú del sistema'
				Escribir '1 - Consulta de saldo'
				Escribir '2 - Depósito'
				Escribir '3 - Extracción'
				Escribir '4 - Transferencia'
				Escribir '5 - Salir'
				Escribir 'Ingrese opción [1-5]'
				Leer opcion
				Limpiar Pantalla
				Según opcion Hacer
					'1':
						Escribir 'Consulta de saldo'
						Escribir 'Su saldo es ', SALDO
					'2':
						Escribir 'Depósito'
						Escribir 'Qué importe desea depositar?'
						Leer deposite
						SALDO <- SALDO+deposite
						Escribir 'Su nuevo saldo es de $', SALDO
					'3':
						b2000 <- 0
						b1000 <- 0
						b500 <- 0
						b200 <- 0
						b100 <- 0
						Escribir 'Extracción'
						Escribir 'Este cajero entrega billetes de $100, $200, $500, $1000 y $2000'
						Escribir 'Qué importe desea extraer?'
						Leer extr
						Si extr<=SALDO Entonces
							Si extr>=2000 Entonces
								b2000 <- trunc(extr/2000)
								extr <- extr-b2000*2000
								SALDO <- SALDO-b2000*2000
							FinSi
							Si extr>=1000 Entonces
								b1000 = trunc(extr/1000)
								extr = extr-b1000*1000
								SALDO = SALDO-b1000*1000
							FinSi
							Si extr>=500 Entonces
								b500 = trunc(extr/500)
								extr = extr-b500*500
								SALDO = SALDO-b500*500
							FinSi
							Si extr>=200 Entonces
								b200 = trunc(extr/200)
								extr = extr-b200*200
								SALDO = SALDO-b200*200
							FinSi
							Si extr>=100 Entonces
								b100 = trunc(extr/100)
								extr = extr-b100*100
								SALDO = SALDO-b100*100
							FinSi
							Escribir 'Recibe:'
							Si b2000<>0 Entonces
								Escribir b2000, 'Billetes de $2000'
							FinSi
							Si b1000<>0 Entonces
								Escribir b1000,'Billetes de $1000'
							FinSi
							Si b500<>0 Entonces
								Escribir b500, 'Billetes de $500'
							FinSi
							Si b200<>0 Entonces
								Escribir b200,'Billetes de $200'
							FinSi
							Si b100<>0 Entonces
								Escribir b100,'Billetes de $100'
							FinSi
							Si extr<>0 Entonces
								Escribir 'No se puedieron extraer $',extr 
							FinSi
						SiNo
							Escribir 'Saldo insuficiente'
						FinSi
						Escribir 'Su saldo es de:',SALDO
					'4':
						Escribir 'Transferencia'
						Escribir 'Ingrese CBU/CVU'
						Leer Cuenta_id
						Escribir 'Qué importe desea transferir?'
						Leer Transf
						Si Transf<=SALDO Entonces
							SALDO <- SALDO-Transf
							Escribir 'Se ha transferido $', Transf, 'a la cuenta', Cuenta_id
							Escribir 'Su nuevo saldo es de $', SALDO
						SiNo
							Escribir 'Fondos insuficientes'
						FinSi
					'5':
						Salir <- verdadero
					De Otro Modo:
						Escribir 'Opción incorrecta'
				FinSegún
			FinMientras
		SiNo
			Escribir 'Login incorrecto, verifique los datos ingresados'
			intentos <- intentos+1
		FinSi
	FinMientras
FinAlgoritmo
