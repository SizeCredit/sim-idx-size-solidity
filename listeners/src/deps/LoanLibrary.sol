// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

uint256 constant DEBT_POSITION_ID_START = 0;

struct DebtPosition {
    address borrower;
    uint256 futureValue;
    uint256 dueDate;
    uint256 liquidityIndexAtRepayment;
}

enum LoanStatus {
    ACTIVE,
    OVERDUE,
    REPAID
}
