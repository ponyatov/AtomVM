%{
    #include "atom.hpp"
    char* yyfile = nullptr;
%}

%option noyywrap yylineno

%%
"%"[^\n]*       {}  // line comment
[ \t\r\n]+      {}  // drop spaces

"."             { yylval.c = yytext[0]; return DOT  ; }
","             { yylval.c = yytext[0]; return COMMA; }

"{"             { yylval.c = yytext[0]; return LC; }
"}"             { yylval.c = yytext[0]; return RC; }
"["             { yylval.c = yytext[0]; return LQ; }
"]"             { yylval.c = yytext[0]; return RQ; }

"module"        { yylval.s = new std::string(yytext); return MODULE; }

[a-zA-Z_0-9]+   { yylval.s = new std::string(yytext); return ATOM; }

.               { yyerror(yytext); }
