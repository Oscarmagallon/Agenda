package Agenda;

import java.util.Scanner;

public class Agenda {

	public static void mostrarTodo(String mDatos[][]) {
		for (int i = 0; i < mDatos.length; i++) {
			if (!mDatos[i][0].equalsIgnoreCase("") || !mDatos[i][1].equalsIgnoreCase("")) {
				System.out.println("El nombre del contacto " + i + 1 + " es " + mDatos[i][0] + " y su telefono es "
						+ mDatos[i][1]);
			}
		}
	}

	// Si no lo encuentro devuelve -1
	public static int buscarContacto(String mDatos[][], String busqueda) {

		for (int i = 0; i < mDatos.length; i++) {
			if (mDatos[i][0].equalsIgnoreCase(busqueda) || mDatos[i][1].equalsIgnoreCase(busqueda)) {
				return i;
			}
		}

		return -1;
	}

	public static void editarContacto(String mDatos[][]) {
		Scanner leer = new Scanner(System.in);
		String edit = "", editnom = "", editel = "", selector = "";
		int pos;
		// Dime contacto
		System.out.println("Que Nombre o telefono quieres cambiar");
		edit = leer.next();
		pos = buscarContacto(mDatos, edit);

		if (pos == -1) {
			System.out.println("El contacto no esta");
		} else {
			System.out.println("Que quieres editar su nombre o telefono");
			edit = leer.next();
			if (edit.equalsIgnoreCase("Telefono")) {
				System.out.println("Que numero de telefono quieres ponerle");
				editel = leer.next();
				mDatos[pos][1] = editel;
			}
			if (edit.equalsIgnoreCase("nombre")) {
				System.out.println("Que nombre quieres ponerle");
				editnom = leer.next();
				mDatos[pos][0] = editnom;

			}

		}

	}

	public static void borrar(String mDatos[][]) {
		Scanner leer = new Scanner(System.in);
		String borrar = "";
		System.out.println("Dime el nombre del contacto a borrar");
		borrar = leer.next();
		for (int i = 0; i < mDatos.length; i++) {
			if (mDatos[i][0].equalsIgnoreCase(borrar) || mDatos[i][1].equals(borrar)) {
				mDatos[i][0] = "";
				mDatos[i][1] = "";

			}else {
				System.out.println("El contacto no esta");
			}
		}
	}

	public static void llenarMatriz(String mDatos[][]) {
		for (int i = 0; i < mDatos.length; i++) {
			for (int j = 0; j < mDatos[i].length; j++) {
				mDatos[i][j] = "";
			}
		}

	}

	public static void buscar(String mDatos[][], String nombusc) {
		Scanner leer = new Scanner(System.in);
		System.out.println("Dime el nombre a buscar");
		nombusc = leer.next();
		for (int i = 0; i < mDatos.length; i++) {
			if (mDatos[i][0].equalsIgnoreCase(nombusc) || mDatos[i][1].equalsIgnoreCase(nombusc)) {
				System.out.println("El nombre es " + mDatos[i][0] + " su numero de telefono es " + mDatos[i][1]);
			}
		}
	}

	public static void guardarContactos(String mDatos[][]) {
		Scanner leer = new Scanner(System.in);
		for (int i = 0; i < mDatos.length; i++) {
			if (mDatos[i][0].equalsIgnoreCase("")) {
				System.out.println("Dime el nombre del contacto");
				mDatos[i][0] = leer.next();
				System.out.println("Dime el numero del contacto");
				mDatos[i][1] = leer.next();
				break;
			}
		}

	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int filas = 0, columnas = 2, num = 0, busqueda = 0;
		String mDatos[][], nombusc = "";
		Scanner leer = new Scanner(System.in);
		System.out.println("Dime el tamano de las filas");
		filas = leer.nextInt();
		mDatos = new String[filas][2];
		llenarMatriz(mDatos);

		while (num != 6) {
			System.out.println("1-Anadir nuevo contacto");
			System.out.println("2-Buscar contacto");
			System.out.println("3-Borrar contacto");
			System.out.println("4-Editar los contactos");
			System.out.println("5-Ver todos los contactos");
			System.out.println("6-Salir");
			num = leer.nextInt();
			switch (num) {
			case 1:
				guardarContactos(mDatos);

				break;
			case 2:
				buscar(mDatos, nombusc);
				break;
			case 3:
				borrar(mDatos);
				break;
			case 4:
				editarContacto(mDatos);
				break;
			case 5:
				mostrarTodo(mDatos);
				break;

			}

		}
		System.out.println("El programa ha terminado");

	}

}
