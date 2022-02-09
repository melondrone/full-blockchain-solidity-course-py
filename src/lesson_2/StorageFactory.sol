// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "../lesson_1/SimpleStorage.sol";

contract StorageFactory is SimpleStorage {
  SimpleStorage[] public simpleStorageDeployments;

  function createSimpleStorageContract() public {
    SimpleStorage simpleStorage = new SimpleStorage();
    simpleStorageDeployments.push(simpleStorage);
  }

  function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
    SimpleStorage(address(simpleStorageDeployments[_simpleStorageIndex])).store(_simpleStorageNumber);
  }

  function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
    return SimpleStorage(address(simpleStorageDeployments[_simpleStorageIndex])).retrieve();
  }
}
