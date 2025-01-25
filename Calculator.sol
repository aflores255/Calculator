// 1. License
// SPDX-License-Identifier: LGPL-3.0-only
//2. Solidity version
pragma solidity 0.8.24;

//3. Contract

contract Calculator {

    // Variables definition
    uint256 public result = 1; //[0-2^256-1]

    // Modifiers
    modifier checkPositiveNumber(uint256 num1_){
        if(num1_ <= 0) revert();
        _;
    }

    modifier checkPositiveNumbers(uint256 num1_,uint256 num2_){

        if(num1_ <=0 || num2_ <=0) revert();
        _;

    }

    // Events
    event Sum(uint256 num1, uint256 num2, uint256 result);
    event Substraction(uint256 num1, uint256 num2, uint256 result);
    event Division(uint256 num1, uint256 num2, uint256 result);
    event Exponent(uint256 num1, uint256 num2, uint256 result);
    event Sqrt(uint256 num1, uint256 result);
    event Module(uint256 num1, uint256 num2, uint256 result);
    event Maximum(uint256 num1, uint256 num2, uint256 result);
    event Average(uint256 num1, uint256 num2, uint256 result);

    // External Functions
    function sum(uint256 num1_, uint256 num2_) public returns(uint256 result_){

        result_ = num1_ + num2_;
        emit Sum(num1_,num2_,result);
    }

    function substraction(uint256 num1_, uint256 num2_) public  returns(uint256 result_){

        result_ = substraction_logic(num1_,num2_);
        emit Substraction(num1_,num2_,result_);

    }

    function substraction2(int256 num1_, int256 num2_) public pure returns(int256 result_){

        result_ = substraction_logic2(num1_,num2_);
    
    }

    function multiplier(uint256 num1_) public{

        result = result * num1_;


    }

    function multiplier2(uint256 num1_) public checkPositiveNumber(num1_){

        result = result * num1_;

    }

    function division(uint256 num1_, uint256 num2_) public checkPositiveNumbers(num1_,num2_) returns(uint256 result_){

        result_ = num1_ / num2_;
        emit Division(num1_, num2_, result);

    }

    function exponent(uint256 num1_, uint256 num2_) public checkPositiveNumbers(num1_,num2_) returns(uint256 result_){

        result_ = 1; 
        for (uint256 i = 0; i < num2_; i++) {
        result_ *= num1_; 
        }
    emit Exponent(num1_, num2_, result);

    }

    function sqrt(uint256 num1_) public checkPositiveNumber(num1_) returns(uint256 result_){

        result_ = sqrt_logic(num1_);
        emit Sqrt(num1_, result);

    }
       
    function module(uint256 num1_, uint256 num2_) public checkPositiveNumbers(num1_,num2_) returns(uint256 result_){

        result_ = num1_ % num2_;
        emit Module(num1_, num2_, result);

    }

    function maximum(uint256 num1_, uint256 num2_) public checkPositiveNumbers(num1_,num2_) returns(uint256 result_){

        result_ = maximum_logic(num1_,num2_);
        emit Maximum(num1_, num2_, result);

    }

    function average(uint256 num1_, uint256 num2_) public checkPositiveNumbers(num1_,num2_) returns(uint256 result_){

        result_ = average_logic(num1_,num2_);

    }

    // Internal Functions
    function substraction_logic(uint256 num1_, uint256 num2_) internal pure returns(uint256 result_){

        result_ = num1_ - num2_;


    }

    function substraction_logic2(int256 num1_, int256 num2_) internal pure returns(int256 result_){

        result_ = num1_ - num2_;


    }

    function sqrt_logic(uint num1_) internal pure returns (uint result_) {
        
        if (num1_ > 3) {
            result_ = num1_;
            uint aux = num1_ / 2 + 1;
            while (aux < result_) {
                result_ = aux;
                aux = (num1_ / aux + aux) / 2;
            }
        } else if (num1_ != 0) {
            result_ = 1;
        }
    }


    function maximum_logic(uint256 num1_, uint256 num2_) internal pure returns(uint256 result_){

        if (num1_ >= num2_)
            result_ = num1_;
        else
            result_ = num2_;


    }

    function average_logic(uint256 num1_, uint256 num2_) internal returns(uint256 result_){

        result_ = (num1_ + num2_)/2;
        emit Average(num1_, num2_, result);


    }

}