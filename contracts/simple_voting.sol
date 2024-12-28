// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

contract SimpleVoting {
    // Mapping of voters to their votes
    mapping(address => bool) public voters;
    mapping(uint256 => uint256) public votes;

    function vote(uint256 candidate) public {
        require(!voters[msg.sender], "You have already voted");
        voters[msg.sender] = true;
        votes[candidate] += 1;
    }
}