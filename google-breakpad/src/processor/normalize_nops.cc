#include "processor/normalize_nops.h"

namespace multicompiler{

uint64_t NormalizeAddress(string filename, uint64_t rip){
  uint64_t newAdd=rip;
  //const googlebreakpad::CodeModule *curMod = modules_->GetModuleForAddress(rip);
  //string fileStr( curMod->code_file().c_str() );
  //printf("DEBUG FILE: %s\n", filename.c_str());

  string NOPMapFile(filename.c_str());
  NOPMapFile += ".nmap";
  std::ifstream NOPMap(NOPMapFile.c_str());

  if(NOPMap.is_open()){
    string addressLine, mapLine;
    while(std::getline(NOPMap, addressLine)){
      //printf("DEBUG NOPADD: %s\n", addressLine.c_str());

      uint64_t fromAdd=0;
      size_t c1 = addressLine.find(":");
      string fa = addressLine.substr(0,c1);
      sscanf(fa.c_str(), "%x", &fromAdd);

      uint64_t fromSize=0;
      size_t c2 = addressLine.find(":", c1+1);
      string fs = addressLine.substr(c1+1,c2-c1-1);
      sscanf(fs.c_str(), "%x", &fromSize);

      uint64_t toAdd=0;
      string ta = addressLine.substr(c2+1,string::npos);
      sscanf(ta.c_str(), "%x", &toAdd);

      //printf("DEBUG NOPVAR: %x : %x : %x\n", fromAdd, fromSize, toAdd);

      std::getline(NOPMap, mapLine);
      if(rip > fromAdd && rip < fromAdd + fromSize ){
        //printf("DEBUG NOPVAR: %x : %x : %x\n", fromAdd, fromSize, toAdd);
        //printf("DEBUG NOPMAP: %s\n", mapLine.c_str());
        newAdd=toAdd;
        unsigned int bytes=static_cast<unsigned int>(rip - fromAdd);
        size_t position=0;
        while(bytes > 0){
          //printf("DEBUG ADJUST: A=%x : B=%x : P=%x\n", newAdd, bytes, position);
          if (mapLine.at(position)=='+'){
            if (mapLine.at(position+1)=='-' || mapLine.at(position+1)=='+'){
              newAdd += 1;
              bytes -= 1;
              position += 1;
              //printf("DEBUG DELTA: +\n");
            }else{
              size_t end = std::min(mapLine.find('-',position+1), mapLine.find('+',position+1));
              string numStr = mapLine.substr(position+1,end-position-1);
              //printf("DEBUG NumStr: %s\n", numStr.c_str());
              unsigned int num;
              sscanf(numStr.c_str(), "%x", &num);

              //printf("DEBUG MIN: %x %x\n", num, bytes);
              uint64_t delta = std::min(num,bytes);
              //if((unsigned)num>(unsigned)bytes){newAdd+=bytes;bytes=0;}else{newAdd+=delta;bytes-=delta;}
              newAdd += delta;
              bytes -= delta;
              position = end;
              //printf("DEBUG DELTA: +%x\n", delta);
            }
          }else if (mapLine.at(position)=='-'){
            if (mapLine.at(position+1)=='-' || mapLine.at(position+1)=='+'){
              bytes -= 1;
              position += 1;
              //printf("DEBUG DELTA: -\n");
            }else{
              size_t end = std::min(mapLine.find('-',position+1), mapLine.find('+',position+1));
              string numStr = mapLine.substr(position+1,end-position-1);
              //printf("DEBUG NumStr: %s\n", numStr.c_str());
              unsigned int num;
              sscanf(numStr.c_str(), "%x", &num);


              //printf("DEBUG MIN: %x %x\n", num, bytes);
              uint64_t delta = std::min(num,bytes);
              //if((unsigned)num>(unsigned)bytes){bytes=0;}else{bytes-=delta;}
              bytes -= delta;
              position = end;
              //printf("DEBUG DELTA: -%x\n", delta);
            }
          }else{
            printf("DEBUG ERROR PARSE FAIL!");
          }
          //if(position < mapLine.length()){printf("DEBUG MAP: %s\n", mapLine.substr(position).c_str());}
        }
        //printf("DEBUG ADJUST: A=%x : B=%x : P=%x\n", newAdd, bytes, position);
      }
    }
  }
  //printf("DEBUG NEW ADDR: %x\n", newAdd);
  return newAdd;
}

}//namespace multicompiler
