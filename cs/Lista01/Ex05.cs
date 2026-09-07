using System;

class Ex05
{
    static int[] gerarVetor(int n)
    {
        Random random = new Random();
        int[] vetor = new int [n];

        for(int i=0; i<n; i++)
        {
            vetor[i]=random.Next(1, 100);
            Console.WriteLine($"Vetor[i]: "+vetor[i]);
        }
        return vetor;
    }

    static void verifica(int valor, int[] vetor)
    {
        bool encontrou = false;
        for(int i=0; i<vetor.Length; i++)
        {
            if(vetor[i]==valor)
            {
                Console.WriteLine($"O valor está  no vetor[{i}]");
                encontrou=true;
                
            }
        }
        if (encontrou == false)
        {
            Console.WriteLine("O valor nao esta no vetor!");
        }
    }

    static void Main()
    {
        Console.WriteLine("Quantidade de elementos: ");
        int n = int.Parse(Console.ReadLine());

        int[] vetor = gerarVetor(n);
        verifica(10, vetor);
    }
}