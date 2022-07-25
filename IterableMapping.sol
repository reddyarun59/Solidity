// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// We cannot iterate through a mapping. This is way to create a iterable mapping.

contract IterableMapping {
    mapping(address => uint) balances;
    mapping(address => bool) inserted;
    address[] public keys;

    function set(address _key, uint _val) external {
        balances[_key] = _val;

        if(!inserted[_key]){
            inserted[_key] = true;
            keys.push(_key);
        }
    }

    function getSize() external view returns (uint) {
        return keys.length;
    }

    function first() external view returns (uint) {
        return balances[keys[0]];
    }

    function last() external view returns (uint) {
        return balances[keys[keys.length - 1]];
    }

    //ith value inserted into balances
    function get(uint _i) external view returns (uint) {
        return balances[keys[_i]];
    }


}