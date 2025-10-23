// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";

import {ISizeView} from "../lib/size-solidity/src/market/interfaces/ISizeView.sol";
import {DataView} from "../lib/size-solidity/src/market/SizeViewData.sol";
import {DEBT_POSITION_ID_START, DebtPosition, LoanStatus} from "../lib/size-solidity/src/market/libraries/LoanLibrary.sol";

contract BlockListener is Raw$OnBlock {
    event DebtPositionIsLiquidatable(
        uint64 chainId,
        uint256 timestamp,
        address market,
        uint256 debtPositionId,
        uint256 collateralRatio,
        uint8 loanStatus
    );

    function onBlock(RawBlockContext memory /*ctx*/ ) external override {
        address[] memory markets =
            block.chainid == 1 ? _getEthereumMarkets() : block.chainid == 8453 ? _getBaseMarkets() : new address[](0);
        for (uint256 i = 0; i < markets.length; i++) {
            ISizeView size = ISizeView(markets[i]);
            DataView memory data = size.data();
            uint256 nextDebtPositionId = data.nextDebtPositionId;
            for (uint256 j = DEBT_POSITION_ID_START; j < nextDebtPositionId; j++) {
                DebtPosition memory debtPosition = size.getDebtPosition(j);
                address borrower = debtPosition.borrower;
                uint256 collateralRatio = size.collateralRatio(borrower);
                LoanStatus loanStatus = size.getLoanStatus(j);
                if (collateralRatio < size.riskConfig().crLiquidation || loanStatus == LoanStatus.OVERDUE) {
                    emit DebtPositionIsLiquidatable(
                        uint64(block.chainid), block.timestamp, markets[i], j, collateralRatio, uint8(loanStatus)
                    );
                }
            }
        }
    }

    function _getBaseMarkets() internal view returns (address[] memory ans) {
        ans = new address[](5);
        ans[0] = 0xC2a429681CAd7C1ce36442fbf7A4a68B11eFF940;
        ans[1] = 0xB21Bbe052F5cE9ae681c59725f0A313765Fd016c;
        ans[2] = 0x0728522FBe416B9dBB0c12E9e84870AA8E17Ad11;
        ans[3] = 0x2a7168C467f97A4C56958b0DDE1144E450a60a36;
        ans[4] = 0xe69669F93E77f2245f4a35D804BC3c91F43E0E15;
    }

    function _getEthereumMarkets() internal view returns (address[] memory ans) {
        ans = new address[](10);
        ans[0] = 0x65767ab18A2854895D5287Ac689A18B54A17DFb1;
        ans[1] = 0x1b367622b8c516aDC4f903Bb6148446Bb1F23AE3;
        ans[2] = 0x99a6Cf8224c69A79a504Eaf6BA05eDa26a705B79;
        ans[3] = 0xc02f6A0d01E63Aa182c40458ca4339b6Adbe16A0;
        ans[4] = 0x0E56BC306683Af8C343c621Ca55cdF5F71dCF55A;
        ans[5] = 0xeD666D00a602867C0D990F94A31eD3389e4Bc580;
        ans[6] = 0xC81BC7Fa05764a4C868B049fDbaf2410E44Dd213;
        ans[7] = 0x0474B7354c3BD7b7Cf57c4f780cbd5cFE93239b3;
        ans[8] = 0x6A1496EbC6943e006E61502CdbFA4238d83D1719;
        ans[9] = 0xeD5F3300C21B37f16267981D80CD01Ec883a7822;
    }
}
