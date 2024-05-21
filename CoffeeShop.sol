// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

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

        icedCoffeeCount = _count;
    }
}
