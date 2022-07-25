// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Remove array element by copying last element into the place to remove
// this is the gas efficient way to remove an element from an array

contract ArrayRemoveFromEnd {

    uint[] public arr;

    // Deleting an element creates a gap in the array.
    // This method will move the last element into the place to delete and
    // keep the array compact.

    function remove(uint index) public {
        // Move the last element into the place to delete

        arr[index] = arr[arr.length - 1];

        //Remove the last element
        arr.pop();
    }

    function test() external {
        arr = [1, 2, 3, 4];

        remove(1);
        //[1, 4, 3]
        assert(arr.length == 3);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr[2] == 3);

        remove(2);

        assert(arr.length == 2);
        assert(arr[0] == 1);
        assert(arr[1] == 4);

    }
}