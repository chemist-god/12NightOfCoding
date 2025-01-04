// SPDX-License-Identifier: MIT


pragma solidity ^0.8.0;

// 1️⃣ Create a loop to calcualte all expenses for the user

contract ExpenseTracker {
    struct Expense {
        address user;
        string description;
        uint amount;
    }


// HINT: Create a total expenses variable with uint type

    Expense[] public expenses;

    constructor() {
        expenses.push(Expense(msg.sender, "Groceries", 50));
        expenses.push(Expense(msg.sender, "Transportation", 30));
        expenses.push(Expense(msg.sender, "Dining out", 25));
    }

//  Loop over expenses array with for loop

    function addExpense(string memory _description, uint _amount) public {
        expenses.push(Expense(msg.sender, _description, _amount));
    }

    function getTotalExpenses(address _user) public view returns (uint) {
        // Your code here
        uint256 totalExpenses;

        for(uint i = 0; i < expenses.length; i++){
            if(expenses[i].user == _user){
                totalExpenses += expenses[i].amount;
            }
        }

        return totalExpenses;

    }
}