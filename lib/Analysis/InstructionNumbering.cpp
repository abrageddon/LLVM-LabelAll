// SNEISIUS -- label every instruction uniquely

#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"


#include "llvm/IR/Instructions.h"
#include "llvm/IR/Metadata.h"
#include "llvm/Support/CFG.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/Debug.h"

using namespace llvm;

namespace {

struct InsNum : public ModulePass {

static char ID;
InsNum() : ModulePass(ID) {}

  virtual bool runOnModule(Module &M) {
    errs() << "InsNum: ";
    M.dump();
    //errs().write_escaped(M.getName()) << "\n";
    return false;
  }
};//InsNum

}//namespace



char InsNum::ID = 0;

static RegisterPass<InsNum> X("insnum", "Instruction Numbering Pass",
                             true /* Only looks at CFG */,
                             true /* Analysis Pass */);

