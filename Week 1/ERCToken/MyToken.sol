// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// Fixed Supply Token
contract MyToken is ERC20 {
    constructor() ERC20("MyToken", "MT"){
        _mint(msg.sender, 1000*10**18);
    }
}