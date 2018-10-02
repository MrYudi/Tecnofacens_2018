#include <stdio.h>
#include <locale.h>
#include <stdlib.h>
#include <string.h>

void inverter(char *p, int qtd);
void minusculo(char *p, int qtd);

int main()
{
    setlocale(LC_ALL,"Portuguese");

    char string[100], invertido[100];
    char *p = string, *i = invertido;

	while(1==1)
	{
		printf("Digite uma palavra: ");
		scanf("%s",string);
	    
		minusculo(p, strlen(string));
		
		strcpy(invertido,string);
		
	    inverter(i, strlen(string));
	    
	    printf("\nPalavra: %s\n", string);
	    printf("Invertida: %s\n", invertido);
	    
	    if(strcmp(string,invertido) == 0)
	    {
	    	printf("É um palíndromo");
		}
		else
		{
			printf("Não é um palíndromo");
		}
	
	    printf("\n\n");
	    system("Pause");
	    system("cls");
	}
    
    return 0;
}

void inverter(char *p, int qtd)
{
    int i, j;
    char aux;

    for(i = (qtd - 1), j = 0; j < i; j++, i--)
    {
        aux = *(p+j);
        *(p+j) =  *(p+i);
        *(p+i) = aux;
    }
}
void minusculo(char *p, int qtd)
{
    int i;
    for(i = 0; i < qtd; i++, p++)
    {
         if(('A'< *p) && (*p < 'Z'))
         {
              *p = *p + 32;         
         }
    }     
}
