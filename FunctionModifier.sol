// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Funtion modifiers - reuse code before and / or after the function
// Basic, Inputs, Sandwich

contract FunctionModifier{
    bool public paused;
    uint public count;

    function setPause(bool _paused) external {
        paused = _paused;
    }

    //this

    function inc() external {
        require(!paused, "paused");
        count += 1;
    }

    function dec() external {
        require(!paused, "paused");
        count -= 1;
    }

    //equals to

    modifier whenNotPaused(){
        require(!paused, "paused");
        _;
    }

    function inc() external whenNotPaused {
        count += 1;
    }

    function dec() external whenNotPaused {
        count -= 1;
    }

    
    //this

    function incBy(uint _x) external whenNotPaused {
        require(_x < 100, "x >= 100");
        count += _x;
    }

    //equals to

    modifier cap(uint _x) {
        require(_x < 100, "x >= 100");
        _;
    }

    function incBy(uint _x) external whenNotPaused cap(uint _x) {
        count += _x;
    }


    //sandwich

    modifier sandwich(){
        //code here
        count +=10;
        _;
        //more code here
        count *=2;
    }

    function foo() external sandwich {
        count += 1;
    }
}