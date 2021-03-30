pragma solidity ^0.4.0;

contract ExternalContract {
  function externalCall() external returns (uint) {
    return 123;
  }
  function publicCall() public returns (uint) {
    return this.externalCall();
  }
}
