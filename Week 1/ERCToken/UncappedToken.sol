// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract UncappedToken is ERC20, Ownable {
    constructor() ERC20("Uncapped Token", "UCT") {}

    function createToken(address reciever, uint amount) public {
        _mint(reciever, amount);
    }
}