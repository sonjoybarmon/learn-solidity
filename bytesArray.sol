// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Array {
    bytes6 public arr1;
    bytes4 public arr2;

    // for dynamic array
    bytes public arr3 = 'sonjoysree';


    function setter() public {
        arr1 = 'sonjoy';
        arr2 = 'sree';
    }


    // dynamic push function here
    function pushElement() public {
        arr3.push('s');
    }

    // get element
    function getElement(uint i) public view returns(bytes1) {
        return arr3[i];
    }

    // check length

    function getLength() public view returns(uint) {
        return arr3.length;
    }
}