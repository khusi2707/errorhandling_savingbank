// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleBank {
    address public owner;
    mapping(address => uint256) public balances;

    event Deposit(address indexed user, uint256 amount);
    event Withdrawal(address indexed user, uint256 amount);

    constructor() {
        owner = msg.sender;
    }

    // Deposit function with require and assert
    function deposit() public payable {
        require(msg.value > 0, "Deposit amount must be greater than zero");
        uint256 oldBalance = balances[msg.sender];
        
        balances[msg.sender] += msg.value;
        
        // Ensuring the balance has increased correctly
        assert(balances[msg.sender] == oldBalance + msg.value);
        
        emit Deposit(msg.sender, msg.value);
    }

    // Withdraw function with require and assert
    function withdraw(uint256 amount) public {
        require(amount > 0, "Withdrawal amount must be greater than zero");
        require(balances[msg.sender] >= amount, "Insufficient balance");

        uint256 oldBalance = balances[msg.sender];
        
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
        
        // Ensuring the balance has decreased correctly
        assert(balances[msg.sender] == oldBalance - amount);

        emit Withdrawal(msg.sender, amount);
    }

    // Check balance function
    function checkBalance() public view returns (uint256) {
        uint256 balance = balances[msg.sender];
        require(balance >= 0, "Balance cannot be negative");

        return balance;
    }

    // Cancel contract function using revert
    function cancelContract() public pure {
        revert("Contract has been cancelled");
    }
}
