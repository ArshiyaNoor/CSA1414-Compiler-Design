/* Arshiya Noor 192471010 - Program 25: Capital Words */

%{
#include<stdio.h>
%}

%%
[A-Z]+ {printf("%s\n",yytext);}
.|\n ;
%%

int yywrap(){return 1;}

int main()
{
yyin=fopen("input25.txt","r");
yylex();
return 0;
}