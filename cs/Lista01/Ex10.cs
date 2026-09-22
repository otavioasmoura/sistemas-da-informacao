using System;

class Ex10
{
    static int[] lerVet(int n)
    {
        int[] vetor = new int[n];

        for (int i = 0; i < vetor.Length; i++)
        {
            Console.Write("Insira o resultado do lançamento " + (i + 1) + ": ");
            vetor[i] = int.Parse(Console.ReadLine());
        }

        return vetor;
    }

    static int[] verificarOcorrencias(int[] vetor)
    {
        int[] ocorrencias = new int[6];

        for (int i = 0; i < vetor.Length; i++)
        {
            ocorrencias[vetor[i] - 1]++;
        }

        return ocorrencias;
    }

    static void mostrarVet(int[] vetor)
    {
        for (int i = 0; i < vetor.Length; i++)
        {
            Console.WriteLine("Face " + (i + 1) + ": " + vetor[i] + " ocorrencias");
        }
    }

    static void Main()
    {
        Console.Write("Insira a quantidade de lancamentos: ");
        int n = int.Parse(Console.ReadLine());

        int[] vetor = lerVet(n);

        int[] ocorrencias = verificarOcorrencias(vetor);

        Console.WriteLine("\nOcorrencias de cada face:");
        mostrarVet(ocorrencias);
    }
}