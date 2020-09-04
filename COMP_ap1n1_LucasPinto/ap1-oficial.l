%{
	// Compilador n 1.0
%}

INICIOP "START"
FIMP "END"

LETRA [a-zA-Z]
NUM [0-9]
LETRINHA [a-z]+

OPA "+" | "-" | "*" | "/" | "**"
OPL "&&" | "||" | "==" | "!=" | ">=" | "<="

ATRIBUI "="
ENTRADA "lin>>"
SAIDA "lout<<"

TIPOINT "int"
TIPOFLUT "float"
TIPOSTRING "string"
STRING_SAIDA \"[a-zA-Z0-9]*.*\"

VALOR_REAL {NUM}*\.{NUM}+
VALOR_INTEIRO {NUM}+

COMENT "@".*

IF "if"
ELSE "else"

WHILE "while"
FOR "for"

VAR {LETRINHA}({LETRA} | {NUM})

%%

"START" {
		printf("Inicio do programa\n");
		}
"END" {
		printf("Fim do programa\n");
		}

{NUM} {
		printf ("%s -> Numero",yytext);
		}
		
{LETRA} {
		printf ("%s -> Letra",yytext);
		}
		
{STRING_SAIDA} {
		printf ("String: %s",yytext);
		}
		
{VALOR_REAL} {
		printf ("Valor Real: %s",yytext);
		}
		
{VALOR_INTEIRO} {
		printf ("Valor Inteiro: %s",yytext);
		}
		
. { printf("caractere invalido" %s\n", yytext); }

{INT} {
		printf("Inteiro: %s",yytext);
		}

{TIPOFLUT} {
		printf("Ponto Flutuante: %s",yytext);
		}

{TIPOSTRING} {
		printf("Tipo String: %s",yytext);
		}

{ENTRADA} {
		printf("Leitura de dados: %s",yytext);
		}

{SAIDA} {
		printf("Escrita de dados: %s",yytext);
		}

{VAR} {
		printf("Variavel: %s",yytext);
		}

{OPA} {
		printf("Operador Aritimetico: %s",yytext);
		}

{OPL} {
		printf("Operador Logico: %s",yytext);
		}

{ATRIBUI} {
		printf("Atribuicao: %s",yytext);
		}

{END_LINE} {
		printf("fim da linha de comando: %s",yytext);
		}

{IF} {
		printf("If: %s",yytext);
		}

{ELSE} {
		printf("Else: %s",yytext);
		}
		
{FOR} {
		printf("For: %s",yytext);
		}
		
{WHILE} {
		printf("While: %s",yytext);
		}

{COMENT} {
		printf ("Comentario: %s",yytext);
		}


%%

int main(){
	yyin = fopen("prog1.pinto","r");
	yylex();
	fclose(yyin);
return 0;
}

int  yywrap () {
	return  1 ;
}