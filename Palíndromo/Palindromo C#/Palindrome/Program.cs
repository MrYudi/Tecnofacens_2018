using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Palindrome
{
    class Program
    {
        static void Main(string[] args)
        {
            string word = string.Empty;
            char option = '\0';

            do
            {
                Console.WriteLine("Digite uma palavra:");
                word = Convert.ToString(Console.ReadLine());
                if (IsPalindrome(word))
                {
                    Console.WriteLine("É palíndromo");
                    Console.ReadLine();
                }

                else
                {
                    Console.WriteLine("Não é palíndromo");
                    Console.ReadLine();
                }

                Console.WriteLine("Deseja testar novamente? (S/N)");
                option = Convert.ToChar(Console.ReadLine());
                if (option == 'n')
                    Environment.Exit(0);

                Console.Clear();

            } while (option != 'n' || option != 'N');

        }

        #region Função que verifica se é palíndromo
        private static bool IsPalindrome(string word)
        {
            //convertendo o string em um vetor do tipo char
            char[] letters = word.ToCharArray();
            //invertendo a ordem das letras e colocando em uma string
            Array.Reverse(letters);
            string reverseWord = new string(letters);

            //comparando as duas strings
            if (RemoveAccent(word.ToLower()) == RemoveAccent(reverseWord.ToLower()))
                return true;
            else
                return false;
        }
        #endregion

        #region Tirando os acentos das vogais
        private static string RemoveAccent(string word)
        {
            word = word.Replace("À", "A");
            word = word.Replace("Â", "A");
            word = word.Replace("Á", "A");
            word = word.Replace("Ã", "A");

            word = word.Replace("à", "a");
            word = word.Replace("â", "a");
            word = word.Replace("á", "a");
            word = word.Replace("ã", "a");

            word = word.Replace("Ê", "E");
            word = word.Replace("É", "E");

            word = word.Replace("ê", "e");
            word = word.Replace("é", "e");

            word = word.Replace("Ó", "O");
            word = word.Replace("Ô", "O");

            word = word.Replace("ó", "o");
            word = word.Replace("ô", "o");

            word = word.Replace("ú", "u");

            return word;
        }
        #endregion
    }
}

