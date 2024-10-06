// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// NaikCoin Token Contract
contract NaikCoin is ERC20 {

    // Constructor to initialize token details and mint the initial supply to the deployer
    constructor() ERC20("NaikCoin", "NAIK") {
        uint256 initialSupply = 1000000 * 10 ** decimals();  // 1 million tokens with 18 decimals
        _mint(msg.sender, initialSupply); // Mint initial supply to the deployer's address
    }

    // Function to mint new tokens (anyone can mint new tokens)
    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }
}
