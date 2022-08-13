// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;
contract vending{
 address public owner;
 mapping(address => uint) public balance;
 constructor(){
     owner=msg.sender;
     balance[address(this)]=100;
 }
 function getBalance() public view returns(uint){
     return balance[address(this)];
 }
 function restock(uint amount) public payable{
     require(msg.sender==owner,"fuck you");
   balance[address(this)]+=amount;
 }
 function purchase(uint amount) public payable{
     require(msg.value==amount*1 ether," goriber baccha tk an");
     require(balance[address(this)]>=amount,"naiga");
     balance[address(this)]-=amount;
     balance[msg.sender]+=amount;
 }
}