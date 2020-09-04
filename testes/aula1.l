%{
	//cod em C, todos os pré processamentos
	//biblioteca
	//funções
	//structs
	//define
%}

NUM [0-9]+
LETRA [a-z]+

%%

"FIM" {
		printf("Fim do programa\n");
		}

{NUM} {
		printf ("%s -> Número",yytext);
		}
		
{LETRA} {
		printf ("%s -> Caractere",yytext);
		}

%%

int main(){
	yyin = fopen("prog1.pinto","r");
	yylex();
	fclose(yyin);
return 0;
}