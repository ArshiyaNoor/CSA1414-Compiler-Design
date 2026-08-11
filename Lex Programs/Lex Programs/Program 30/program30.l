/* Arshiya Noor 192471010 - Program 30: Count Consonants */

%{
#include<stdio.h>
int c=0;
%}

%%
[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z] {c++;}
.|\n ;
%%

int yywrap(){return 1;}

int main()
{
yyin=fopen("input30.txt","r");
yylex();
printf("Consonants=%d\n",c);
return 0;
}