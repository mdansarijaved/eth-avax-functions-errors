

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ExceptionHamdling{
    
    address public owneradress = msg.sender;
    uint public age = 20;


    function requireFunction(uint x) public{
        require(x!=0,"Age must be greater than 0");
        age += x;
    }


    function revertFunction(uint x) public{
        age += x;
        if(x<=0){

            revert("Value should be > 0");
        }
    }


    error throwError(string,address);


    function checkOwner() public view{
        assert(owneradress==0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    }

    function getAge() public view returns (uint){
        return age;
    }
}