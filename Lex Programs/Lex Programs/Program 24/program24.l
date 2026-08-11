/* Arshiya Noor 192471010 - Program 24: Remove Comments */

%{
#include<stdio.h>
int n=0;
FILE *out;
%}

%%
"//".* {n++;}
"/*"([^*]|\*+[^*/])*\*+"/" {n++;}
\n {fputc('\n',out);}
. {fputc(yytext[0],out);}
%%

int yywrap(){return 1;}

int main()
{
yyin=fopen("input24.c","r");
out=fopen("output24.c","w");
yylex();
printf("Comments=%d\n",n);
return 0;
}