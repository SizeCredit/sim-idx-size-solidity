// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import "./BlockListener.sol";

contract Triggers is BaseTriggers {
    uint256 public constant BASE_START_BLOCK = 22576928;
    uint256 public constant ETHEREUM_START_BLOCK = 21574092;


    function triggers() external virtual override {
        BlockListener listener = new BlockListener();
        addTrigger(chainGlobal(Chains.Base.withStartBlock(BASE_START_BLOCK)), listener.triggerOnBlock());
        addTrigger(chainGlobal(Chains.Ethereum.withStartBlock(ETHEREUM_START_BLOCK)), listener.triggerOnBlock());
    }
}
