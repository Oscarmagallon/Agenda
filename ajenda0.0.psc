Algoritmo Agenda
	Definir nombre,buscar Como Caracter;
	Definir telefono,num Como Entero;
	
	
	
	Repetir
		Escribir "Para añadir nombre y telefono pulsar 1";
		Escribir "Para borrar empleados pulsar 2";
		Escribir "Para buscar empleados pulsar 3";
		Escribir "Para editar empleados pulsa 4";
		Escribir "Para ver todos los empleados pulsa 5";
		Escribir "Para salir pulsa 6";
		Escribir "Dime un numero";
		leer num;
		Segun num Hacer
			1:
				Escribir "Dime el nombre";
				leer nombre;
				Escribir "Dime el numero de telefono";
				Leer telefono;
				
			2:
				telefono = 0; 
				nombre="";
	
			3:
				Escribir "Escribe el empleado a buscar";
				Leer buscar;
				si buscar == nombre Entonces
					Escribir "El nombre ",nombre, "si que está";
					Escribir "El telefono ",telefono, "corresponde a " nombre;
				SiNo
					Escribir "No se han encontrado usuarios";
				FinSi
			4:
				Escribir "Dime el nombre correcto";
				leer nombre;
				Escribir "Dime el numero de telefono correcto";
				leer telefono;
			5:
				Escribir "Los empleados son: ", nombre, " y los telefonos son: " , telefono;
			6: 
				Escribir "Adios";
			De Otro Modo:
				Escribir "Dime un numero valido";
				leer num;
		Fin Segun
	Hasta Que num==6
	
	
	
	
	
	
	
	
	
	
	
	
	

		
	
	
FinAlgoritmo
