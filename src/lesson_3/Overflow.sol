// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

// 0.8 checks overflow

contract Overflow {

  function overflow() public view returns(uint8) {
    uint8 big = 255 + uint8(100);
    return big;
  }
}