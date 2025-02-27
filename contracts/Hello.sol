// SPDX-License-Identifier: MIT

pragma solidity ^0.8.27;

contract HelloWorld {
    string public greeting = "Hello, Blockchain!";

    function setGreeting(string memory _greeting) public {
        greeting = _greeting;
    }

    function getGreeting() public view returns (string memory) {
        return greeting;
    }
    
}