// SPDX-License-Identifier: MIT

pragma solidity 0.8.6;

contract SebastianToken {
    string public name = "Sebastian Token";
    string public symbol = "SBT";
    uint256 public totalSupply = 1000000;
    address public owner;

    mapping(address => uint256) balances;

    constructor() {
        balances[msg.sender] = totalSupply;
        owner = msg.sender;
    }

    function transfer(address to, uint256 amount) public {
        require(balances[msg.sender] >= amount, "Not enough tokens");

        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address account) public view returns (uint256) {
        return balances[account];
    }
}

