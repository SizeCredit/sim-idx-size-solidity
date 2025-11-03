// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

struct InitializeRiskConfigParams {
    uint256 crOpening;
    uint256 crLiquidation;
    uint256 minimumCreditBorrowToken;
    uint256 minTenor;
    uint256 maxTenor;
}
