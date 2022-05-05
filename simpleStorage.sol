// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {

    //this will get initialised to 0 
    //to create an empty variable
    uint256 favouriteNumber;

    struct People {
        uint256 favouriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameTofavouriteNumber;

    People person = People({favouriteNumber: 54, name: "David"});

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }
     
    function retrieve() public view returns(uint256) {
        return favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        people.push(People({
            favouriteNumber: _favouriteNumber, 
            name: _name
        }));
        nameTofavouriteNumber[_name] = _favouriteNumber;
    }
}
