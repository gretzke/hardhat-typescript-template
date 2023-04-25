// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.19;

import "@openzeppelin/contracts/access/Ownable.sol";

contract TestContract is Ownable {
    uint256 public x;

    error OnlyIncrease(uint256 currentNum, uint256 newNum);

    constructor(uint256 _x) {
        x = _x;
    }

    function increase(uint256 _x) public onlyOwner {
        if (_x <= x) revert OnlyIncrease(x, _x);
        x = _x;
    }
}
