#include "atom.hpp"

int main(int argc, char *argv[]) {  //
    arg(0, argv[0]);
    for (int i = 1; i < argc; i++) {  //
        arg(i, argv[i]);
        yyfile = argv[i];
        assert(yyin = fopen(yyfile, "r"));
        yyparse();
        fclose(yyin);
        yyfile = nullptr;
    }
    return 0;
}

void arg(int argc, char *argv) {  //
    std::clog << "arg[" << argc << "] = <" << argv << ">\n";
}

Object::Object() : ref(0) {}
Object::~Object() { assert(!ref); }

Object::Object(std::string V) : Object() { value = V; }
Object::Object(std::string *V) : Object() { value = *V; }

#include <cxxabi.h>

std::string Object::tag() const {
    std::string ret =
        abi::__cxa_demangle(typeid(*this).name(), NULL, NULL, nullptr);
    for (char &c : ret) c = tolower(c);
    return ret;
}

std::string Object::val() const { return value; }

std::ostream &operator<<(std::ostream &os, Object &o) {
    os << o.head();
    return os;
}

std::string Object::head() const { return tag() + ':' + val() + '\n'; }

Module::Module(std::string *V) : Object(V) {}
