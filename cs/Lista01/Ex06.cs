using System;

class Ex06
{
    static int[] lerVet(int[] vetor)
    {
        for(int i=0; i<vetor.Length; i++)
        {
            Console.Write("Insira valor para o vetor["+i+"]: ");
            vetor[i] = int.Parse(Console.ReadLine());
        }

        return vetor;
    }
    static int[] multiVet(int[]vetor1, int[]vetor2)
    {
        int[]multi = new int[vetor1.Length];

        for(int i=0; i<vetor1.Length; i++)
        {
            multi[i]=vetor1[i]*vetor2[i];
        }
        return multi; 
    }

    static void mostrarVet(int[] vetor)
    {
        for(int i=0; i<vetor.Length; i++)
        {
            Console.WriteLine("Vetor["+i+"]= "+vetor[i]);
        }
    }
    static void Main()
    {
        Console.WriteLine("Insira a quanntidade de elementos para o vetor: ");
        int n = int.Parse(Console.ReadLine());

        int[] vetor1 = new int [n];
        int[] vetor2 = new int [n];

        lerVet(vetor1);
        lerVet(vetor2);

        int[] multi = multiVet(vetor1, vetor2);

        

        mostrarVet(multi);
    }
}