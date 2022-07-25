// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Arrays can be fixed sized or dynamic

//returning array from a function is not recommended as it uses more gas or all of the gas

contract Array {
    //initialzation
    uint[] public nums = [1, 2, 3];
    uint[3] public numsFixed = [4, 5, 6];

    function example() external {
        nums.push(4); //[1, 2, 3, 4]
        uint x = nums[1]; //get , x=2
        nums[2] = 69; //update , [1, 2, 69, 4]
        delete nums[1]; //[1, 0, 69, 4], element set to default value
        nums.pop(); //[1, 0, 777]
        uint len = nums.length; // len=3

        //create an array in memory(should be fixed array)
        uint[] memory a = new uint[](3);
        a[1]=123;
    }

    //returning array from a function is not recommended as it uses more gas or all of the gas

    function returnArray() external view returns (uint[] memory){
        return nums;
    }
    
}