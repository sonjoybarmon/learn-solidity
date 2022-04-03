// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// contract State 
// {
//     uint public age;
// }

contract local
{
    uint age = 22;
    function getter() public view returns(uint) {
        return age;
    }

    function setter(uint newAge) public {
        age = newAge;
    }

}