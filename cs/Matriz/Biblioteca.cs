using System;

namespace Biblioteca
{
    public class Matriz
    {

        public static void gerarMatriz(int[,] matriz)
        {
            Random random = new Random();
            int linhas = matriz.GetLength(0);
            int cols = matriz.GetLength(1);

            for (int i = 0; i < linhas; i++)
            {
                for (int j = 0; j < cols; j++)
                {
                    matriz[i, j] = random.Next(0, 100);
                }
            }
        }


        public static void lerMatriz(int[,] matriz)
        {
            int linhas = matriz.GetLength(0);
            int cols = matriz.GetLength(1);

            //lendo matriz i=linhas j=colunas
            for (int i = 0; i < linhas; i++)
            {
                for (int j = 0; j < cols; j++)
                {
                    Console.Write($"[{i},{j}]: ");
                    matriz[i, j] = int.Parse(Console.ReadLine());
                }

            }//fim funcao
        }

        public static void verMatriz(int[,] matriz)
        {
            int linhas = matriz.GetLength(0);
            int cols = matriz.GetLength(1);

            // mostrar matriz
            for (int i = 0; i < linhas; i++)
            {
                for (int j = 0; j < cols; j++)
                {
                    Console.Write($" | {matriz[i, j],3}");
                }
                Console.WriteLine();
            }
        }
    }

}