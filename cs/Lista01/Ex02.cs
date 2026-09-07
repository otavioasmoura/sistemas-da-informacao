using System;

class Ex02
{
    static int[] gerarVetor(int n)
    {
        Random random = new Random();

        int[] vetor = new int [n];
        for(int i=0; i<n; i++)
        {
            vetor[i] = random.Next(0 ,100);
            Console.WriteLine("Vetor["+i+"]: "+vetor[i]);
        }

        return vetor;
    }
    static void verificaImpar(int[] vetor)
    {
        Console.WriteLine("Verificando Impares!");
        int impar=0;
        for(int i=0; i<vetor.Length; i++)
        {
            if(vetor[i] % 2 != 0)
            {
                Console.WriteLine("Vetor["+i+"]: "+vetor[i]);
                impar++;
            }
        }

        Console.WriteLine("Quantidade total de numeros impares: "+impar);
    }

    static void Main()
    {
        Console.WriteLine("Insira a quantidade de elementos: ");
        int n = int.Parse(Console.ReadLine());

        int[] vetor = gerarVetor(n);
        verificaImpar(vetor);
    }
}