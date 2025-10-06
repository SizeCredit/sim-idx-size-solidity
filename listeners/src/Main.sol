// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import "./SizeListener.sol";

contract Triggers is BaseTriggers {
    function triggers() external virtual override {
        SizeListener listener = new SizeListener();
        Trigger[] memory allTriggers = listener.allTriggers();
        address[5] memory baseAddresses = [
            0xC2a429681CAd7C1ce36442fbf7A4a68B11eFF940,
            0xB21Bbe052F5cE9ae681c59725f0A313765Fd016c,
            0x0728522FBe416B9dBB0c12E9e84870AA8E17Ad11,
            0x2a7168C467f97A4C56958b0DDE1144E450a60a36,
            0xe69669F93E77f2245f4a35D804BC3c91F43E0E15
        ];
        address[10] memory ethereumAddresses = [
            0x65767ab18A2854895D5287Ac689A18B54A17DFb1,
            0x1b367622b8c516aDC4f903Bb6148446Bb1F23AE3,
            0x99a6Cf8224c69A79a504Eaf6BA05eDa26a705B79,
            0xc02f6A0d01E63Aa182c40458ca4339b6Adbe16A0,
            0x0E56BC306683Af8C343c621Ca55cdF5F71dCF55A,
            0xeD666D00a602867C0D990F94A31eD3389e4Bc580,
            0xC81BC7Fa05764a4C868B049fDbaf2410E44Dd213,
            0x0474B7354c3BD7b7Cf57c4f780cbd5cFE93239b3,
            0x6A1496EbC6943e006E61502CdbFA4238d83D1719,
            0xeD5F3300C21B37f16267981D80CD01Ec883a7822
        ];

        for (uint256 i = 0; i < baseAddresses.length; i++) {
            addTrigger(chainContract(Chains.Base, baseAddresses[i]), allTriggers[i]);
        }
        for (uint256 i = 0; i < ethereumAddresses.length; i++) {
            addTrigger(chainContract(Chains.Ethereum, ethereumAddresses[i]), allTriggers[i]);
        }
    }
}
