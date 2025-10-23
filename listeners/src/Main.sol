// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import "./BlockListener.sol";

contract Triggers is BaseTriggers {
    function triggers() external virtual override {
        BlockListener listener = new BlockListener();
        addTrigger(chainGlobal(Chains.Base), listener.triggerOnBlock());
        addTrigger(chainGlobal(Chains.Ethereum), listener.triggerOnBlock());
    }
}
