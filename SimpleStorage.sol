// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage {
    string public text;

    //calldata is used because it saves gas
    function set(string calldata _text) external {
        text = _text;
    }

    function get() external view returns(string memory){
        return text;
    }
}