// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CappedToken is ERC20Capped, Ownable {
    constructor(uint cap) ERC20("CappedToken", "CT") ERC20Capped(cap) {}

    function createToken(address reciever, uint amount) public onlyOwner {
        _mint(reciever, amount);
    }
}