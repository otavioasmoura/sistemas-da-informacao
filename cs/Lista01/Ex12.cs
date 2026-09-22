using System;

class Ex12
{
    static double[] lerVet()
    {
        double[] vetor = new double[5];

        for (int i = 0; i < vetor.Length; i++)
        {
            vetor[i] = double.Parse(Console.ReadLine());
        }

        return vetor;
    }

    static double calcularNota(double[] vetor)
    {
        double maior = vetor[0];
        double menor = vetor[0];
        double soma = 0;

        for (int i = 0; i < vetor.Length; i++)
        {
            soma += vetor[i];

            if (vetor[i] > maior)
            {
                maior = vetor[i];
            }

            if (vetor[i] < menor)
            {
                menor = vetor[i];
            }
        }

        return soma - maior - menor;
    }

    static void Main()
    {
        double[] vetor = lerVet();

        double nota = calcularNota(vetor);

        Console.WriteLine($"{nota:F1}");
    }
}