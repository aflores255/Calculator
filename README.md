
# Calculator Smart Contract

## Overview
The **Calculator Smart Contract** is a blockchain-based application designed to perform various arithmetic and mathematical operations. Built with Solidity, it includes basic and advanced operations, and emits events to track results in some specific cases.

This project was developed and tested using Remix IDE, making it easy to deploy and interact with the smart contract directly in a web browser.

---

## Features
- **Basic Arithmetic Operations**:
  - Addition
  - Subtraction
  - Multiplication
  - Division
- **Advanced Mathematical Functions**:
  - Exponentiation
  - Square root calculation
  - Modular arithmetic
  - Maximum of two numbers
  - Average of two numbers

---

## Smart Contract Details

---

## Modifiers

- **`checkPositiveNumber`**:
    - Checks if the number is positive (greater than 0)
- **`checkPositiveNumbers`**:
    - Checks if both input numbers are positive (greater than 0)

## Events
- **`Sum(uint256 num1, uint256 num2, uint256 result)`**
- **`Substraction(uint256 num1, uint256 num2, uint256 result)`**
- **`Division(uint256 num1, uint256 num2, uint256 result)`**
- **`Exponent(uint256 num1, uint256 num2, uint256 result)`**
- **`Sqrt(uint256 num1, uint256 result)`**
- **`Module(uint256 num1, uint256 num2, uint256 result)`**
- **`Maximum(uint256 num1, uint256 num2, uint256 result)`**
- **`Average(uint256 num1, uint256 num2, uint256 result)`**

---

### Functions

#### Arithmetic Operations
- **`sum(uint256 num1_, uint256 num2_)`**:
  - Adds two numbers.
  - Emits the `Sum` event.

```solidity
function sum(uint256 num1_, uint256 num2_) public returns(uint256 result_) {
    result_ = num1_ + num2_;
    emit Sum(num1_, num2_, result_);
}
```

- **`substraction(uint256 num1_, uint256 num2_)`**:
  - Subtracts `num2_` from `num1_`.
  - Emits the `Substraction` event.

```solidity
function substraction(uint256 num1_, uint256 num2_) public returns(uint256 result_) {
    result_ = substraction_logic(num1_, num2_);
    emit Substraction(num1_, num2_, result_);
}
```

- **`multiplier(uint256 num1_)`**:
  - Multiplies the current `result` by `num1_`.

```solidity
function multiplier(uint256 num1_) public {
    result = result * num1_;
}
```

- **`multiplier2(uint256 num1_, uint256 num2_)`**:
  - Multiplies the `num1_` by `num2_`.

```solidity
  function multiplier2(uint256 num1_, uint256 num2_) public checkPositiveNumbers(num1_,num2_) returns (uint256 result_){

        result_ = num1_ * num2_;
        emit Multiplication(num1_, num2_, result_);

    }
```

- **`division(uint256 num1_, uint256 num2_)`**:
  - Divides `num1_` by `num2_`.
  - Emits the `Division` event.

```solidity
function division(uint256 num1_, uint256 num2_) public checkPositiveNumbers(num1_, num2_) returns(uint256 result_) {
    result_ = num1_ / num2_;
    emit Division(num1_, num2_, result_);
}
```

#### Advanced Functions
- **`exponent(uint256 num1_, uint256 num2_)`**:
  - Computes `num1_` raised to the power of `num2_`.
  - Emits the `Exponent` event.

```solidity
function exponent(uint256 num1_, uint256 num2_) public checkPositiveNumbers(num1_, num2_) returns(uint256 result_) {
    result_ = 1; 
    for (uint256 i = 0; i < num2_; i++) {
        result_ *= num1_; 
    }
    emit Exponent(num1_, num2_, result_);
}
```

- **`sqrt(uint256 num1_)`**:
  - Calculates the square root of `num1_`.
  - Emits the `Sqrt` event.

```solidity
function sqrt(uint256 num1_) public checkPositiveNumber(num1_) returns(uint256 result_) {
    result_ = sqrt_logic(num1_);
    emit Sqrt(num1_, result_);
}
```

- **`module(uint256 num1_, uint256 num2_)`**:
  - Calculates `num1_` modulo `num2_`.
  - Emits the `Module` event.

```solidity
function module(uint256 num1_, uint256 num2_) public checkPositiveNumbers(num1_, num2_) returns(uint256 result_) {
    result_ = num1_ % num2_;
    emit Module(num1_, num2_, result_);
}
```

- **`maximum(uint256 num1_, uint256 num2_)`**:
  - Finds the maximum of `num1_` and `num2_`.
  - Emits the `Maximum` event.

```solidity
function maximum(uint256 num1_, uint256 num2_) public checkPositiveNumbers(num1_, num2_) returns(uint256 result_) {
    result_ = maximum_logic(num1_, num2_);
    emit Maximum(num1_, num2_, result_);
}
```

- **`average(uint256 num1_, uint256 num2_)`**:
  - Calculates the average of `num1_` and `num2_`.
  - Emits the `Average` event.

```solidity
function average(uint256 num1_, uint256 num2_) public checkPositiveNumbers(num1_, num2_) returns(uint256 result_) {
    result_ = average_logic(num1_, num2_);
    emit Average(num1_, num2_, result_);
}
```



## How to Use

### Prerequisites
- **Remix IDE**: Accessible via [Remix](https://remix.ethereum.org).

### Deployment Steps
1. Open Remix IDE and create a new file (e.g., `Calculator.sol`).
2. Paste the contract code into the file.
3. Compile the contract using Solidity version `0.8.24`.
4. Deploy the contract in Remix VM or another compatible Ethereum network.

### Interaction
- Use the deployed contract interface to call functions such as `sum`, `exponent`, or `sqrt` introducing numbers as arguments.
- Observe emitted events for operation results.

---

## License
This project is licensed under the LGPL-3.0-only.