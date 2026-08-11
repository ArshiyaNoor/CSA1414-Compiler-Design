/* Arshiya Noor 192471010 - Program 37: Word Frequency */

%{
#include<stdio.h>
int n=0;
%}

%%
Compiler {n++;}
[a-zA-Z]+ ;
. ;
%%

int yywrap(){return 1;}

int main()
{
yyin=fopen("input37.txt","r");
yylex();
printf("Frequency=%d\n",n);
return 0;
}