pragma solidity ^0.4.24;

import "./CustomPausable.sol";


///@title Transfer State Contract
///@notice Enables the admins to maintain the transfer state.
///Transfer state when disabled disallows everyone but admins to transfer tokens.
contract TransferState is CustomPausable {
  bool public released = false;

  event TokenReleased(bool _state);

  ///@notice Checks if the supplied address is able to perform transfers.
  ///@param _from The address to check against if the transfer is allowed.
  modifier canTransfer(address _from) {
    if(paused || !released) {
      if(!isAdmin(_from)) {
        revert("Operation not allowed. The transfer state is restricted.");
      }
    }

    _;
  }

  ///@notice This function enables token transfers for everyone.
  ///Can only be enabled after the end of the ICO.
  function enableTransfers() external onlyAdmin whenNotPaused returns(bool) {
    require(!released, "Invalid operation. The transfer state is no more restricted.");

    released = true;

    emit TokenReleased(released);
    return true;
  }

  ///@notice This function disables token transfers for everyone.
  function disableTransfers() external onlyAdmin whenNotPaused returns(bool) {
    require(released, "Invalid operation. The transfer state is already restricted.");

    released = false;

    emit TokenReleased(released);
    return true;
  }
}