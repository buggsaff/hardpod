import { expect } from "chai";
import { ethers } from "hardhat";

describe("Greeter", function () {
  it("Should return the new greeting once its changed", async function () {
    const Greeter = await ethers.getContractFactory("Greeter");
    const greeter = await Greeter.deploy("Hey accept the greetings");
    await greeter.deployed();

    expect(await greeter.greet()).to.equal("Hey accept the greetings");

    const setGreetingsTx = await greeter.setGreeting("heyy");

    //wait until the transaction is mined
    await setGreetingsTx.wait();
    expect(await greeter.greet()).to.equal("heyy");
  });
});