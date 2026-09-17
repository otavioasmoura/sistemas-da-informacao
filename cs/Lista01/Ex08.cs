using System;

class Ex08
{
    static void inverter(string[] vetor)
    {
        for (int i = 0; i < vetor.Length / 2; i++)
        {
            int indiceOposto = vetor.Length - 1 - i;

            string temporario = vetor[i];

            vetor[i] = vetor[indiceOposto];

            vetor[indiceOposto] = temporario;
        }
    }
}