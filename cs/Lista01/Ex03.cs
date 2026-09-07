using System;
using System.Data;
class Ex03
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

    static void verificaMaior(int[] vetor)
    {
        int maior=vetor[0], indice=0;
        for(int i=0; i<vetor.Length; i++)
        {
            if (vetor[i] > maior)
            {
                maior=vetor[i];
                indice = i;
            }
        }
        Console.WriteLine("O maior elemento: Vetor["+indice+"]: "+maior);
    }

    static void Main()
    {
        Console.WriteLine("Quantidade de elementos: ");
        int n = int.Parse(Console.ReadLine());

        int[] vetor = gerarVetor(n);
        verificaMaior(vetor);
    }
}