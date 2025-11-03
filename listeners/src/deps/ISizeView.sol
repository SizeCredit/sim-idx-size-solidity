// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {DataView} from "./DataView.sol";
import {DebtPosition, LoanStatus} from "./LoanLibrary.sol";
import {InitializeRiskConfigParams} from "./InitializeParams.sol";

interface ISizeView {
    function collateralRatio(address user) external view returns (uint256);
    function riskConfig() external view returns (InitializeRiskConfigParams memory);
    function data() external view returns (DataView memory);
    function getDebtPosition(uint256 debtPositionId) external view returns (DebtPosition memory);
    function getLoanStatus(uint256 positionId) external view returns (LoanStatus);
}
