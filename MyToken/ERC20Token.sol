pragma solidity ^0.4.16;
import "./StandardToken.sol";
contract ERC20Token is StandardToken {
    function() public{
        //if ether is sent to this address, send it back.
        revert();
    }

    /* Public variables of the token */

    /*
    NOTE:
    The following variables are OPTIONAL vanities. One does not have to include them.
    They allow one to customise the token contract & in no way influences the core functionality.
    Some wallets/interfaces might not even bother to look at this information.
    */
    string public name;                   //fancy name: eg Simon Bucks
    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    string public symbol;                 //An identifier: eg SBX
    string public version = 'H1.0';       //human 0.1 standard. Just an arbitrary versioning scheme.

//make sure this function name matches the contract name above. So if you're token is called TutorialToken, make sure the //contract name above is also TutorialToken instead of ERC20Token
    function ERC20Token() public {
        balances[msg.sender] = totalSupply;      // Give the creator all initial tokens (100000 for example)
        totalSupply = totalSupply;               // Update total supply (100000 for example)
        name = "BadgerCoin";                     // Set the name for display purposes
        decimals = 0;                            // Amount of decimals for display purposes
        symbol = "UW";                           // Set the symbol for display purposes
    }
}
