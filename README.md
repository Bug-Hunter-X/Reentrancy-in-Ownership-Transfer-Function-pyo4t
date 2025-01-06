# Reentrancy Vulnerability in Dapp Ownership Transfer Function

This repository demonstrates a common reentrancy vulnerability in smart contracts, specifically within an ownership transfer function.  The vulnerable code allows a malicious actor to exploit a race condition to retain control even after the ownership transfer is initiated.

## Vulnerable Code
The `transferOwnershipBug.sol` file contains the vulnerable code snippet. The function lacks the necessary checks and safeguards against reentrant calls.

## Solution
The `transferOwnershipSolution.sol` file provides a solution to mitigate this vulnerability using the Checks-Effects-Interactions pattern.  This pattern ensures that state changes occur only after all checks have passed, preventing reentrancy attacks.

## How to Reproduce
1. Compile the `transferOwnershipBug.sol` contract.
2. Deploy the contract.
3. Use a malicious contract (not provided in this repository for safety reasons) that simulates a reentrancy attack by calling back into the `transferOwnership` function before the state is updated.
4. Observe that the malicious contract retains control even after attempting to transfer ownership.

## Mitigation
The solution provided in `transferOwnershipSolution.sol` uses the Checks-Effects-Interactions pattern, which helps prevent reentrancy attacks.  This pattern ensures the checks are performed before any state changes occur.