/* Arshiya Noor 192471010 - Program 28: Mobile Number Validation */

%{
#include<stdio.h>
%}

%%
[6-9][0-9]{9} {printf("Valid Mobile Number\n");}
.* {printf("Invalid Mobile Number\n");}
%%

int yywrap(){return 1;}

int main()
{
yyin=fopen("input28.txt","r");
yylex();
return 0;
}