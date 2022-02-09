// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {
  struct Person {
    uint256 favoriteNumber;
    string name;
  }

  uint256 public favoriteNumber;
  Person[] public people;
  mapping(string => uint256) public nameToFavoriteNumber;

  function store(uint256 _favoriteNumber) public {
    favoriteNumber = _favoriteNumber;
  }

  // View functions just read state and can do math and return stuff.
  function retrieve() public view returns(uint256) {
    return favoriteNumber;
  }

  // Pure functions just do math and return stuff. Don't read state
  function addTwo(uint256 _input) public pure returns(uint256) {
    return _input + 2;
  }

  function addPerson(uint256 _number, string memory _name) public {
     people.push(Person(_number, _name));
     nameToFavoriteNumber[_name] = _number;
  }
}

