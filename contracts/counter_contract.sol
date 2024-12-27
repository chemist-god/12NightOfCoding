// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

contract Counter {
    uint256 public count;

    function increment() public {
        count++; // Increment the counter
    }

    function decrement() public {
        require(count > 0, "Counter cannot go below zero.");
        count--; // Decrement the counter
    }

    function reset() public {
        count = 0; // Reset the counter
    }
}