// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";

contract ApexmitePayments is Ownable {
    uint256 public price;

    event Withdrawal(uint amount, uint when);

    constructor(uint256 _price) {
        price = _price;
    }

    function paySubscription() public payable {
        require(msg.value == price, "Incorrect payment amount");
    }

    function withdraw() public onlyOwner {
        emit Withdrawal(address(this).balance, block.timestamp);
        payable(owner()).transfer(address(this).balance);
    }
}
