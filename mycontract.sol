// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;
contract mycontract{
        string public name;
        string public greetings="Hi ";
        constructor (string memory Name){
            name= Name;

        }
        function setName(string memory n)public{
            name=n;
        }
        function getgreeting() public view returns (string memory){
            return string(abi.encodePacked(greetings,name));
        }
    
    }
  

