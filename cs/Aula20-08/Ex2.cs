using System;
using BibliotecaFuncoes;

class Ex2
{
    static int contarImpares(int[] vetor)
    {
        int contadorImpares = 0;
        for (int i = 0; i < vetor.Length; i++)
        {
            if (vetor[i] % 2 != 0)
                contadorImpares++;
        }// fim for
        return contadorImpares;

       
    }

     static void Main()
        {
            int n, qtdImpares;

            Console.Write("Tamanho do Vetor: ");
            n = int.Parse(Console.ReadLine());
            int[] meuArray = new int[n];

            BibliotecaVetor.gerarVetor(meuArray);
            BibliotecaVetor.mostrarVetor(meuArray);

            qtdImpares = contarImpares(meuArray);
            Console.WriteLine("Quantidade de impares: "+qtdImpares);
            Console.ReadKey(); 
        }
}