// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "forge-std/Test.sol";
import "contracts/TestContract.sol";

contract ContractTest is Test {
    TestContract counter;

    function setUp() public {
        counter = new TestContract(1);
    }

    function test_initial_value() public {
        assertEq(counter.x(), 1);
    }

    function test_increment(uint256 amount) public {
        vm.assume(amount > 1);
        counter.increase(amount);
        assertEq(counter.x(), amount);
    }
}
