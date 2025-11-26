%{
    #include "atom.hpp"
%}

%defines %union { char c; std::string *s; Object *o; }

%token<c> CHAR
%token<c> DOT COMMA LC RC LQ RQ
%token<s> ATOM
%token<s> MODULE

%type<o> module

%%
syntax: | syntax ex

ex  : CHAR      { std::clog <<       "?" <<  $1 << '\t'; }
    | module    { std::clog <<        "" << *$1 << '\t'; }
    | ATOM      { std::clog <<   "atom:" << *$1 << '\t'; }
    | DOT       { std::clog <<        "" <<  $1 << '\t'; }
    | COMMA     { std::clog <<        "" <<  $1 << '\t'; }
    | LC        { std::clog <<        "" <<  $1 << '\t'; }
    | RC        { std::clog <<        "" <<  $1 << '\t'; }
    | LQ        { std::clog <<        "" <<  $1 << '\t'; }
    | RQ        { std::clog <<        "" <<  $1 << '\t'; }

module : LC MODULE COMMA ATOM RC { $$ = new Module($4); }

%%
void yyerror(std::string msg) {
    std::cerr << "\n\n"
              << yyfile << ':' << yylineno << ' ' << msg << " [" << yytext
              << "]\n\n";
    exit(-1);
}
