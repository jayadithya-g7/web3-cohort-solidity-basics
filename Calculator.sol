// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract calculator{   //let's create a simple calcualtor
    /*there are uint 8, etc, but whenu just use uint simply, its default uint 256, 
    these no.s are byte sizes..these variables can hold 2^256 variables,tat's what it means*/

    uint256 public a; //hit a public , then everyone can see 'a', llly there's constant, there's immutable etc,etc, variables
    uint256 public b;
//note we do have oops in solidity as well, there's possibility of inheritance and polymorphism, class=contract and interfaces are similar to classic opps concept, more equivalent to js, u can use addresses and mapping (special types which we can use, public andprivate, constant , immutable similar to access modifiers in java

//by putting public keyword, we also get public getter method of all the funs, add, sub , so and so

//either directly assign variables like a=10, or use constructor , where u can set any values, takes user input
//constructor works the most in erc20, 720contracts and ownership, all these things, naming of erc20 tokens, all are done in constructor itself
    constructor(uint256 _a, uint256 _b){
        unchecked{
            a=_a;
            b=_b;
        }

    }


    function add() public view returns(uint256){
        
        return a+b;

    }

    function sub() public view returns(uint256){ //we've inf gas, bcoz of overflow conecpt with arithmetic operns, use "unchecked" variable to parse the overflow and it shows gas, unchecked is where overflow operns are neglected
        unchecked{ //greatly reduces the concept of gas, handling space and time complexity also (this is one of the gas optimization techniques
        return a-b;
        }

    }

    function mul() public view returns(uint256){ //we won't have gas for every fn and all, specially for viewer fns, these infinite gases are coming while deploying
        
        return a*b;

    }

    function div() public view returns(uint256){
        
        return a/b;

    }

    function mod() public view returns(uint256){
        
        return a%b;

    }


        
}

//uint starts from zero, so negative answers on subtraction will also decline up
so just change to int everywhere
