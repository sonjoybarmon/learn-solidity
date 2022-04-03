// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;  

contract Text {
    string[] public student=['sonjoy', 'sree', 'smrity'];

    function mem() public view {
        string[] memory s1= student;
        s1[0] = 'sonjoy2';
    }

    function sto() public {
        string[] storage s1=student;
        s1[0] = 'sree2';
    }
}