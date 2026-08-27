using System;

class Ex1
{
    static String decodificar(String codificada)
    {
        char[] decodificada = new char[codificada.Length];
        // implementar
        return new String(decodificada);
        int j = 0;
        for (int i = 0; i < codificada.Length; i++)
        {
            if (codificada[i] != 'p')
            {
                decodificada[j] = codificada[i];
                j++;
            }

        }
    }
    static void Main()
    {
        String codficada;
        Console.Write("Entre com a frase codficada: ");
        codficada = Console.ReadLine();
        // chamar a função
        Console.WriteLine(decodificar(codficada));

    }
}