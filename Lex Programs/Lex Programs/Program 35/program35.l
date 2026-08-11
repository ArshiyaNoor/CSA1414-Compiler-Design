/* Arshiya Noor 192471010 - Program 35: Digit Validation */

%{
#include<stdio.h>
%}

%%
[0-9] {printf("Digit\n");}
. {printf("Not a Digit\n");}
%%

int yywrap(){return 1;}

int main()
{
yyin=fopen("input35.txt","r");
yylex();
return 0;
}