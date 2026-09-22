using System;

class Ex11
{
    static string decodificar(string mensagem)
    {
        string decodificada = "";

        for (int i = 0; i < mensagem.Length; i++)
        {
            if (mensagem[i] == 'p')
            {
                i++;
                decodificada += mensagem[i];
            }
            else
            {
                decodificada += mensagem[i];
            }
        }

        return decodificada;
    }

    static void Main()
    {
        string mensagem = Console.ReadLine();

        string resultado = decodificar(mensagem);

        Console.WriteLine(resultado);
    }
}