using System;
using System.Drawing;
using System.Runtime.InteropServices;
using Biblioteca;


class Program
{
    static void Main()
    {
        int linhas = 3, cols = 3;
        int[,] matriz = new int[3, 3];

        Matriz.gerarMatriz(matriz);//ramdo matriz
        //Matriz.lerMatriz(matriz);// metodo para ler
        Matriz.verMatriz(matriz); // metodo para mostrar matriz
    }

}