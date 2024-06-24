# SimpleBank Contract

## Overview
The SimpleBank contract allows users to deposit Ether, withdraw Ether, and check their account balance. It also includes a function to cancel the contract, though this is a dummy function for demonstration purposes.

## Features
- **Deposit:** Users can deposit Ether into their account.
- **Withdraw:** Users can withdraw Ether from their account, provided they have sufficient balance.
- **Check Balance:** Users can view their current account balance.
- **Cancel Contract:** A placeholder function (`cancelContract()`) that demonstrates how to revert a transaction with a specific message.

### Interacting with the Contract

1. **Deposit Ether:**
   - Use the `deposit()` function to add Ether to your account.
   - Provide a non-zero amount of Ether when calling `deposit()`.

2. **Withdraw Ether:**
   - Use the `withdraw(uint256 amount)` function to withdraw Ether from your account.
   - Specify the amount of Ether you wish to withdraw.
   - Ensure you have sufficient balance using `checkBalance()` before withdrawing.

3. **Check Balance:**
   - Use the `checkBalance()` function to view your current account balance.

4. **Cancel Contract:**
   - The `cancelContract()` function is a placeholder and always reverts with the message "Contract has been cancelled".

## Error Handling

- **require:** Used to validate inputs and conditions before executing functions.
- **revert:** Used to revert transactions with a specific error message.
- **assert:** Used to check for internal errors and invariants.

