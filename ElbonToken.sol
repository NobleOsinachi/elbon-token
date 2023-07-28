// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ElbonToken is ERC20 {
    /**
     * @dev Constructor to initialize the ERC20 token.
     * @param _name The name of the token.
     * @param _symbol The symbol (ticker) of the token.
     */
    constructor(string memory _name, string memory _symbol)
        ERC20(_name, _symbol)
    {
        uint256 initialSupply = 1000 * 10**decimals();
        _mint(msg.sender, initialSupply);
    }
}
