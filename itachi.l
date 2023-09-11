%{
#include"itachi.tab.h"
%}
letter [A-Za-z]
digit [0-9]
id {letter}({letter}|{digit})*
%%
{id} {return Alpha;}
[/t] {}
[\n] {return 0;}
. {return *yytext;}
%%
int yywrap()
{return 1; } 