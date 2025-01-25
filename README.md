# 📱 Calculator Smart Contract

## 📝 **Overview**
The **Calculator Smart Contract** is a blockchain-based application designed to perform various arithmetic and mathematical operations. Built with **Solidity**, this contract includes basic operations like addition, subtraction, multiplication, and division, as well as advanced functions like exponentiation, square roots, and more. Events are emitted to track the results.

This contract was developed and tested using **Remix IDE**, which makes it easy to deploy and interact with the smart contract directly in your browser.

---

## 🚀 **Features**
| **Feature**                       | **Description**                                                                                         |
|-----------------------------------|---------------------------------------------------------------------------------------------------------|
| ➕ **Arithmetic Operations**       | Addition, Subtraction, Multiplication, and Division                                                    |
| 🔢 **Advanced Mathematical Functions** | Exponentiation, Square Root, Modulo, Maximum of two numbers, and Average of two numbers                |

---

## 📜 **Smart Contract Details**

---

### ⚙️ **Modifiers**
| **Modifier**                       | **Description**                                                                                           |
|-----------------------------------|-----------------------------------------------------------------------------------------------------------|
| **`checkPositiveNumber`**         | Checks if the number is positive (greater than 0).                                                         |
| **`checkPositiveNumbers`**        | Checks if both numbers are positive (greater than 0).                                                      |

---

### 📡 **Events**
| **Event**                         | **Description**                                              |
|-----------------------------------|--------------------------------------------------------------|
| **`Sum`**                         | Emitted when performing an addition of two numbers.          |
| **`Substraction`**                | Emitted when performing a subtraction of two numbers.        |
| **`Division`**                    | Emitted when performing a division of two numbers.           |
| **`Exponent`**                    | Emitted when performing an exponentiation operation.         |
| **`Sqrt`**                        | Emitted when performing a square root calculation.           |
| **`Module`**                      | Emitted when performing a modulo operation between two numbers.|
| **`Maximum`**                     | Emitted when calculating the maximum between two numbers.    |
| **`Average`**                     | Emitted when calculating the average of two numbers.         |

---

### 💻 **Contract Functions**

#### **Arithmetic Operations**
| **Function**                      | **Description**                                                                                           |
|-----------------------------------|---------------------------------------------------------------------------------------------------------|
| **`sum(uint256 num1_, uint256 num2_)`**       | Adds two numbers and emits the `Sum` event.                                                                 |
| **`substraction(uint256 num1_, uint256 num2_)`** | Subtracts `num2_` from `num1_` and emits the `Substraction` event.                                         |
| **`multiplier(uint256 num1_)`**    | Multiplies the current result by `num1_`.                                                                   |
| **`multiplier2(uint256 num1_, uint256 num2_)`** | Multiplies `num1_` by `num2_` and emits the `Multiplication` event.                                         |
| **`division(uint256 num1_, uint256 num2_)`**   | Divides `num1_` by `num2_` and emits the `Division` event.                                                 |

#### **Advanced Functions**
| **Function**                      | **Description**                                                                                           |
|-----------------------------------|---------------------------------------------------------------------------------------------------------|
| **`exponent(uint256 num1_, uint256 num2_)`**    | Calculates `num1_` raised to the power of `num2_` and emits the `Exponent` event.                         |
| **`sqrt(uint256 num1_)`**         | Calculates the square root of `num1_` and emits the `Sqrt` event.                                         |
| **`module(uint256 num1_, uint256 num2_)`**       | Calculates `num1_` modulo `num2_` and emits the `Module` event.                                           |
| **`maximum(uint256 num1_, uint256 num2_)`**      | Finds the maximum between `num1_` and `num2_` and emits the `Maximum` event.                             |
| **`average(uint256 num1_, uint256 num2_)`**      | Calculates the average of `num1_` and `num2_` and emits the `Average` event.                              |

---

## 🛠️ **How to Use**

### 🔧 **Prerequisites**
- **Remix IDE**: You can access Remix at [Remix Ethereum](https://remix.ethereum.org).

### 🚀 **Deployment Steps**
1. Open Remix IDE and create a new file (e.g., `Calculator.sol`).
2. Paste the contract code into the file.
3. Compile the contract using Solidity version `0.8.24`.
4. Deploy the contract to Remix VM or any compatible Ethereum network.

### 🖱️ **Interacting with the Contract**
- Use the deployed contract interface to call functions like `sum`, `exponent`, or `sqrt` by providing numbers as arguments.
- Watch for emitted events to see the results of the operations.

---

## 📄 **License**
This project is licensed under the **LGPL-3.0-only**.

--- 
