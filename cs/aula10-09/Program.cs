using System;
using BibliotecaMatriz;
using System.IO; // para entrada e saida de dados 


class Program
{

    static void Main()
    {
        int[,] matrizOcorrencias = BibliotecaMatriz.Matriz.carregarMatriz("ocorrencias.csv");
        Console.WriteLine("Matriz Carregada");
        BibliotecaMatriz.Matriz.mostrarMatriz(matrizOcorrencias);

        BibliotecaMatriz.Matriz.qtdOcorrencias(matrizOcorrencias, 3);
    }
    
}