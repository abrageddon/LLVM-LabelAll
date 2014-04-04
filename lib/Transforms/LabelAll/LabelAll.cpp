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
#include "llvm/Support/InstIterator.h"
#include "llvm/Support/DebugLoc.h"

#include <string>
#include <sstream>

using namespace llvm;

namespace {

struct LabelAll : public ModulePass {

static char ID;
LabelAll() : ModulePass(ID) {}

  virtual bool runOnModule(Module &M) {
    unsigned int labelNum = 0;
    //errs() << "LabelAll: \n";

    //For all Functions in Module
    for (Module::iterator F = M.begin(), EF = M.end(); F != EF; ++F){
      //errs() << "F:";
      //errs().write_escaped(F->getName()) << "\n";

      // For all Instructions in Function
      for (inst_iterator I = inst_begin(F), E = inst_end(F); I != E; ++I){
        //DebugLoc dl = I->getDebugLoc();

        // Print Instruction Info
        //errs() << "  I:" << *I << "\n";
        /*if (!dl.isUnknown()){
          errs() << "   D: ";
          dl.dump(I->getContext());
        //  continue;
        }*/

        //Add mapping label to debug information on each instruction
/*
        Value *A[] = {MDString::get(getGlobalContext(), "labelall")};
        MDNode *Node = MDNode::get(getGlobalContext(), A);
        I->setMetadata("md", Node);

//*/

///*
        LLVMContext& C = I->getContext();

        std::ostringstream convert;
        convert << "LABEL:" << basename(M.getModuleIdentifier().c_str() ) << ":" << labelNum++;

//        dl.setMapLabel(convert.str());

        MDNode* N = MDNode::get(C, MDString::get(C, convert.str() ) );
        I->setMetadata("label.all", N);
        //errs() << "   " << cast<MDString>(I->getMetadata("label.all")->getOperand(0))->getString() << "\n";
///*/
/*

        SmallVector<std::pair<unsigned, MDNode*>, 4> MDForInst;
        I->getAllMetadata(MDForInst);
//*/
/*
        for (unsigned i = 0, e = MDForInst[i].second->getNumOperands(); i!=e; ++i){
          if(MDNode *Op = dyn_cast_or_null<MDNode>(MDForInst[i].second->getOperand(i))){
          }
        }
//*/
       /*
        for(unsigned i = 0, e = MDForInst.size(); i!=e; ++i){
          //errs() << "     " << MDForInst[i].first << "\n";
          MDNode *node = MDForInst[i].second;
          errs() << "     " << *node->getString() << "\n";
        }//*/

      }
      //errs() << "\n";
    }
    return false;
  }
};//LabelAll

}//namespace



char LabelAll::ID = 0;

static RegisterPass<LabelAll> X("labelall", "Instruction Labeling Pass",
                             true /* Only looks at CFG */,
                             true /* Analysis Pass */);

