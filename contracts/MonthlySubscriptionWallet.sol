// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";

contract MonthlySubscriptionWallet is Ownable {
    ApexmitePayments apexmitePayments;
    uint256 public monthlyPaymentAmount;

    event Withdrawal(uint amount, uint when);

    constructor(ApexmitePayments _apexmitePayments, uint256 _monthlyPaymentAmount) {
        apexmitePayments = _apexmitePayments;
        monthlyPaymentAmount = _monthlyPaymentAmount;
    }

    function payMonthlySubscription() public onlyOwner {
        apexmitePayments.paySubscription{value: monthlyPaymentAmount}();
    }

    function withdraw() public onlyOwner {
        emit Withdrawal(address(this).balance, block.timestamp);
        payable(owner()).transfer(address(this).balance);
    }
}

interface ApexmitePayments {
    function paySubscription() external payable;
}
