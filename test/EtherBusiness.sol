pragma solidity ^0.4.2;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/EtherBusiness.sol";

contract TestEtherBusiness {
  function TestEtherBusiness() public {
    EtherBusiness etherb = new EtherBusiness();

    Assert.equal(etherb.getFundingBy(tx.origin), 0, "Owner should exist but have not funded");
  }
}
