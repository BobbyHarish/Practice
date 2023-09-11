%{
#include<stdlib.h>
#include"Airth.tab.h"
%}
%%
[0-9] {yylval=atoi(yytext); return Num;}
[\t] {}
[\n] {return 0;}
. {return *yytext;}
%%
int yywrap()
{return 1;}