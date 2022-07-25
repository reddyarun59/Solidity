// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Solidity supports enumerables and they are useful to
//model choice and keep track of state 

// Enums can be declared outside of a contract

contract Enum {

    enum Status {
        None,
        Pending,
        Shipped,
        Completed,
        Rejected,
        Cancelled
    } // default value is the first element listed in
    // defination of the type, in this case "None"

    //ways of defining
    Status public status;

    struct Order {
        address buyer;
        Status status;
    }

    Order[] public orders;

    //Returns uint
    // None - 0
    // Pending 1
    // Shipped 2 
    // ..........
    function get() view external returns (Status) {
        return status;
    }

    function set( Status _status ) external {
        status = _status;
    }

    function ship() external {
        status = Status.Shipped;
    }

    function reset() external {
        delete status; //set to default value - "None"
    }


}