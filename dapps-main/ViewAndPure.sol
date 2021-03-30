pragma solidity ^0.5.3;
contract ViewAndPure {
  
  uint public x =1;
  
  //uint public i = 2;
  
  function addToX(uint y) public view returns (uint) {
    return x + y;
  }
  
  // Không thay đổi được biến trạng thái "x" vì keyword "view" 
  /*
  function updateX() public view {
    x += 1;
  }
  */
  
 
  function add(uint i, uint j) public pure returns (uint) {
    return i + j;
  }
  
  // Không thể tác động biến trạng thái "i" vì keyword "pure" 
  /*function addToI( uint j) public pure returns (uint) {
    return i + j;
  }
  */
  
}
