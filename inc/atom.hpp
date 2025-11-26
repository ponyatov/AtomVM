#pragma once
/// @file
/// @brief AtoMVM: Tiny Erlang VM

#include <cstdio>
#include <cstdlib>
#include <cassert>
#include <iostream>

/// @defgroup main main
/// @{

extern int main(int argc, char *argv[]);
extern void arg(int argc, char *argv);

/// @}

/// @defgroup syntax syntax
/// @{
extern int yylex();
extern char *yytext;
extern char* yyfile;
extern FILE* yyin;
extern int yyparse();
extern void yyerror(std::string msg);
extern int yylineno;

#include "atom.yacc.hpp"
/// @}
