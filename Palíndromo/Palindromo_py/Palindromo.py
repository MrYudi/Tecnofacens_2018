


resp="s"
while resp=="s" or resp=="S":

    palavra = input("Digite uma palavra: ")

    palavraInvertida = palavra[::-1]
    if(palavra==palavraInvertida):
        print("É palindromo")
    else:
        print("nao é palindromo")
    resp=input("Dejesa repetir?? S/N: ")
    if resp=="n" or resp=="N":
        print("Até mais")