// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

contract SimpleCRUD {
    // Define a structure to represent an Item
    struct Item {
        uint256 id;      // Unique identifier for the item
        string name;     // Name of the item
    }

    // Mapping to store items by their ID
    mapping(uint256 => Item) private items;
    uint256 private nextId; // Counter for the next item ID

    // Event to notify when an item is created or updated
    event ItemUpdated(uint256 id, string name);
    // Event to notify when an item is deleted
    event ItemDeleted(uint256 id);

    // Constructor to initialize the nextId
    constructor() {
        nextId = 1; // Start IDs from 1
    }

    // Create: Add a new item
    function createItem(string memory name) public {
        items[nextId] = Item(nextId, name); // Create a new item
        emit ItemUpdated(nextId, name); // Emit an event
        nextId++; // Increment the ID for the next item
    }

    // Read: Get an item by ID
    function readItem(uint256 id) public view returns (uint256, string memory) {
        require(id < nextId, "Item does not exist."); // Check if the item exists
        Item memory item = items[id]; // Retrieve the item
        return (item.id, item.name); // Return the item's ID and name
    }

    // Update: Update an existing item
    function updateItem(uint256 id, string memory name) public {
        require(id < nextId, "Item does not exist."); // Check if the item exists
        items[id].name = name; // Update the item's name
        emit ItemUpdated(id, name); // Emit an event
    }

    // Delete: Remove an item by ID
    function deleteItem(uint256 id) public {
        require(id < nextId, "Item does not exist."); // Check if the item exists
        delete items[id]; // Delete the item
        emit ItemDeleted(id); // Emit an event
    }

    // Get total number of items
    function getTotalItems() public view returns (uint256) {
        return nextId - 1; // Return the total number of items created
    }
}