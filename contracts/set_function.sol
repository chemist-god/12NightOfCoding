// SPDX-License-Identifier: GPL-3.0 
pragma solidity >= 0.4.16 < 0.9.0;
/// @title A contract for demonstrate how to write a smart contract 
/// @author Chemist
/// @notice For now, this contract just show to set the value of state variable and get this value from the smart contract
contract Storage
{

	// Declaring state variables
	uint public setData;

	// Defining public function 
	// that sets the value of 
	// the state variable
	function set(uint x) public
	{
		setData = x;
	}
	
	// Defining function to
	// print the value of
	// state variable
	function get(
	) public view returns (uint) {
		return setData;
	}
}
