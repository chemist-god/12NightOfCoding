// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

contract EventLogger {
    event Log(string message);

    function logMessage(string memory message) public {
        emit Log(message);
    }
}