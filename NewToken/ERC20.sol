pragma solidity ^0.4.8;

import "./StandardToken.sol";
contract ERC20Token is StandardToken {
	function() public {
		// if ether is sent to this address, send it back.
		revert();
	}


	// Public variables of the ERC20Token
	string public name;
	uint8 public decimals;
	string public symbol;
	string public version = 'B1.0';

	function ERC20Token() public {
		balances[msg.sender] = 1000;
		totalSupply = 1000;
		name = "BadgerBucks";
		decimals = 0;
		symbol = "UWM";
	}

}
