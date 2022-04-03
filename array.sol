// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Array 
{
    uint[] public myArray;

    function pushItem(uint item) public
    {
        myArray.push(item);
    }

    function lengthCheck() public view returns(uint) {
        return myArray.length;
    }

    function popItem() public {
        myArray.pop();
    }
   
}



// pragma solidity >=0.7.0 <0.9.0;

// contract Array 
// {
//     uint [4] public myArray = [10,20,30,40];

//     function setter(uint index, uint value) public{
//         myArray[index] = value;
//     } 

//     function length() public view returns(uint) {
//         return myArray.length;
//     }
// }