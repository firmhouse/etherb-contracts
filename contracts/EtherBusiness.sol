pragma solidity ^0.4.17;

contract EtherBusiness {
  /* This creates an array with all balances */
  mapping (address => uint256) fundedBy;
  address[] funders;
  address owner;

  /* Initializes contract with initial supply tokens to the creator of the contract */
  function EtherBusiness() public {
    owner = msg.sender;
  }

  function getFundingBy(address addr) public view returns(uint256) {
    return fundedBy[addr];
  }

  function getFunders() public view returns(address[]) {
    return funders;
  }

  function fund() public payable returns(bool) {
    fundedBy[msg.sender] += msg.value;
    funders.push(msg.sender);
    return true;
  }
}
