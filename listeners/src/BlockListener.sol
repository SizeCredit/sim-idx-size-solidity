// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";

import {ISizeFactory} from "../lib/size-solidity/src/factory/interfaces/ISizeFactory.sol";
import {ISize} from "../lib/size-solidity/src/market/interfaces/ISize.sol";
import {ISizeView} from "../lib/size-solidity/src/market/interfaces/ISizeView.sol";
import {DataView} from "../lib/size-solidity/src/market/SizeViewData.sol";
import {
    DEBT_POSITION_ID_START, DebtPosition, LoanStatus
} from "../lib/size-solidity/src/market/libraries/LoanLibrary.sol";

contract BlockListener is Raw$OnBlock {
    event DebtPositionIsLiquidatable(
        uint64 chainId,
        uint256 timestamp,
        address market,
        uint256 debtPositionId,
        uint256 collateralRatio,
        uint8 loanStatus
    );

    address public constant BASE_SIZE_FACTORY = 0x330Dc31dB45672c1F565cf3EC91F9a01f8f3DF0b;
    address public constant ETHEREUM_SIZE_FACTORY = 0x3A9C05c3Da48E6E26f39928653258D7D4Eb594C1;

    uint256 constant EVENT_INTERVAL = 1 minutes;

    function onBlock(RawBlockContext memory /*ctx*/ ) external override {
        uint256 blockTimeSeconds = block.chainid == 1 ? 12 : 2;
        uint256 mod = EVENT_INTERVAL / blockTimeSeconds;

        if (blockNumber() % mod != 0) {
            return;
        }

        ISize[] memory markets = block.chainid == 1
            ? ISizeFactory(ETHEREUM_SIZE_FACTORY).getMarkets()
            : block.chainid == 8453 ? ISizeFactory(BASE_SIZE_FACTORY).getMarkets() : new ISize[](0);
        for (uint256 i = 0; i < markets.length; i++) {
            ISizeView size = ISizeView(address(markets[i]));
            DataView memory data = size.data();
            uint256 nextDebtPositionId = data.nextDebtPositionId;
            for (uint256 j = DEBT_POSITION_ID_START; j < nextDebtPositionId; j++) {
                DebtPosition memory debtPosition = size.getDebtPosition(j);
                address borrower = debtPosition.borrower;
                uint256 collateralRatio = size.collateralRatio(borrower);
                LoanStatus loanStatus = size.getLoanStatus(j);
                if (collateralRatio < size.riskConfig().crLiquidation || loanStatus == LoanStatus.OVERDUE) {
                    emit DebtPositionIsLiquidatable(
                        uint64(block.chainid),
                        block.timestamp,
                        address(markets[i]),
                        j,
                        collateralRatio,
                        uint8(loanStatus)
                    );
                }
            }
        }
    }
}
