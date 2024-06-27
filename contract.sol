//  For this project, write a smart contract that implements the require(), assert() and revert() statements.

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ExceptionHamdling{
    
    address public owneradress = msg.sender;
    uint public age = 20;

    // This is an example of require()
    function requireFunction(uint x) public{
        require(x!=0,"Age must be greater than 0");
        age += x;
    }

    // This is a function of revert()
    function revertFunction(uint x) public{
        age += x;
        if(x<=0){

            revert("Value should be > 0");
        }
    }

    // This is a customize error for revert
    error throwError(string,address);

    // This is the function which describes use of assert
    function checkOwner() public view{
        assert(owneradress==0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    }

    function getAge() public view returns (uint){
        return age;
    }
}