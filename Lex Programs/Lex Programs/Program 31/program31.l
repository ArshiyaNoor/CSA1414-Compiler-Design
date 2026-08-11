/* Arshiya Noor 192471010 - Program 31: Keywords and Identifiers */

%{
#include<stdio.h>
%}

%%
int|char|float|double|void|if|else|while|for|return {printf("Keyword: %s\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("Identifier: %s\n",yytext);}
[ \t\n]+ ;
. ;
%%

int yywrap(){return 1;}

int main()
{
yyin=fopen("input31.c","r");
yylex();
return 0;
}