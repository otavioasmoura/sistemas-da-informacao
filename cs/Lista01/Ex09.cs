using System;

class Ex09
{
    static char[] lerDNA()
    {
        Console.Write("Insira a fita de DNA: ");
        string dna = Console.ReadLine().ToUpper();

        char[] vetor = new char[dna.Length];

        for (int i = 0; i < dna.Length; i++)
        {
            vetor[i] = dna[i];
        }

        return vetor;
    }

    static char[] gerarComplementar(char[] vetor)
    {
        char[] complementar = new char[vetor.Length];

        for (int i = 0; i < vetor.Length; i++)
        {
            if (vetor[i] == 'A')
            {
                complementar[i] = 'T';
            }
            else if (vetor[i] == 'T')
            {
                complementar[i] = 'A';
            }
            else if (vetor[i] == 'C')
            {
                complementar[i] = 'G';
            }
            else if (vetor[i] == 'G')
            {
                complementar[i] = 'C';
            }
        }

        return complementar;
    }

    static void mostrarVet(char[] vetor)
    {
        for (int i = 0; i < vetor.Length; i++)
        {
            Console.Write(vetor[i]);
        }

        Console.WriteLine();
    }

    static void Main()
    {
        char[] vetor = lerDNA();

        char[] complementar = gerarComplementar(vetor);

        Console.WriteLine("DNA original:");
        mostrarVet(vetor);

        Console.WriteLine("DNA complementar:");
        mostrarVet(complementar);
    }
}