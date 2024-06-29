// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract anujyadav {

    // Public variables
    string public token_name = "Anuj_Yadav";
    string public abbrev = "AY";
    uint public totalSupply;

    // Mapping to store balances
    mapping(address => uint) public balances;

    // Mint function
    function mint(address _to, uint _value) public {
        totalSupply += _value;
        balances[_to] += _value;
    }

    // Burn function
    function burn(address _from, uint _value) public {
        require(balances[_from] >= _value, "Insufficient balance to burn");
        totalSupply -= _value;
        balances[_from] -= _value;
    }
}
      
