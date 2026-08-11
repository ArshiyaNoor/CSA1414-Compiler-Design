/* Arshiya Noor 192471010 - Program 32: Positive and Negative Numbers */

%{
#include<stdio.h>
int p=0,n=0;
%}

%%
-[0-9]+ {printf("Negative: %s\n",yytext);n++;}
[0-9]+ {printf("Positive: %s\n",yytext);p++;}
[ \t\n]+ ;
. ;
%%

int yywrap(){return 1;}

int main()S
{
yyin=fopen("input32.txt","r");
yylex();
printf("Positive=%d\nNegative=%d\n",p,n);
return 0;
}S