/* Arshiya Noor 192471010 - Program 21: Count Vowels */

%{
#include<stdio.h>
int v=0;
%}

%%
[aeiouAEIOU] {v++;}
.|\n ;
%%

int yywrap(){return 1;}

int main()
{
yyin=fopen("input21.txt","r");
yylex();
printf("Vowels=%d\n",v);
return 0;
}