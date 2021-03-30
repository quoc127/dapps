pragma solidity ^0.5.13;

import "https://github.com/dosinhuda/dapps/blob/58ab38a62b7f394bc20b5b3908f8246bf1b6915b/Allowance.sol";

contract SimpleWallet is Allowance {
    
    event MoneySent(address indexed _beneficiary, uint _amount);
    event MoneyReceived(address indexed _from, uint _amount);
    
    
    function withdrawMoney(address payable _to, uint _amount) public ownerOrAllowed(_amount) {
       require(_amount <= address(this).balance, "There are not enough funds stored in the smart contract");
       if(!isOwner()) {
           reduceeAllowance(msg.sender, _amount);
       }
       
       emit MoneySent(_to, _amount);
        _to.transfer(_amount);
    }
    
    function renounceOwnership() public onlyOwner{
        revert("Cannot renounce ownership here!");
    }
    
    
    function () external payable {
        
        emit MoneyReceived(msg.sender, msg.value);
    }
}
