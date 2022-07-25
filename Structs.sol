// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// You can define your own type by creating a struct.
//they are useful for grouping together related data.

//Structs can be declared outside of a contract and imported in another contract.

contract Structs {
    struct Car {
        string model;
        uint year;
        address owner;
    }

    Car public car;

    //array of structs
    Car[] public cars;

    mapping(address => Car[]) public carsByOwner;

    function examples() external {

        //Initialization
        Car memory toyota = Car("Toyota", 1990, msg.sender);

        //another way- (order is not important)
        Car memory lambo = Car({model:"Lamborghini", owner:msg.sender, year:1980});

        //when defined struct will have default value.

        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2010;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);


        //another way
        cars.push(Car("Ferrari",2020, msg.sender));

        //getting data
        Car memory _car = cars[0];
        _car.model;
        _car.year;
        _car.owner;

        //update any value
        Car storage _carr = cars[0]; // we have to use storage when we want to update something
        _carr.year = 1999;

        delete _carr.owner; //set to default values

        delete cars[1]; //set all value at array 1 to default values
    }
}