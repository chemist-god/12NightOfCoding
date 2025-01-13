// SPDX-License-Identifier: MIT


pragma solidity ^0.8.27;

contract Bank {
    address public Manager;
    uint public MinBalance; // Consider initializing these variables
    uint public DepositLimit;
    uint public WithdrawLimit;
    uint public TransferLimit;


    constructor() {
        Manager = msg.sender;
        // Initialize variables if needed
        MinBalance = 0; // Example initialization
        DepositLimit = 1000; // Example initialization
        WithdrawLimit = 500; // Example initialization
        TransferLimit = 300; // Example initialization
    }
}