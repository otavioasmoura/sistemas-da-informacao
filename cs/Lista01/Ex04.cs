using System;
using System.Data;
class Ex04
{
    static int[] gerarVetor(int n)
    {
        Random random = new Random();
        int[] vetor = new int[n];

        for(int i=0; i<n; i++)
        {
            vetor[i] = random.Next(1, 100);
            Console.WriteLine("Vetor["+i+"]: "+vetor[i]);
        }

        return vetor;
    }

    static void verificaMenor(int[] vetor)
    {
        int menor=vetor[0], indice=0;
        for(int i=0; i<vetor.Length; i++)
        {
            if (vetor[i] < menor)
            {
                menor=vetor[i];
                indice = i;
            }
        }
        Console.WriteLine("O menor elemento: Vetor["+indice+"]: "+menor);
    }

    static void Main()
    {
        Console.WriteLine("Quantidade de elementos: ");
        int n = int.Parse(Console.ReadLine());

        int[] vetor = gerarVetor(n);
        verificaMenor(vetor);
    }
}