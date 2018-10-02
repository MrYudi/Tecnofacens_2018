


resp="s"
while resp=="s" or resp=="S":

    palavra = input("Digite uma palavra: ")

    palavraInvertida = palavra[::-1]
    if(palavra==palavraInvertida):
        print("É um palíndromo")
    else:
        print("Não é palíndromo")
    resp=input("Deseja repetir?? S/N: ")
    if resp=="n" or resp=="N":
        print("Até mais")
		
		
		
		