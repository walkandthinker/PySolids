//****************************************************************
//* This file is part of the AsFem framework
//* A Simple Finite Element Method program (AsFem)
//* All rights reserved, Yang Bai @ CopyRight 2020
//* https://github.com/walkandthinker/AsFem
//* Licensed under GNU GPLv3, please see LICENSE for details
//* https://www.gnu.org/licenses/gpl-3.0.en.html
//****************************************************************

#include "Solution/Solution.h"


Solution::Solution(){
    _IsInit=false;
    _DofNameList.clear();
    _nHistPerGPoint=5;
    _HasProjNameList=false;
    _HasDofNameList=false;
}