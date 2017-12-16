pragma solidity ^0.4.2;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/WorkForEther.sol";

contract TestWorkForEther {
  function testInitialBalanceWithNewWorkForEther() public {
    WorkForEther work = new WorkForEther();

    uint expected = 100;

    Assert.equal(work.getBalance(tx.origin), expected, "Owner should have 100 WorkForEther initially");
  }
}
