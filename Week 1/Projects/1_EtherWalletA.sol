// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

//In this contract anyone can deposit, the deposit goes directly to the blockchain
contract EtherWallet {
    address payable public owner;
    uint256 private balance;

    constructor() {
        owner = payable(msg.sender);
    }

    // receive() external payable {}

    function deposit() external payable {
        balance += msg.value;
    }

    function withdraw(uint256 _amount) external {
        require(msg.sender == owner, "caller is not owner");
        payable(msg.sender).transfer(_amount);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
