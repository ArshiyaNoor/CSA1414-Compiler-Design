/* Arshiya Noor 192471010 - Program 33: URL Validation */

%{
#include<stdio.h>
%}

%%
https?:\/\/(www\.)?[a-zA-Z0-9.-]+\.[a-zA-Z]{2,} {printf("Valid URL\n");}
.* {printf("Invalid URL\n");}
%%

int yywrap(){return 1;}

int main()
{
yyin=fopen("input33.txt","r");
yylex();
return 0;
}