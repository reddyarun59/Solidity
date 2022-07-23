/* Primitive Data types are
    1 Boolean
    2 uint
    3 int
    4 address */

// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Primitives{
    
    bool public boo = true;

    /* 
    uint stands for unsigned int(non negative numbers)
    different sizes are available
        uint8 ranges from 0 to 2**8 - 1
        uint16 ranges from 0 to 2**16 - 1
        ...
        uint256 ranges from 0 to 2**256 - 1
    */  

    uint8 public u8 = 4;
    uint256 public u256 = 232;
    uint public u = 123;  // uint is an alias for uint256

    
    /*
    Negative numbers are allowed in solidity - int types (same as uint)

    int256 ranges from -2**255 to 2**255 - 1
    int128 ranges from -2**127 to 2**127 - 1
    */

    int8 public i8 = -1;
    int public i256 = 123; // same as int256

    //minimum and maximum of int 

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0x4Fbc59aAd52577A898edEF895c44b56052ACe823;

    /*
    In Solidity, data type byte represents sequence of bytes
    Two types of byte types are:

    1 Fixed sized byte arrays
    2 dynamically sized byte arrays

    the term bytes in Solidity represents a dynamic array of bytes
    it is shorthand for byte[]
    */

    bytes1 a = 0xb5; // [10110101]
    bytes1 b = 0x56; // [01010110]

    // default values
    // Unassigned variables have a default value

    bool public defaultBoo; //false
    uint public defaultUint; //0
    int public defaultInt; //0
    address public defaultAddress; // 0x0000000000000000000000000000000000
}

