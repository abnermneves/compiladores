#include <iostream>
#include <string>
#include "yylex.h"

extern int yylex();
extern int yylineno;
extern char* yytext;

std::string nametokens[] = { "", "array", "break", "do", "else", "end", "for", "function", "if", "in", "let", "nil", "of", "then", "to", "type", "var", "while", "lpar", "rpar", "lbra", "rbra", "lcurl", "rcurl", "plus", "minus", "mult", "div", "eq", "ne", "lt", "gt", "lte", "gte", "and", "or", "atrib", "colon", "semic", "comma", "dot", "id", "int", "string" };

int main() {
    int ntoken, valuetoken;

    // próximo token válido
    ntoken = yylex();

    // quando acabar, o scanner retorna 0
    while (ntoken) {
        std::cout << nametokens[ntoken] << " -> " << yytext << std::endl;
        ntoken = yylex();
    }

    return 0;
}