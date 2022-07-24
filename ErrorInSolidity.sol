// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/*
An error will undo all the changes made to the state during the transaction

We can throw Error by calling the

1 require - it is used to validate inputs and conditions before execution
2 revert - it is similar to require, it is useful when the condition check is complex
3 assert - it is used to check for code that should never be false. Failing assertion means there is a bug.

we use custom error to save gas
*/

contract Error {

    function testRequire(uint _i) public pure {
        require(_i > 10, "Input must be greater than 10");
    }

    function testRevert(uint _i) public pure {
        
        if(_i <= 10){
            revert("Input must be greater than 10");
        }
    }

    uint public num = 0;

    function testAssert() public view {

        //Assert should only be used to test for internal errors and to check for in varients

        assert(num==0);

        //here we assert the num is always equal to 0
        //since it is impossible to update the value of num
    }


    // Custom Error

    error InsufficientBalance(uint balance, uint withdrawAmount);

    function testCustomError(uint _withdrawAmount) public view{
        uint bal = address(this).balance;
        if(bal < _withdrawAmount){
            revert InsufficientBalance({balance:bal, withdrawAmount:_withdrawAmount});
        }
    }
}