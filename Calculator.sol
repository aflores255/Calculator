// 1. License
// SPDX-License-Identifier: LGPL-3.0-only
// Solidity version
pragma solidity 0.8.24;

// Contract

contract Calculator {

    // Variables definition
    uint256 public result = 1; //[0-2^256-1]

    // Modifiers
    modifier checkNumber(uint num1_){
        if(num1_ != 1) revert();
        _;
    }

    // Events
    event Sum(uint256 num1, uint256 num2, uint256 result);
    event Substraction(uint256 num1, uint256 num2, uint256 result);
   

    // External Functions
    function sum(uint256 num1_, uint256 num2_) public returns(uint256 result_){

        result_ = num1_ + num2_;
        emit Sum(num1_,num2_,result);
    }

    function substraction(uint256 num1_, uint256 num2_) public returns(uint256 result_){

        result_ = substraction_logic(num1_,num2_);
        emit Substraction(num1_,num2_,result_);


    }

    function substraction2(int256 num1_, int256 num2_) public pure returns(int256 result_){

    result_ = substraction_logic2(num1_,num2_);
    


    }

    function multiplier(uint256 num1_) public{

        result = result * num1_;


    }

    function multiplier2(uint256 num1_) public checkNumber(num1_){

        result = result * num1_;

    }

    // Internal Functions
    function substraction_logic(uint256 num1_, uint256 num2_) internal pure returns(uint256 result_){

        result_ = num1_ - num2_;


    }

    function substraction_logic2(int256 num1_, int256 num2_) internal pure returns(int256 result_){

        result_ = num1_ - num2_;


    }


}