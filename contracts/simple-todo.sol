// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

contract SimpleTodo {
    struct Task {
        string description;
        bool completed;
    }

    Task[] public tasks