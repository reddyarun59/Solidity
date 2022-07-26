// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//Whenever you use a dynamic data type, you will need to specify
//the data location - storage, memory or callData

/*
storage - variable is a state variable (store on blockchain)
memory - variable is in memory and it exists while function is being called
calldata - special data location that contains function arguments, is used to save gas
 */

contract DataLocation {

    struct MyStruct {
        uint foo;
        string text;
    }

    mapping(address => MyStruct) public myStructs;

    function examples(uint[] calldata y, string calldata s) external returns (uint[] memory){

        myStructs[msg.sender] = MyStruct({foo: 123, text: "bar"});

        MyStruct storage myStruct = myStructs[msg.sender];
        myStruct.text = "foo";


        MyStruct memory readOnly = myStructs[msg.sender];
        readOnly.foo = 345;

        _internal(y);

        uint[] memory memArr = new uint[](3);
        memArr[0] = 234;
        return memArr;

    }

    function _internal(uint[] calldata y) private {
        uint x = y[0];
    }
}