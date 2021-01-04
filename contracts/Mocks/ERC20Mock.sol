pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

//solhint-disable-next-line
contract ERC20Mock is StandardToken {
  constructor(address account, uint256 balance) public {
    balances[account] = balance;
  }
}