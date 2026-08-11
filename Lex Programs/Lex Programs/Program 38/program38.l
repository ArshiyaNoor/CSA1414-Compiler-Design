/* Arshiya Noor 192471010 - Program 38: Longest Word */

%{
#include<stdio.h>
#include<string.h>
int max=0;
char word[100];
%}

%%
[a-zA-Z]+ {
if(yyleng>max)
{
max=yyleng;
strcpy(word,yytext);
}
}
.|\n ;
%%

int yywrap(){return 1;}

int main()
{
yyin=fopen("input38.txt","r");
yylex();
printf("Longest Word=%s\nLength=%d\n",word,max);
return 0;
}