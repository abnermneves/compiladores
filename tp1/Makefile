main:
	lex yylex.l
	g++ scanner.cpp lex.yy.c -o scanner.out

clean:
	$(RM) lex.yy.c *.out