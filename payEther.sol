// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;  

contract Pay {

    address payable user=payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);

    function payEther() public payable {

    }
    // corrent account balance check 
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
    // for send ether anthoer account
    function sendEtherAccount() public {
        user.transfer(1 ether);
    }
}