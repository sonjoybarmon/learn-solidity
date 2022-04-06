// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Lottery {
    address public manager;
    address payable[] public participants;

    constructor() {
        manager = msg.sender;
    }

    // receive can use only one time. aslo external is require in receive function.
    receive() external payable {
        // require is work link if condition. if msg.value == i ether then call next line.
        require(msg.value == 1 ether);
        participants.push(payable(msg.sender));
    }

    function getBalance() public view returns(uint) {
        require(msg.sender == manager);
        return address(this).balance;
    }

    // fandom participant select function here.
    function random() public view returns(uint) {
      return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, participants.length))); 
    }

    // winner select function
    function selectWinner() public {
        require(msg.sender == manager);
        require(participants.length >= 3);
        uint r = random();
        address payable winner;
        uint index = r % participants.length;
        winner = participants[index];
        // for transfer balance
        winner.transfer(getBalance());
        // Empty participants array
        participants = new address payable[](0);
    }
}
