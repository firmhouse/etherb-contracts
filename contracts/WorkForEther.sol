pragma solidity ^0.4.17;

contract WorkForEther {
  /* This creates an array with all balances */
  mapping (address => uint) balances;

  /* Initializes contract with initial supply tokens to the creator of the contract */
  function WorkForEther() public {
      balances[tx.origin] = 100;              // Give the creator all initial tokens
  }

  /* Send coins */
  function transfer(address _to, uint _value) public {
      require(balances[msg.sender] >= _value);           // Check if the sender has enough
      require(balances[_to] + _value >= balances[_to]); // Check for overflows
      balances[msg.sender] -= _value;                    // Subtract from the sender
      balances[_to] += _value;                           // Add the same to the recipient
  }

  function getBalance(address addr) public view returns(uint) {
    return balances[addr];
  }
}
