/* Arshiya Noor 192471010 - Program 23: Add Line Numbers */

%{
#include<stdio.h>
int n=1;
%}

%%
^ {printf("%d ",n++);}
.*\n {printf("%s",yytext);}
%%

int yywrap(){return 1;}

int main()
{
yyin=fopen("input23.c","r");
yylex();
return 0;
}