/* Arshiya Noor 192471010 - Program 40: FLEX Token Separation */

%{
#include<stdio.h>
%}

%%
int|char|float|double|void|return|if|else|for|while {printf("Keyword: %s\n",yytext);}
[0-9]+ {printf("Constant: %s\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("Identifier: %s\n",yytext);}
[+\-*/%=<>] {printf("Operator: %s\n",yytext);}
[{}();,] {printf("Special Symbol: %s\n",yytext);}
[ \t\n]+ ;
. {printf("Unknown: %s\n",yytext);}
%%

int yywrap(){return 1;}

int main()
{
yyin=fopen("input40.c","r");
yylex();
return 0;
}