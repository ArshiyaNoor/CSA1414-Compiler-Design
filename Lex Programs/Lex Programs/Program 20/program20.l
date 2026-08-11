/* Arshiya Noor 192471010 - Program 20: Print Constants */

%{
#include<stdio.h>
%}

%%
[0-9]+(\.[0-9]+)? {printf("Constant: %s\n",yytext);}
.|\n ;
%%

int yywrap(){return 1;}

int main()
{
yyin=fopen("input20.c","r");
yylex();
return 0;
}