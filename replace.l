
%{
#include<stdio.h>
#include<string.h>

char r_w[] = "Geu";
char re[] ="Gehu";


%}


%%
[a-zA-Z]+ { if(strcmp(yytext, r_w)==0)
				fprintf(yyout, "%s", re);
				else
					fprintf(yyout, "%s", yytext);}
.		 fprintf(yyout, "%s", yytext);
%%


int yywrap()
{
	return 1;
}


int main()
{
		extern FILE *yyin, *yyout;
	
	yyin=fopen("input.txt", "r");

	yyout=fopen("output.txt", "w");
	
		yylex();
}



