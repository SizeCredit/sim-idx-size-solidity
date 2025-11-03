// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {ISize} from "./ISize.sol";

/// @title ISizeFactory
/// @notice Simplified interface for the Size factory
interface ISizeFactory {
    /// @notice Get all markets
    /// @return markets The markets
    function getMarkets() external view returns (ISize[] memory);
}
