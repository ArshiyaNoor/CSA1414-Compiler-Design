/* Arshiya Noor 192471010 - Program 36: Mathematical Operations */

%{
#include<stdio.h>
int a=20,b=10;
%}

%%
\+ {printf("Addition=%d\n",a+b);}
\- {printf("Subtraction=%d\n",a-b);}
\* {printf("Multiplication=%d\n",a*b);}
\/ {printf("Division=%d\n",a/b);}
[ \t\n]+ ;
%%

int yywrap(){return 1;}

int main()
{
yyin=fopen("input36.txt","r");
yylex();
return 0;
}