%{
#include<stdio.h>
#include"lex.yy.c"
%}
%token Num
%left '+' '-'
%left '*' '/'
%%
ID	:	E	{printf("\nOutput:%d",$$);}
	;
E	:	E'+'E	{$$=$1+$3;}
	|	E'-'E	{$$=$1-$3;}
	|	E'*'E	{$$=$1*$3;}
	|	E'/'E	{$$=$1/$3;}
	|	Num	{$$=$1;}
	;
%%
void main()
{
	printf("Enter the Expression:");
	yyparse();
}
void yyerror(char*msg)
{
return fprintf(stderr,"%s\n",msg);
}