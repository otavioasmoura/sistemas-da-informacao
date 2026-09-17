using System;

class Ex07
{
    static int qtdCod(int[]vetor, int cod)
    {
        int quantidade=0;
        for(int i=0; i<vetor.Length; i++)
        {
            if(vetor[i] == cod)
            {
                quantidade++;
            }
        }

        Console.WriteLine($"O valor ({cod}) aparece {quantidade} vezes no vetor!");
        return quantidade;
    }

    static void lerVet(int[] vetor)
    {
        for(int i=0; i<vetor.Length; i++)
        {
            Console.WriteLine($"Vetor[{i}]: {vetor[i]}");
        }
    }

    static int[] gerarVet(int n)
    {
        Random random = new Random();

        int[]vetor = new int[n];
        for(int i=0; i<n; i++)
        {
            vetor[i]=random.Next(1, 100);
        }
        Console.WriteLine("Vetor criado!!");
        return vetor;
    }

    static void Main()
    {
        int[]vetor=gerarVet(100);
        lerVet(vetor);
        qtdCod(vetor, 10);
    }
}