using System;
using System.Runtime.InteropServices;

class Ex2
{
    public static double ObterMaiorNota(double[] notas)
    {
        double maiorNota = notas[0];
        for(int i = 1; i < notas.Length; i++)
        {
            if(notas[i]>maiorNota);
            maiorNota=notas[i];
        }
        return maiorNota;
    }

    public static double ObterMenorNota(double[] notas)
    {
        double menorNota = notas[0];
        for(int i = 1; i < notas.Length; i++)
        {
            if(notas[i]<menorNota);
            menorNota=notas[i];
        }
        return menorNota;
    }

    static double CalcularSomaNotas(double[] notas)
    {
        double soma=0;
        for(int i = 1; i < notas.Length; i++)
        {
            soma += notas[i];
        }
        return soma;
    }

    static double CalcularNotaFinal(double[] notas)
    {
        return CalcularSomaNotas(notas)-ObterMaiorNota(notas)-ObterMenorNota(notas);
    }




    static void Main()
    {
        double[] notas = new double[5];
        double resultado;
        Console.WriteLine("Digite as 5 notas ");
        for (int i = 0; i < notas.Length; i++)
        {
            Console.Write($"Nota {i + 1}: ");
            notas[i] = double.Parse(Console.ReadLine());
        }
        resultado = CalcularNotaFinal(notas);
        Console.WriteLine($"Nota final: {resultado:f2}");

    }
}