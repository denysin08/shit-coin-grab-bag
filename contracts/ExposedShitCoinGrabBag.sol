pragma solidity ^0.4.24;
import "../contracts/ShitCoinGrabBag.sol";

contract ExposedShitCoinGrabBag is ShitCoinGrabBag {
  function _deleteTokenContract(uint256 index) public onlyOwner returns(bool) { 
    return deleteTokenContract(index);
  }

  function _transferAToken(address destination) public onlyOwner {
    return transferAToken(destination);
  }

  function _pickRandomTokenIndex() public view returns (uint) {
    return pickRandomTokenIndex();
  }
}