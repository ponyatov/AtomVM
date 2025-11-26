%{
    #include "atom.hpp"
%}

%defines %union { char c; std::string *s; }

%token<c> CHAR
%token<c> DOT COMMA LC RC LQ RQ
%token<s> ATOM
%%
syntax: | syntax ex

ex  : CHAR  { std::clog <<     "?" <<  $1 << '\t'; }
    | ATOM  { std::clog << "atom:" << *$1 << '\t'; }
    | DOT   { std::clog <<      "" <<  $1 << '\t'; }
    | COMMA { std::clog <<      "" <<  $1 << '\t'; }
    | LC    { std::clog <<      "" <<  $1 << '\t'; }
    | RC    { std::clog <<      "" <<  $1 << '\t'; }
    | LQ    { std::clog <<      "" <<  $1 << '\t'; }
    | RQ    { std::clog <<      "" <<  $1 << '\t'; }

%%
void yyerror(std::string msg) {
    std::cerr << "\n\n"
              << yyfile << ':' << yylineno << ' ' << msg << " [" << yytext
              << "]\n\n";
    exit(-1);
}
