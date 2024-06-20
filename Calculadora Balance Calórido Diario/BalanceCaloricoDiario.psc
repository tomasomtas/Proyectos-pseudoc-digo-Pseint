Algoritmo BalanceCaloricoDiario
	escribir '---------------------------------------------------------------------------------------------------'
	escribir 'Calculadora Balance Calórico Diario' 
	escribir 'La tasa metabólica basal (TMB) es la cantidad mínima de energía que necesita tu cuerpo para sobrevivir realizando las funciones básicas, tales como respirar, parpadear, filtrar la sangre, regular la temperatura del cuerpo o sintetizar hormonas.'
	escribir 'Vamos a definirla para luego calcular el balance calórico diario'
	Definir sexo Como Cadena
	Definir peso Como Real
	Definir altura Como Entero // Generalmente la altura se define como Real, pero en este caso, al estar en centímetros, lo definimos como entero 
	Definir edad Como Entero 
	Definir TMB Como Real
	Definir A Como Real
	Definir B Como Real
	
	
	
	Escribir 'Ingrese su sexo (masculino/femenino): '
	Leer sexo
	
	Escribir 'Ingrese su peso estimado en Kg '
	Leer peso
	
	Escribir 'Ingrese su altura en centímetros '
	Leer altura
	
	Escribir 'Ingrese su edad '
	Leer edad 
	
	
	A<- (10 * peso)+(6.25 * altura)-(5 * edad) + 5
	B<- (10 * peso)+(6.25 * altura)-(5 * edad) - 161 
	
	si sexo ='masculino' Entonces 
		TMB <- A
	sino 
		TMB <- B
	FinSi
	
	escribir 'Tu tasa metabólica basal es ' TMB ' kilocalorías'
	
	escribir '---------------------------------------------------------------------------------------------------'
	
	escribir 'Vamos a calcular el gasto calórico total, para esto necesitamos agregarle a la TMB el gasto calórico por actividad física'
	
	Definir gasto_calorico_total Como Real 
	Definir poca Como Cadena
	Definir ligera Como Cadena
	Definir moderada Como Cadena
	Definir fuerte Como Cadena
	Definir extrema Como Cadena
	Definir actividad_fisica_diaria Como Cadena
	
	
	
	Escribir 'Ingrese su actividad física diaria (poca,ligera,moderada,fuerte,extrema) Para tener en cuenta: ' 
	Escribir 'Poca, menos de una vez por semana, o actividad física nula'
	Escribir 'ligera (1 - 3 días por semana)'
	Escribir 'moderada (3 - 5 días por semana)'
	Escribir 'fuerte (6 - 7 días por semana)'
	Escribir 'extrema (dos veces al día, entrenamientos muy duros)'
	
	Leer actividad_fisica_diaria
	
	   si actividad_fisica_diaria ='poca' Entonces 
		     gasto_calorico_total<- TMB*1.2
	    sino 
	       si actividad_fisica_diaria ='ligera' Entonces 
			   gasto_calorico_total<- TMB*1.375
	       sino 
		     si actividad_fisica_diaria ='moderada' Entonces 
			 gasto_calorico_total<- TMB*1.55
			 SiNo
			   si actividad_fisica_diaria ='fuerte' Entonces 
				 gasto_calorico_total<- TMB*1.725
				 sino 
					 gasto_calorico_total<- TMB*1.9
				 FinSi
				 finSi 
			   FinSi
			 
		  FinSi
		 
		 
		  
		  
	Escribir ' Tu gasto calórico total es ' gasto_calorico_total ' kilocalorías'
	
	escribir '---------------------------------------------------------------------------------------------------'
	
	
	escribir 'Ahora vamos a calcular la ingesta calórica diaria en kilocalorías para realizar el balance calórico diario'
	
	Definir balanceCaloricoFinal Como Real 
	
	Escribir 'Ahora, ingresarás datos de ingesta en desayuno'
	
	Escribir '<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>'
	
	Definir cantidadPanDesayuno, cantidadLecheDesayuno, cantidadAzucarDesayuno, cantidadChocolateDesayuno, cantidadProteinaDesayuno, cantidadFrutaDesayuno Como Entero
	Definir caloriasDesayuno Como Real
	
	Escribir 'Ten en cuenta que:'
	Escribir 'una porción de pan, de proteínas o de frutas equivale al tamaño de la palma de la mano, dos porciones, dos palmas, y así, en bebidas, una porción es un vaso, leche y yogurt es igual'
	Escribir 'una porción de azúcar equivale a una cucharadita'
	Escribir 'el pan incluye cualquier tipo de panificación, por ejemplo, medialunas, scons o incluso pan integral'
	Escribir 'las proteínas incluyen al huevo, el tocino o frijoles'
	
	caloriasPorPorcionPan <- 265.0
	caloriasPorPorcionLeche <- 90.0
	caloriasPorPorcionAzucar <- 16.0
	caloriasPorPorcionChocolate <- 200.0
	caloriasPorPorcionProteina <- 200.0
	caloriasPorPorcionFruta <- 100.0
	
	Escribir 'Ingrese la cantidad de porciones de pan consumidas en el desayuno: '
	Leer cantidadPanDesayuno
	Escribir 'Ingrese la cantidad de porciones de leche consumidas en el desayuno: '
	Leer cantidadLecheDesayuno
	Escribir 'Ingrese la cantidad de cucharadas de azúcar consumidas en el desayuno: '
	Leer cantidadAzucarDesayuno
	Escribir 'Ingrese la cantidad de barras de chocolate consumidas en el desayuno: '
	Leer cantidadChocolateDesayuno
	Escribir 'Ingrese la cantidad de porciones de proteina consumidas en el desayuno: '
	Leer cantidadProteinaDesayuno
	Escribir 'Ingrese la cantidad de porciones de fruta consumidas en el desayuno: '
	Leer cantidadFrutaDesayuno
	
	
	caloriasDesayuno <- (cantidadPanDesayuno*caloriasPorPorcionPan)+(cantidadLecheDesayuno*caloriasPorPorcionLeche)+(cantidadAzucarDesayuno*caloriasPorPorcionAzucar)+(cantidadChocolateDesayuno*caloriasPorPorcionChocolate)+(cantidadProteinaDesayuno*caloriasPorPorcionProteina)+(cantidadFrutaDesayuno*caloriasPorPorcionFruta)
	
	
	Escribir 'Las calorías totales consumidas en el desayuno son: ', caloriasDesayuno, ' kcal'
	
	
	Escribir '<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>'
	
	
	Escribir 'Ahora, ingresarás datos de ingesta en Almuerzo'
	
	Definir cantidadPanAlmuerzo, cantidadGaseosaAlmuerzo, cantidadEnsaladaAlmuerzo, cantidadProteinaAlmuerzo, cantidadCarbohidratosAlmuerzo, cantidadSandwichAlmuerzo, cantidadPizzaAlmuerzo Como Entero
	Definir caloriasAlmuerzo Como Real
	
	caloriasPorPorcionPan <- 165.0
	caloriasPorPorcionGaseosa <- 120.0
	caloriasPorPorcionEnsalada <- 100.0
	caloriasPorPorcionProteina <- 200.0
	caloriasPorPorcionCarbohidratos <- 300.0
	caloriasPorPorcionSandwich <- 450.0
	caloriasPorPorcionPizza <- 260.0
	
	
	Escribir 'Ingrese la cantidad de porciones de pan consumidas en el almuerzo: '
	Leer cantidadPanAlmuerzo
	Escribir 'Ingrese la cantidad de gaseosa consumida en el almuerzo: '
	Leer cantidadGaseosaAlmuerzo
	Escribir 'Ingrese la cantidad de porciones de ensalada consumidas en el almuerzo: '
	Leer cantidadEnsaladaAlmuerzo
	Escribir 'Ingrese la cantidad de porciones de proteína magra consumidas en el almuerzo: '
	Leer cantidadProteinaAlmuerzo
	Escribir 'Ingrese la cantidad de porciones de carbohidratos consumidas en el almuerzo: '
	Leer cantidadCarbohidratosAlmuerzo
	Escribir 'Ingrese la cantidad de porciones de sandwich o pizzas consumidas en el almuerzo: '
	Leer cantidadSandwichAlmuerzo
	Escribir 'Ingrese la cantidad de porciones de pizza consumidas en el almuerzo: '
	Leer cantidadPizzaAlmuerzo
	
	
	caloriasAlmuerzo <- (cantidadPanAlmuerzo*caloriasPorPorcionPan)+(cantidadGaseosaAlmuerzo*caloriasPorPorcionGaseosa)+(cantidadEnsaladaAlmuerzo*caloriasPorPorcionEnsalada)+(cantidadProteinaAlmuerzo*caloriasPorPorcionProteina)+(cantidadCarbohidratosAlmuerzo*caloriasPorPorcionCarbohidratos)+(cantidadSandwichAlmuerzo*caloriasPorPorcionSandwich)+(cantidadPizzaAlmuerzo*caloriasPorPorcionPizza)
	
	
	Escribir 'Las calorías totales consumidas en el almuerzo son: ', caloriasAlmuerzo, ' kcal'
	
	
	Escribir '<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>'
	
	
	Escribir 'Ahora, ingresarás datos de ingesta en la Merienda'
	
	
	Definir cantidadPanMerienda, cantidadLecheMerienda, cantidadAzucarMerienda, cantidadChocolateMerienda, cantidadProteinaMerienda, cantidadFrutaMerienda Como Entero
	Definir caloriasMerienda Como Real
	
	Escribir 'Ingresa las porciones ingeridas durante la merienda'
	Escribir 'Las porciones equivalen igualmente que en el desayuno'
	
	
	caloriasPorPorcionPan <- 165.0
	caloriasPorPorcionLeche <- 90.0
	caloriasPorPorcionAzucar <- 16.0
	caloriasPorPorcionChocolate <- 200.0
	caloriasPorPorcionProteina <- 200.0
	caloriasPorPorcionFruta <- 100.0
	
	
	Escribir 'Ingrese la cantidad de porciones de pan consumidas durante la merienda: '
	Leer cantidadPanMerienda
	Escribir 'Ingrese la cantidad de porciones de leche consumidas durante la merienda: '
	Leer cantidadLecheMerienda
	Escribir 'Ingrese la cantidad de cucharadas de azúcar consumidas durante la merienda: '
	Leer cantidadAzucarMerienda
	Escribir 'Ingrese la cantidad de barras de chocolate consumidas durante la merienda: '
	Leer cantidadChocolateMerienda
	Escribir 'Ingrese la cantidad de porciones de proteína consumidas durante la merienda: '
	Leer cantidadProteinaMerienda
	Escribir 'Ingrese la cantidad de porciones de fruta consumidas durante la merienda: '
	Leer cantidadFrutaMerienda
	
	caloriasMerienda <- (cantidadPanMerienda*caloriasPorPorcionPan)+(cantidadLecheMerienda*caloriasPorPorcionLeche)+(cantidadAzucarMerienda*caloriasPorPorcionAzucar)+(cantidadChocolateMerienda*caloriasPorPorcionChocolate)+(cantidadProteinaMerienda*caloriasPorPorcionProteina)+(cantidadFrutaMerienda*caloriasPorPorcionFruta)
	
	Escribir 'Las calorías totales consumidas en la Merienda son: ', caloriasMerienda, ' kcal'
	
	
	Escribir '<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>' 
	
	
	Escribir 'Ahora, ingresarás datos de ingesta en la Cena'
	
	
	Definir cantidadPanCena, cantidadGaseosaCena, cantidadEnsaladaCena, cantidadProteinaCena, cantidadCarbohidratosCena, cantidadSandwichCena, cantidadPizzaCena Como Entero
	
	Definir caloriasCena Como Real
	
	
	caloriasPorPorcionPan <- 165.0
	caloriasPorPorcionGaseosa <- 120.0
	caloriasPorPorcionEnsalada <- 100.0
	caloriasPorPorcionProteina <- 200.0
	caloriasPorPorcionCarbohidratos <- 300.0
	caloriasPorPorcionSandwich <- 450.0
	caloriasPorPorcionPizza <- 260.0
	
	
	Escribir 'Ingrese la cantidad de porciones de pan consumidas en la cena: '
	Leer cantidadPanCena
	Escribir 'Ingrese la cantidad de gaseosa consumida en la cena: '
	Leer cantidadGaseosaCena
	Escribir 'Ingrese la cantidad de porciones de ensalada consumidas en la cena: '
	Leer cantidadEnsaladaCena
	Escribir 'Ingrese la cantidad de porciones de proteína magra consumidas en la cena: '
	Leer cantidadProteinaCena
	Escribir 'Ingrese la cantidad de porciones de carbohidratos consumidas en la cena: '
	Leer cantidadCarbohidratosCena
	Escribir 'Ingrese la cantidad de porciones de sándwich o pizzas consumidas en la cena: '
	Leer cantidadSandwichCena
	Escribir 'Ingrese la cantidad de porciones de pizza consumidas en la cena: '
	Leer cantidadPizzaCena
	
	caloriasCena <- (cantidadPanCena*caloriasPorPorcionPan)+(cantidadGaseosaCena*caloriasPorPorcionGaseosa)+(cantidadEnsaladaCena*caloriasPorPorcionEnsalada)+(cantidadProteinaCena*caloriasPorPorcionProteina)+(cantidadCarbohidratosCena*caloriasPorPorcionCarbohidratos)+(cantidadSandwichCena*caloriasPorPorcionSandwich)+(cantidadPizzaCena*caloriasPorPorcionPizza)
	
	Escribir 'Las calorías totales consumidas en la cena son: ', caloriasCena, ' kcal'
	Escribir 'Las calorías totales consumidas en el desayuno son: ', caloriasDesayuno, ' kcal', ',', 'Las calorías totales consumidas en el almuerzo son: ', caloriasAlmuerzo, ' kcal', ',', 'Las calorías totales consumidas en la Merienda son: ', caloriasMerienda, ' kcal', ',', 'Y las calorías totales consumidas en la cena son: ', caloriasCena, ' kcal'
	
	
	
	Escribir '<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>'
	
	
	
	balanceCaloricoFinal <- caloriasDesayuno+caloriasAlmuerzo+caloriasMerienda+caloriasCena-(gasto_calorico_total)
	
	Escribir 'El balance calórico diario es : ', balanceCaloricoFinal, ' kcal'
	
	Si balanceCaloricoFinal<0 Entonces
		Escribir 'Tu balance calórico diario es negativo, si quieres aumentar masa muscular y peso, debes ingerir más calorías, procura aumentar las porciones diarias de proteína y de carbohidratos saludables'
		Si balanceCaloricoFinal=0 Entonces
			Escribir 'tu balance calórico diario es cero, mantendrás tu peso si sigues con estas costumbres alimenticias y de actividad física, pero no podrás ganar masa muscular si vas al gimnasio, para esto, recomiendo aumentar la ingesta de proteína magra'
		FinSi
	SiNo
		Escribir 'Tu balance calórico diario es positivo, significa que aumentarás de peso si no lo corriges. Procura disminuir la ingesta de carbohidratos, aumentar la ingesta de fibra (ensalada) y proteína magra, y aumenta el tiempo de actividad física'
	FinSi
	
FinAlgoritmo
	
	

