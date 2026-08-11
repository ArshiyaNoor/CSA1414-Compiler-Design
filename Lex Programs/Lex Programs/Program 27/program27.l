/* Arshiya Noor 192471010 - Program 27: abc to ABC */

%{
#include<stdio.h>
%}

%%
abc {printf("ABC");}
.|\n {printf("%s",yytext);}
%%

int yywrap(){return 1;}

int main()
{
yyin=fopen("input27.txt","r");
yylex();
return 0;
}