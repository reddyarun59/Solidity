// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/*
There are several ways to return outputs from a function

1 Named outputs
2 assigned outputs
3 Destructuring Assignments

Public function cannot accept certain data types as inputs or outputs
*/

contract Function {

    //Function Can return multiple values

    function returnMany() public pure returns( uint, bool, uint){
        return (1, true, 2);
    }

    //Return Values can be named
    function named() public pure returns(uint x, bool b , uint y){
        return (1, true, 2);
    }

    //Return values can be assigned to their name
    // In this case the return statement can be ommitted

    function assigned() public pure returns(uint x, bool b, uint y){
        x=1;
        b=true;
        y=2;
    }

    // Use destructuring assignment when calling another function
    // that returns multiple values

    function destructuringAssignment() public pure returns( uint, bool, uint, uint, uint){
        (uint i, bool b, uint j) = returnMany();

        //values can be left out
        (uint x, , uint y) = (4, 5, 6);

        return (i, b, j, x, y);

    }
}