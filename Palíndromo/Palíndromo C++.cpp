#include <stdio.h>
#include <locale.h>
#include <stdlib.h>
#include <string.h>
#include <iostream>

void inverter(char *p, int qtd);
void minusculo(char *p, int qtd);

using namespace std;

int main()
{
    setlocale(LC_ALL,"Portuguese");

    char string[100], invertido[100];
    char *p = string, *i = invertido;

	while(1==1)
	{
		cout << "Digite uma palavra: "; //printf("Digite uma string: ");
	    cin >> string; //scanf("%s",string);
	    
		minusculo(p, strlen(string));
		
		strcpy(invertido,string);
		
	    inverter(i, strlen(string));
	    
	    cout << "\nPalavra: " << string << "\n"; 
	    cout << "Invertida: " << invertido << "\n"; 
	    
	    if(strcmp(string,invertido) == 0)
	    {
	    	cout << "� um pal�ndromo"; 
		}
		else
		{
			cout << "N�o � um pal�ndromo";
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
