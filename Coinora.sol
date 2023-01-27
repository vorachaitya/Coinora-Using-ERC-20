// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

//import ERC20 contract from openzeppelin

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract LearnWeb3Token is ERC20 {
    //we also want to call constructor present inside ERC20
    constructor(string memory _name, string memory _symbol)
        ERC20(_name, _symbol)
    {
        //get some tokens for ourselves
        _mint(msg.sender, 1000 * (10**18));
    }
}
