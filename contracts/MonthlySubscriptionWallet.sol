// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";

contract MonthlySubscriptionWallet is Ownable {
    ApexmitePayments apexmitePayments;
    uint256 public monthlyPaymentAmount;

    constructor(ApexmitePayments _apexmitePayments, uint256 _monthlyPaymentAmount) {
        apexmitePayments = _apexmitePayments;
        monthlyPaymentAmount = _monthlyPaymentAmount;
    }

    function payMonthlySubscription() public onlyOwner {
        apexmitePayments.paySubscription{value: monthlyPaymentAmount}();
    }
}

interface ApexmitePayments {
    function paySubscription() external payable;
}