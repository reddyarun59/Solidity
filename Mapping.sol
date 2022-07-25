// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/*
Maps are created with syntax mapping(keyType => valueType)

the keyType can be built in value type, byte, string, or any contract
valueType can be any type including another mapping or an array

mappings are not itterable
 */

contract Mapping {

    //Simple mapping
    mapping(address => uint) public balances;

    //nested mapping
    mapping(address => mapping(address => bool)) public isFriends;

    //mapping always returns a value
    //if the value was never set, it will return the default value

    function example() external {
        balances[msg.sender] = 123; //setting the value
        uint bal = balances[msg.sender]; // getting the value
        uint bal2 = balances[address(1)]; //0 set to default value

        balances[msg.sender] += 456; //123 + 456 = 579   updating the value

        delete balances[msg.sender]; //0 delete the value

        //example of using nested mapping
        isFriends[msg.sender][address(this)] = true;

    }


    //another

    mapping(address => mapping(uint => bool)) public nested;

    function get(address _addr1, uint _i) public view returns(bool) {

        //we can get values from nested mapping even when it is not initalized
        return nested[_addr1][_i];
    }

    function set(address _addr1, uint _i, bool _boo) public {
        nested[_addr1][_i] = _boo;
    }

    function remove(address _addr, uint _i) public {
        delete nested[_addr][_i];
    }
}
