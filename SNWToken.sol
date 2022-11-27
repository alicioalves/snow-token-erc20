// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SNWToken is ERC20, Ownable {
    constructor() ERC20("Snow Coin", "SNW") {}

    function issueToken(address receiver, uint256 amount) public onlyOwner {
        _mint(receiver, amount);
    }
}