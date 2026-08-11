/* Arshiya Noor 192471010 - Program 34: DOB Validation */

%{
#include<stdio.h>
%}

%%
(0[1-9]|[12][0-9]|3[01])\/(0[1-9]|1[0-2])\/[0-9]{4} {printf("Valid DOB\n");}
.* {printf("Invalid DOB\n");}
%%

int yywrap(){return 1;}

int main()
{
yyin=fopen("input34.txt","r");
yylex();
return 0;
}