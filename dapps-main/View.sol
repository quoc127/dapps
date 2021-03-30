pragma solidity ^0.5.3;
contract ViewAndPure {
  
  uint public x = 1;
  
  function addToX(uint y) public view returns (uint) {
    return x + y;
  }
  
  //không thay đổi được biến trạng thái "x" vì keyword "view"
  
  function updateX() public view {
    x += 1;
  }
   
}
