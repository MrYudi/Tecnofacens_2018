/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package palindromo;

import java.util.Scanner;

/**
 *
 * @author Eloá
 */
public class Palindromo {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String palavra;
        String option;

        do {

            System.out.println("Digite uma palavra");

            Scanner Teclado = new Scanner(System.in);
            palavra = Teclado.next();

            String palavraminu = palavra.toLowerCase();

            if (Palindromo(palavraminu) == true) {
                System.out.println("É palindromo");
            } else {
                System.out.println("Não é palindromo");
            }
            System.out.println("Deseja testar novamente? (S/N)");
            Scanner Teclados = new Scanner(System.in);
            option = Teclados.next();

        } while (option.equals("S") || option.equals("s"));

    }

    public static boolean Palindromo(String palavra) {
        String invertida = new StringBuffer(palavra).reverse().toString();

        if (palavra.equals(invertida)) {

            return true;
        }

        return false;
    }

}
