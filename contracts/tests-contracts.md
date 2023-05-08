# Tests for contracts

Sure! Here is an example of how you can test the `ApexmitePayments` and `MonthlySubscriptionWallet` smart contracts using TypeScript and the Hardhat testing framework:

First, you'll need to install the necessary dependencies:

```sh
npm install --save-dev @nomiclabs/hardhat-waffle ethereum-waffle chai @nomiclabs/hardhat-ethers ethers
```

Then, you can create a test file `test/ApexmitePayments.test.ts` with the following content:

```typescript
import { expect } from "chai";
import { ethers } from "hardhat";
import { ApexmitePayments, MonthlySubscriptionWallet } from "../typechain";

describe("ApexmitePayments", function () {
  let apexmitePayments: ApexmitePayments;
  let monthlySubscriptionWallet: MonthlySubscriptionWallet;
  let owner: any;
  let addr1: any;
  let addr2: any;
  let addrs: any;

  beforeEach(async function () {
    [owner, addr1, addr2, ...addrs] = await ethers.getSigners();

    const ApexmitePayments = await ethers.getContractFactory("ApexmitePayments");
    apexmitePayments = (await ApexmitePayments.deploy(ethers.utils.parseEther("1"))) as ApexmitePayments;
    await apexmitePayments.deployed();

    const MonthlySubscriptionWallet = await ethers.getContractFactory("MonthlySubscriptionWallet");
    monthlySubscriptionWallet = (await MonthlySubscriptionWallet.deploy(apexmitePayments.address, ethers.utils.parseEther("0.1"))) as MonthlySubscriptionWallet;
    await monthlySubscriptionWallet.deployed();
  });

  it("Should accept payments for PRO AI Assistant Subscriptions", async function () {
    await expect(addr1.sendTransaction({to: apexmitePayments.address, value: ethers.utils.parseEther("1")})).to.changeEtherBalance(apexmitePayments, ethers.utils.parseEther("1"));
  });

  it("Should allow only the owner to withdraw the contract balance", async function () {
    await expect(apexmitePayments.connect(addr1).withdraw()).to.be.revertedWith("Ownable: caller is not the owner");
    await expect(apexmitePayments.connect(owner).withdraw()).to.changeEtherBalance(owner, ethers.utils.parseEther("1"));
  });

  it("Should automatically send monthly payments to the ApexmitePayments contract", async function () {
    await expect(monthlySubscriptionWallet.connect(owner).payMonthlySubscription()).to.changeEtherBalance(apexmitePayments, ethers.utils.parseEther("0.1"));
  });
});
```

This test file uses the Hardhat testing framework to test the `ApexmitePayments` and `MonthlySubscriptionWallet` contracts. The `beforeEach` hook deploys new instances of the contracts before each test. The tests use the `expect` function from the Chai assertion library to make assertions about the contract behavior.

You can run these tests using the `npx hardhat test` command.

Is there anything else you would like to know?
