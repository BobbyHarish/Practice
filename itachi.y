%{
#include<stdio.h>
#include"lex.yy.c"
%}
%token Alpha 
%%
ID	:	Alpha S {printf("Identifier");}
	;
S	:	Alpha S
	|	
	;
%%
void main()
{
printf("Enter the String:");
yyparse();
}
void yyerror(char *msg)
{
return fprintf(stderr,"%s\n",msg);
}