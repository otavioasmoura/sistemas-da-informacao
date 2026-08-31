using System;
using BibliotecaFuncoes;

class Program
{
    
    static void Main()
    {
        int[] meuArray = new int[10];
        BibliotecaVetor.gerarVetor(meuArray);
        BibliotecaVetor.mostrarVetor(meuArray);
        Console.ReadKey();
    }
}