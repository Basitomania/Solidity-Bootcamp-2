// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// In this contract anyone can deposit, the deposit get save with the depositor
// address and the depositor can withdraw what he deposit
pragma solidity >=0.7.0 <0.9.0;

contract EtherWallet {
    address payable public owner;
    uint256 private balance;
    mapping(address => uint256) depositor;

    constructor() {
        owner = payable(msg.sender);
    }

    // receive() external payable {}

    function deposit() external payable {
        depositor[msg.sender] += msg.value;
    }

    function withdraw(uint256 _amount) external {
        uint256 depositorBalance = depositor[msg.sender];
        require(
            depositorBalance > _amount,
            "Insufficient funds in user account"
        );
        payable(msg.sender).transfer(_amount);
    }

    function getBalance() external view returns (uint256) {
        return depositor[msg.sender];
    }
}
