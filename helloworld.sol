// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

//view, pure, state changing fn(without keyword)-costs you gas, the other two doesn't cost you gas
//public- access to everyone
//when to access state variables (stored in storage inside blockchain environment look storage contract eg:uint no.)
//state changing fn refrs to a transaction

contract Helloworld{
    function printHelloworld(string memory name) public pure returns(string memory){
        return name;
    }
}
