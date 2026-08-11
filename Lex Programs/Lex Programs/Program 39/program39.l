/* Arshiya Noor 192471010 - Program 39: Replace Word */

%{
#include<stdio.h>
FILE *out;
%}

%%
Compiler {fprintf(out,"LEX");}
.|\n {fprintf(out,"%s",yytext);}
%%

int yywrap(){return 1;}

int main()
{
yyin=fopen("input39.txt","r");
out=fopen("output39.txt","w");
yylex();
fclose(yyin);
fclose(out);
printf("Replacement completed.\n");
return 0;
}