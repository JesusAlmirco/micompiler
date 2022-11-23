#ifndef COMPILER_DECLARATION_H
#define COMPILER_DECLARATION_H


#include "AST.h"

class Declaration: AST {
public:
    std::string describe() override;
};


#endif //COMPILER_DECLARATION_H