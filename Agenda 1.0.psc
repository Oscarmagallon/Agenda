Funcion nombre<-dameNombre(aux)
	Definir i Como Entero;
	Definir nombre Como Caracter;
	
	Para i = 0 hasta Longitud(aux)-1 Con Paso 1 Hacer
		si (Subcadena(aux,i,i) == ";") Entonces
			nombre=Subcadena(aux,0,i-1);
			//telefono =  Subcadena(aux,i+1,Longitud(aux));
		FinSi
	FinPara
FinFuncion

Funcion telefono<-dameTelefono(aux)
	Definir i Como Entero;
	
	Para i = 0 hasta Longitud(aux)-1 Con Paso 1 Hacer
		si (Subcadena(aux,i,i) == ";") Entonces
			//nombre=Subcadena(aux,0,i-1);
			telefono =  Subcadena(aux,i+1,Longitud(aux));
		FinSi
	FinPara
FinFuncion


Algoritmo vAgenda
	Definir num,i,tam,j como Entero;
	Definir nombre,nombusc,vDatos,telefono,nomcomp,borrado,editar,nomedit,aux como caracter;
	num=0;
	tam=10;
	Dimension vDatos[tam];
	
	Para i=0 Hasta tam-1 con paso 1 Hacer
		vDatos[i] = "";
	FinPara
	
	
	
	Repetir
		Escribir "1- Añadir contacto"; //Good
		Escribir "2- Buscar contacto"; //Goog
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
				Escribir "Dime el nombre a buscar";
				leer nombusc;
				Para i=0 Hasta tam-1 Con Paso 1 Hacer
					Si (vDatos[i]<>"") Entonces
						aux = vDatos[i]; // Guardo en aux el texto nombre;telefono
						Para j = 0 hasta Longitud(aux)-1 Con Paso 1 Hacer
							si (Subcadena(aux,j,j) == ";") Entonces
								nombre=Subcadena(aux,0,j-1);
								telefono =  Subcadena(aux,j+1,Longitud(aux));
							FinSi
						FinPara
						Escribir "El nombre es: ", nombre, "Y el telefono es: ", telefono;
					
					Fin Si
					
				
				FinPara
				
				
			3:
				Escribir "Dime el nombre del empleado a borrar";
				leer borrado;
				para j=0 hasta tam-1 con paso 1 Hacer
					si vDatos[j] <> "" Entonces
						aux=vDatos[j];
						//Comparar nombre troceado y telefono
						Si (borrado == dameNombre(aux) o borrado == dameTelefono(aux))
							vDatos[j]="";
						FinSi
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
					Si (vDatos[i]<>"") Entonces
						Para j = 0 hasta Longitud(vDatos[i])-1 Con Paso 1 Hacer
							si (Subcadena(vDatos[i],j,j) == ";") Entonces
								nombre=Subcadena(vDatos[i],0,j-1);
								telefono =  Subcadena(vDatos[i],j+1,Longitud(vDatos[i]));
							FinSi
						FinPara
						Escribir nombre+ "-------"+telefono;
					Fin Si
				
				FinPara
				
				
			De Otro Modo:
				
		Fin Segun
	Hasta Que num==6
	Para i=0 Hasta tam-1 Con Paso 1 Hacer
		
	Fin Para
FinAlgoritmo

