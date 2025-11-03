// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

struct DataView {
    uint256 nextDebtPositionId;
    uint256 nextCreditPositionId;
    address underlyingCollateralToken;
    address underlyingBorrowToken;
    address collateralToken;
    address borrowTokenVault;
    address debtToken;
    address variablePool;
}
