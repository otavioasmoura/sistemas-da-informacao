using System;

class Ex08
{
    static char[] lerVet()
    {
        Console.Write("Insira uma palavra: ");
        string palavra = Console.ReadLine();

        char[] vetor = new char[palavra.Length];

        for (int i = 0; i < palavra.Length; i++)
        {
            vetor[i] = palavra[i];
        }

        return vetor;
    }

    static char[] inverterVet(char[] vetor)
    {
        char[] invertido = new char[vetor.Length];

        for (int i = 0; i < vetor.Length; i++)
        {
            invertido[i] = vetor[vetor.Length - 1 - i];
        }

        return invertido;
    }

    static void mostrarVet(char[] vetor)
    {
        for (int i = 0; i < vetor.Length; i++)
        {
            Console.Write(vetor[i]);
        }
    }

    static void Main()
    {
        char[] vetor = lerVet();

        char[] invertido = inverterVet(vetor);

        Console.WriteLine("Vetor invertido:");
        mostrarVet(invertido);
    }
}