SubProceso rellenar (mDatos,telefono,nombre,i,filas)
	
	Para i=0 hasta filas-1 con paso 1 Hacer
		
		Si mDatos[i,0] == "" Entonces
			Escribir "Dime el nombre";
			leer nombre;
			mDatos[i,0]=nombre;
			Escribir "Dime el telefono";
			leer telefono;
			mDatos[i,1] = telefono; 
			i=filas;
		FinSi
		
	FinPara
FinSubProceso

SubProceso buscar (mDatos,filas)
	Definir i Como Entero;
	Definir nombusc Como Caracter;
	Escribir "Dime el nombre a buscar";
	leer nombusc;
	Para i=0 Hasta filas-1 Con Paso 1 Hacer
		Si (mDatos[i,0]==nombusc o mDatos[i,1]==nombusc ) Entonces
			Escribir "El nombre es: ",mDatos[i,0], " El telefono es: ", mDatos[i,1];
		FinSi
		
	FinPara
FinSubProceso


Algoritmo vAgenda
	Definir num,i,tam,j,filas,columnas como Entero;
	Definir nombre,nombusc,mDatos,telefono,nomcomp,borrado,editar,nomedit,telefonoedi,cont como caracter;
	num=0;
	filas=10;
	columnas=2;
	Dimension mDatos[filas,columnas];
	
	
	
	
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
				rellenar(mDatos,telefono,nombre,i,filas);
				
				
			2:
				buscar(mDatos,filas);
				
				
			3:
				Escribir "Dime el nombre del empleado a borrar";
				leer borrado;
				para i=0 hasta filas-1 con paso 1 Hacer
						Si mDatos[i,0]==borrado Entonces
							mDatos[i,0]="";
							mDatos[i,1]="";
						FinSi
				FinPara
				
				
				
				
				
				
			4:	
				Escribir "¿Que contacto quieres editar?";
				leer editar;
				Para i=0 Hasta filas-1 Con Paso 1 Hacer
					si mDatos[i,0]==editar Entonces
						escribir "Dime el nombre que quieres ponerle";
						leer nomedit;
						mDatos[i,0]=nomedit;
						Escribir "Dime su numero de telefono";
						Leer telefonoedi;
						mDatos[i,1] = telefonoedi;
						i=filas;
					FinSi
				FinPara	
				
				
			5:
				Para i=0 Hasta filas-1 con paso 1 Hacer
					si mDatos[i,0]<>"" Entonces
						Escribir "El nombre es ", mDatos[i,0], " el telefono es; " mDatos[i,1];
					FinSi
					
				FinPara
				
				
				
			De Otro Modo:
				
		Fin Segun
	Hasta Que num==6
		
	
FinAlgoritmo
