//Portugol Studio - http://lite.acad.univali.br/portugol/

programa
{
	inclua biblioteca Texto
	inclua biblioteca Tipos
	
	funcao cadeia inverter(cadeia s)
	{ 
		
		inteiro qtd = Texto.numero_caracteres(s)
		cadeia temp = ""
		
		para (inteiro i = (qtd - 1); i >= 0; i--) 
		{
			temp += Texto.obter_caracter(s, i)
		}
	
		retorne temp
	
	}
	
	funcao inicio()
	{
		cadeia string //cadeia -> string
		cadeia invertido = "temp"
		cadeia op

		enquanto(verdadeiro)
		{
			escreva("Digite uma palavra: ")
			leia(string)

			Texto.caixa_baixa(string)
			
			invertido = inverter(string)

			escreva("\nPalavra: "+string)
			escreva("\nInvertida: "+invertido)

			se (string == invertido)
			{
				escreva("\nÉ um palíndromo")
			}
			senao
			{
				escreva("\nNão é um palíndromo")
			}

			escreva("\n\nAperte ENTER para continua...")
			leia(op) //system("Pause");
			limpa()
		}
	}
	
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 227; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */