import { ethers } from "hardhat";
import { expect } from "chai";
import {Apexmite} from "../typechain-types";

describe("Apexmite", () => {
  let apexmite: Apexmite;
  let owner: any;
  let addr1: any;

  beforeEach(async () => {
    [owner, addr1] = await ethers.getSigners();
    const Apexmite = await ethers.getContractFactory("Apexmite");
    apexmite = await Apexmite.deploy();
    await apexmite.deployed();
  });

  it("should mint new tokens annually at the specified inflation rate", async () => {
    const initialSupply = await apexmite.totalSupply();
    const inflationRate = await apexmite.INFLATION_RATE();

    // Fast-forward time by 1 year
    await ethers.provider.send("evm_increaseTime", [365 * 24 * 60 * 60]);
    await ethers.provider.send("evm_mine", []);

    // Call the mint function
    await apexmite.connect(owner).mint();

    // Check that the total supply has increased by the expected amount
    const newSupply = await apexmite.totalSupply();
    const expectedSupply = initialSupply.add(initialSupply.mul(inflationRate).div(100));
    expect(newSupply).to.equal(expectedSupply);
  });
});
