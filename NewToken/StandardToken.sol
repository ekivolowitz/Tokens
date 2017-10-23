pragma solidity ^0.4.8;


contract StandardToken {

	uint256 public totalSupply;
	mapping (address => uint256) balances;

	event Transfer(address indexed _from, address indexed _to, uint256 _value);


	function transfer(address _to, uint256 _value) public returns (bool success) {
		if (balances[msg.sender] >= _value && _value > 0) {
			balances[msg.sender] -= _value;
			balances[_to] += _value;
			Transfer(msg.sender, _to, _value);
			return true;
		}
		return false;
	}

	function balanceOf(address _owner) public constant returns (uint256 balance) {
		return balances[_owner];
	}





}