using System;
using BibliotecaMatriz;

class Program{
	static void Main(){
		int[,] matrizChuva = Matriz.carregarMatriz("dados.csv");
		Console.WriteLine("Mostrando Matriz");
		
		Matriz.mostrarMatriz(matrizChuva);
		
		
	}
}