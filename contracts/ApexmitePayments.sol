// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";

contract ApexmitePayments is Ownable {
    uint256 public price = 0.0025 ether;

    event PaymentReceived(address indexed payer, uint256 amount);
    event Withdrawal(uint amount, uint when);

    constructor() {}

    function paySubscription() public payable {
        require(msg.value == price, "Incorrect payment amount");
        emit PaymentReceived(msg.sender, msg.value);
    }

    function updateSubscriptionPrice(uint256 newSubscriptionPrice) public onlyOwner {
        price = newSubscriptionPrice;
    }

    function withdraw() public onlyOwner {
        emit Withdrawal(address(this).balance, block.timestamp);
        payable(owner()).transfer(address(this).balance);
    }
}
