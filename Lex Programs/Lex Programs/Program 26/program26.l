/* Arshiya Noor 192471010 - Program 26: Email Validation */

%{
#include<stdio.h>
%}

%%
[a-zA-Z0-9._]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,} {printf("Valid Email\n");}
.* {printf("Invalid Email\n");}
%%

int yywrap(){return 1;}

int main()
{
yyin=fopen("input26.txt","r");
yylex();
return 0;
}