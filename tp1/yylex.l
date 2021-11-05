%{
    #include "yylex.h"
%}

%%

array                  { return ARRAY; }
break                  { return BREAK; }
do                     { return DO; }
else                   { return ELSE; }
end                    { return END; }
for                    { return FOR; }
function               { return FUNCTION; }
if                     { return IF; }
in                     { return IN; }
let                    { return LET; }
nil                    { return NIL; }
of                     { return OF; }
then                   { return THEN; }
to                     { return TO; }
type                   { return TYPE; }
var                    { return VAR; }
while                  { return WHILE; }
"("                    { return LPAR; }
")"                    { return RPAR; }
"["                    { return LBRA; }
"]"                    { return RBRA; }
"{"                    { return LCURL; }
"}"                    { return RCURL; }
"+"                    { return PLUS; }
"-"                    { return MINUS; }
"*"                    { return MULT; }
"/"                    { return DIV; }
"="                    { return EQ; }
"<>"                   { return NE; }
"<"                    { return LT; }
">"                    { return GT; }
"<="                   { return LTE; }
">="                   { return GTE; }
"&"                    { return AND; }
"|"                    { return OR; }
":="                   { return ATRIB; }
":"                    { return COLON; }
";"                    { return SEMIC; }
","                    { return COMMA; }
"."                    { return DOT; }


[a-zA-Z][a-zA-Z0-9]*        { return ID; }
[0-9]+                      { return INT; }
\"(?:\\.|[^"\n\r\\])*\"     { return STRING; }

\/\*(?:\*+[^\/*]|[^*])*\**\*\/      { /* ignora comentário */ }
[ \s\t\n\r]                         { /* ignora espaço e quebra de linha */ }

.                                   { printf("caractere inválido\n"); }

%%

int yywrap(void) {
    return 1;
}