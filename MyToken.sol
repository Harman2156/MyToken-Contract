/ SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract MyToken {

    // public variables here
    string public tokenname = "Chainlink";
    string public Abbr = "LINK";
    uint public TotalSupply = 0;
    // mapping variable here
    mapping(address => uint )public Balance;
    // mint function
    function mint(address _et , uint _value)public{
        TotalSupply += _value;
        Balance[_et ] += _value;
    }
    // burn function
    function burn(address _et , uint _value) public{
        if(Balance[_et] > _value){
            TotalSupply -= _value;
            Balance[_et] -= _value;
        }
    }
}

