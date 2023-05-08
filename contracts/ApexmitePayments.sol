// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";

contract ApexmitePayments is Ownable {
    uint256 public price;

    constructor(uint256 _price) {
        price = _price;
    }

    function paySubscription() public payable {
        require(msg.value == price, "Incorrect payment amount");
    }

    function withdraw() public onlyOwner {
        payable(owner()).transfer(address(this).balance);
    }
}

// pragma solidity 0.8.9;

// import "@openzeppelin/contracts/access/Ownable.sol";

// contract ApexmitePayments is Ownable {
//     // State variable price

//     constructor() {}

//     /** 
//     * Payment function for PRO AI Assistant Subscriptions, should accept payments in one lump sum, or
//     * monthly payments with autopay ability.  
//     */ 

//     // Only owner withdraw function
// }

