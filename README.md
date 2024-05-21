# Functions and Errors (Require, Assert, and Revert)

The "Functions and Errors" Solidity program explains the fundamental syntax and features of the Solidity programming language. This program is meant to be a jumping off point for people who are unfamiliar with Solidity and want to get a sense of how it functions.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a single function that returns the string "Smart Contract". This program serves as a simple and straightforward introduction to Solidity programming, and can be used as a stepping stone for more complex projects in the future.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., CoffeeShop.sol). Copy and paste the following code into the file:


```javascript 
contract IcedCoffee {
    uint256 public icedCoffeeCount;

    function setIcedCoffeeCount(uint256 _count) external {
        // Using require() to validate input
        require(_count != 0, "Iced coffee count cannot be zero");

        // Using assert() to validate internal state
        assert(icedCoffeeCount + _count > icedCoffeeCount);

        // Using revert() to revert the transaction if count is too large
        if (_count > 100) {
            revert("Iced coffee count is too large");
        }
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile CoffeeShop.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Vote" contract from the dropdown menu, and then click on the "Deploy" button..

## Authors

Adam Mari Amplayo
8213998@ntc.edu.ph

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
