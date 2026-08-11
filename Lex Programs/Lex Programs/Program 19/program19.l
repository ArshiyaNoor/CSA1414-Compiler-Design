/* Arshiya Noor 192471010 - Program 19: Count Characters, Words and Lines */

%{
#include<stdio.h>
int c=0,w=0,l=0;
%}

%%
\n {c++;l++;}
[ \t]+ {c+=yyleng;}
[^ \t\n]+ {c+=yyleng;w++;}
%%

int yywrap(){return 1;}

int main()
{
yyin=fopen("input19.c","r");
yylex();
printf("Characters=%d\nWords=%d\nLines=%d\n",c,w,l);
return 0;
}