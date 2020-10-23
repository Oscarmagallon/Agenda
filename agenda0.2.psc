Algoritmo vAgenda
	Definir num,i,tam como Entero;
	Definir nombre,nombusc,vDatos,telefono,nomcomp,borrado,editar,nomedit como caracter;
	num=0;
	tam=10;
	Dimension vDatos[tam];
	
	Para i=0 Hasta tam-1 con paso 1 Hacer
		vDatos[i] = "";
	FinPara

	

	Repetir
		Escribir "1- Añadir contacto"; 
		Escribir "2- Buscar contacto"; 
		Escribir "3- Borrar contacto"; 
		Escribir "4- Editar contacto"; 
		Escribir "5- Ver todos los contactos";
		Escribir "6- Salir"; 
		Escribir "Dime un numero";
		leer num;
		Segun num Hacer
			1:
				Escribir "Dime el nombre del contacto";
				Leer nombre;
				Escribir "Dime el telefono a buscar";
				Leer telefono;
				nomcomp=nombre+";"+telefono;
				
				Para i=0 Hasta tam-1 con paso 1 Hacer
					si (vDatos[i] == "") Entonces
						vDatos[i] = nomcomp;
						i=tam;
					FinSi
				FinPara
				
			2:
				Escribir "Dime el nombre y el numero a buscar";
				leer nombusc;
				para i= 0 Hasta tam-1 con paso 1 Hacer
					si vDatos[i] == nombusc Entonces
						Escribir vDatos[i];
					FinSi
				FinPara
				
				
			3:
				Escribir "Dime el nombre del empleado a borrar";
				leer borrado;
				Para i=0 Hasta tam-1 Con Paso 1 Hacer
					si vDatos[i]=borrado Entonces
						vDatos[i] = "";
					FinSi
				FinPara	
				
				
				
			4:	
				Escribir "¿Que contacto quieres editar?";
				leer editar;
				Para i=0 Hasta tam-1 Con Paso 1 Hacer
					si vDatos[i]=editar Entonces
						escribir "Dime el nombre que quieres ponerle";
						leer nomedit;
						vDatos[i] = nomedit;
					FinSi
				FinPara	
				
				
			5:	
				Para i=0 Hasta tam-1 con paso 1 Hacer
					si (vDatos[i]<>"") entonces
						escribir vDatos[i]; 
					FinSi
				FinPara
				
				
			De Otro Modo:
				
		Fin Segun
	Hasta Que num==6
	
FinAlgoritmo
