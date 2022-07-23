// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Function {

    function add(uint x, uint y) external pure returns (uint) {
        return x+y;
    }

    function sub(uint x, uint y) external pure returns (uint) {
        return x-y;
    }
}

// external means when we deploy this contract we can able to call this function

//pure means read only, it does not write anything to the blockchain