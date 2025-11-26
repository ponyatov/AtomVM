#pragma once
/// @file
/// @brief AtoMVM: Tiny Erlang VM

#include <cassert>
#include <cstdio>
#include <cstdlib>
#include <iostream>

/// @defgroup main main
/// @{
extern int main(int argc, char *argv[]);
extern void arg(int argc, char *argv);
/// @}

/// @defgroup graph graph
/// @brief object graph
/// @{
class Object {
    uint ref;           ///< gc: reference counter
    std::string value;  ///< universal scalar for most items

   public:
    Object();               ///<
    Object(std::string);    ///<
    Object(std::string *);  ///<
    virtual ~Object();      ///<

    /// @name dump/stringify
    /// @{
    virtual std::string tag() const;
    virtual std::string val() const;
    std::string head() const;
    friend std::ostream &operator<<(std::ostream &os, Object &o);
    /// @}
};

class Module : public Object {
   public:
    Module(std::string *);
};
/// @}

/// @defgroup syntax syntax
/// @{
extern int yylex();
extern char *yytext;
extern char *yyfile;
extern FILE *yyin;
extern int yyparse();
extern void yyerror(std::string msg);
extern int yylineno;

#include "atom.yacc.hpp"
/// @}
