r<-"s"
while (r == "s" || r == "S") {


    x <- readline(prompt = "Digite uma palavra: ")
    palavra <- x
    palavraInvertida <- paste(substring(palavra, nchar(palavra):1, nchar(palavra):1), collapse = "")
    
    if (palavra == palavraInvertida) {
        print("e palindromo")
    } else {
        print("nao e palindromo")
    }
    r <- readline(prompt = "Deseja repetir?? S/N")
    
}
  



