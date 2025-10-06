// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function Size$Abi() pure returns (Abi memory) {
    return Abi("Size");
}
struct Size$DefaultAdminRoleFunctionOutputs {
    bytes32 outArg0;
}

struct Size$UpgradeInterfaceVersionFunctionOutputs {
    string outArg0;
}

struct Size$YieldCurve {
    uint256[] tenors;
    int256[] aprs;
    uint256[] marketRateMultipliers;
}

struct Size$BuyCreditLimitParams {
    uint256 maxDueDate;
    Size$YieldCurve curveRelativeTime;
}

struct Size$BuyCreditLimitFunctionInputs {
    Size$BuyCreditLimitParams params;
}

struct Size$BuyCreditLimitOnBehalfOfParams {
    Size$BuyCreditLimitParams params;
    address onBehalfOf;
}

struct Size$BuyCreditLimitOnBehalfOfFunctionInputs {
    Size$BuyCreditLimitOnBehalfOfParams externalParams;
}

struct Size$BuyCreditMarketParams {
    address borrower;
    uint256 creditPositionId;
    uint256 amount;
    uint256 tenor;
    uint256 deadline;
    uint256 minAPR;
    bool exactAmountIn;
    uint256 collectionId;
    address rateProvider;
}

struct Size$BuyCreditMarketFunctionInputs {
    Size$BuyCreditMarketParams params;
}

struct Size$BuyCreditMarketOnBehalfOfParams {
    Size$BuyCreditMarketParams params;
    address onBehalfOf;
    address recipient;
}

struct Size$BuyCreditMarketOnBehalfOfFunctionInputs {
    Size$BuyCreditMarketOnBehalfOfParams externalParams;
}

struct Size$ClaimParams {
    uint256 creditPositionId;
}

struct Size$ClaimFunctionInputs {
    Size$ClaimParams params;
}

struct Size$CollateralRatioFunctionInputs {
    address user;
}

struct Size$CollateralRatioFunctionOutputs {
    uint256 outArg0;
}

struct Size$CompensateParams {
    uint256 creditPositionWithDebtToRepayId;
    uint256 creditPositionToCompensateId;
    uint256 amount;
}

struct Size$CompensateFunctionInputs {
    Size$CompensateParams params;
}

struct Size$CompensateOnBehalfOfParams {
    Size$CompensateParams params;
    address onBehalfOf;
}

struct Size$CompensateOnBehalfOfFunctionInputs {
    Size$CompensateOnBehalfOfParams externalParams;
}

struct Size$DataView {
    uint256 nextDebtPositionId;
    uint256 nextCreditPositionId;
    address underlyingCollateralToken;
    address underlyingBorrowToken;
    address collateralToken;
    address borrowTokenVault;
    address debtToken;
    address variablePool;
}

struct Size$DataFunctionOutputs {
    Size$DataView outArg0;
}

struct Size$DebtTokenAmountToCollateralTokenAmountFunctionInputs {
    uint256 amount;
}

struct Size$DebtTokenAmountToCollateralTokenAmountFunctionOutputs {
    uint256 outArg0;
}

struct Size$DepositParams {
    address token;
    uint256 amount;
    address to;
}

struct Size$DepositFunctionInputs {
    Size$DepositParams params;
}

struct Size$DepositOnBehalfOfParams {
    Size$DepositParams params;
    address onBehalfOf;
}

struct Size$DepositOnBehalfOfFunctionInputs {
    Size$DepositOnBehalfOfParams params;
}

struct Size$InitializeFeeConfigParams {
    uint256 swapFeeAPR;
    uint256 fragmentationFee;
    uint256 liquidationRewardPercent;
    uint256 overdueCollateralProtocolPercent;
    uint256 collateralProtocolPercent;
    address feeRecipient;
}

struct Size$FeeConfigFunctionOutputs {
    Size$InitializeFeeConfigParams outArg0;
}

struct Size$GetBorrowOfferAprFunctionInputs {
    address user;
    uint256 collectionId;
    address rateProvider;
    uint256 tenor;
}

struct Size$GetBorrowOfferAprFunctionOutputs {
    uint256 outArg0;
}

struct Size$GetBuyCreditMarketSwapDataFunctionInputs {
    Size$BuyCreditMarketParams params;
}

struct Size$CreditPosition {
    address lender;
    bool forSale;
    uint256 credit;
    uint256 debtPositionId;
}

struct Size$BuyCreditMarket$SwapDataBuyCreditMarket {
    Size$CreditPosition creditPosition;
    address borrower;
    uint256 creditAmountOut;
    uint256 cashAmountIn;
    uint256 swapFee;
    uint256 fragmentationFee;
    uint256 tenor;
}

struct Size$GetBuyCreditMarketSwapDataFunctionOutputs {
    Size$BuyCreditMarket$SwapDataBuyCreditMarket outArg0;
}

struct Size$GetCreditPositionFunctionInputs {
    uint256 creditPositionId;
}

struct Size$GetCreditPositionFunctionOutputs {
    Size$CreditPosition outArg0;
}

struct Size$GetDebtPositionFunctionInputs {
    uint256 debtPositionId;
}

struct Size$DebtPosition {
    address borrower;
    uint256 futureValue;
    uint256 dueDate;
    uint256 liquidityIndexAtRepayment;
}

struct Size$GetDebtPositionFunctionOutputs {
    Size$DebtPosition outArg0;
}

struct Size$GetLoanOfferAprFunctionInputs {
    address user;
    uint256 collectionId;
    address rateProvider;
    uint256 tenor;
}

struct Size$GetLoanOfferAprFunctionOutputs {
    uint256 outArg0;
}

struct Size$GetRoleAdminFunctionInputs {
    bytes32 role;
}

struct Size$GetRoleAdminFunctionOutputs {
    bytes32 outArg0;
}

struct Size$SellCreditMarketParams {
    address lender;
    uint256 creditPositionId;
    uint256 amount;
    uint256 tenor;
    uint256 deadline;
    uint256 maxAPR;
    bool exactAmountIn;
    uint256 collectionId;
    address rateProvider;
}

struct Size$GetSellCreditMarketSwapDataFunctionInputs {
    Size$SellCreditMarketParams params;
}

struct Size$SellCreditMarket$SwapDataSellCreditMarket {
    Size$CreditPosition creditPosition;
    uint256 creditAmountIn;
    uint256 cashAmountOut;
    uint256 swapFee;
    uint256 fragmentationFee;
    uint256 tenor;
}

struct Size$GetSellCreditMarketSwapDataFunctionOutputs {
    Size$SellCreditMarket$SwapDataSellCreditMarket outArg0;
}

struct Size$GetUserDefinedBorrowOfferAprFunctionInputs {
    address borrower;
    uint256 tenor;
}

struct Size$GetUserDefinedBorrowOfferAprFunctionOutputs {
    uint256 outArg0;
}

struct Size$GetUserDefinedCopyBorrowOfferConfigFunctionInputs {
    address user;
}

struct Size$CopyLimitOrderConfig {
    uint256 minTenor;
    uint256 maxTenor;
    uint256 minAPR;
    uint256 maxAPR;
    int256 offsetAPR;
}

struct Size$GetUserDefinedCopyBorrowOfferConfigFunctionOutputs {
    Size$CopyLimitOrderConfig outArg0;
}

struct Size$GetUserDefinedCopyLoanOfferConfigFunctionInputs {
    address user;
}

struct Size$GetUserDefinedCopyLoanOfferConfigFunctionOutputs {
    Size$CopyLimitOrderConfig outArg0;
}

struct Size$GetUserDefinedLoanOfferAprFunctionInputs {
    address lender;
    uint256 tenor;
}

struct Size$GetUserDefinedLoanOfferAprFunctionOutputs {
    uint256 outArg0;
}

struct Size$GetUserViewFunctionInputs {
    address user;
}

struct Size$User {
    Size$BuyCreditLimitParams loanOffer;
    Size$BuyCreditLimitParams borrowOffer;
    uint256 openingLimitBorrowCR;
    bool allCreditPositionsForSaleDisabled;
}

struct Size$UserView {
    Size$User user;
    address account;
    uint256 collateralTokenBalance;
    uint256 borrowTokenBalance;
    uint256 debtBalance;
}

struct Size$GetUserViewFunctionOutputs {
    Size$UserView outArg0;
}

struct Size$GrantRoleFunctionInputs {
    bytes32 role;
    address account;
}

struct Size$HasRoleFunctionInputs {
    bytes32 role;
    address account;
}

struct Size$HasRoleFunctionOutputs {
    bool outArg0;
}

struct Size$InitializeRiskConfigParams {
    uint256 crOpening;
    uint256 crLiquidation;
    uint256 minimumCreditBorrowToken;
    uint256 minTenor;
    uint256 maxTenor;
}

struct Size$InitializeOracleParams {
    address priceFeed;
    uint64 variablePoolBorrowRateStaleRateInterval;
}

struct Size$InitializeDataParams {
    address weth;
    address underlyingCollateralToken;
    address underlyingBorrowToken;
    address variablePool;
    address borrowTokenVault;
    address sizeFactory;
}

struct Size$InitializeFunctionInputs {
    address owner;
    Size$InitializeFeeConfigParams f;
    Size$InitializeRiskConfigParams r;
    Size$InitializeOracleParams o;
    Size$InitializeDataParams d;
}

struct Size$IsUserDefinedBorrowOfferNullFunctionInputs {
    address user;
}

struct Size$IsUserDefinedBorrowOfferNullFunctionOutputs {
    bool outArg0;
}

struct Size$IsUserDefinedLoanOfferNullFunctionInputs {
    address user;
}

struct Size$IsUserDefinedLoanOfferNullFunctionOutputs {
    bool outArg0;
}

struct Size$LiquidateParams {
    uint256 debtPositionId;
    uint256 minimumCollateralProfit;
    uint256 deadline;
}

struct Size$LiquidateFunctionInputs {
    Size$LiquidateParams params;
}

struct Size$LiquidateFunctionOutputs {
    uint256 liquidatorProfitCollateralToken;
}

struct Size$LiquidateWithReplacementParams {
    uint256 debtPositionId;
    address borrower;
    uint256 minimumCollateralProfit;
    uint256 deadline;
    uint256 minAPR;
    uint256 collectionId;
    address rateProvider;
}

struct Size$LiquidateWithReplacementFunctionInputs {
    Size$LiquidateWithReplacementParams params;
}

struct Size$LiquidateWithReplacementFunctionOutputs {
    uint256 liquidatorProfitCollateralToken;
    uint256 liquidatorProfitBorrowToken;
}

struct Size$MulticallFunctionInputs {
    bytes[] _data;
}

struct Size$MulticallFunctionOutputs {
    bytes[] results;
}

struct Size$OracleFunctionOutputs {
    Size$InitializeOracleParams outArg0;
}

struct Size$PartialRepayParams {
    uint256 creditPositionWithDebtToRepayId;
    uint256 amount;
    address borrower;
}

struct Size$PartialRepayFunctionInputs {
    Size$PartialRepayParams params;
}

struct Size$PausedFunctionOutputs {
    bool outArg0;
}

struct Size$ProxiableUuidFunctionOutputs {
    bytes32 outArg0;
}

struct Size$RenounceRoleFunctionInputs {
    bytes32 role;
    address callerConfirmation;
}

struct Size$RepayParams {
    uint256 debtPositionId;
    address borrower;
}

struct Size$RepayFunctionInputs {
    Size$RepayParams params;
}

struct Size$RevokeRoleFunctionInputs {
    bytes32 role;
    address account;
}

struct Size$RiskConfigFunctionOutputs {
    Size$InitializeRiskConfigParams outArg0;
}

struct Size$SelfLiquidateFunctionInputs {
    Size$ClaimParams params;
}

struct Size$SelfLiquidateOnBehalfOfParams {
    Size$ClaimParams params;
    address onBehalfOf;
    address recipient;
}

struct Size$SelfLiquidateOnBehalfOfFunctionInputs {
    Size$SelfLiquidateOnBehalfOfParams externalParams;
}

struct Size$SellCreditLimitFunctionInputs {
    Size$BuyCreditLimitParams params;
}

struct Size$SellCreditLimitOnBehalfOfFunctionInputs {
    Size$BuyCreditLimitOnBehalfOfParams externalParams;
}

struct Size$SellCreditMarketFunctionInputs {
    Size$SellCreditMarketParams params;
}

struct Size$SellCreditMarketOnBehalfOfParams {
    Size$SellCreditMarketParams params;
    address onBehalfOf;
    address recipient;
}

struct Size$SellCreditMarketOnBehalfOfFunctionInputs {
    Size$SellCreditMarketOnBehalfOfParams externalParams;
}

struct Size$SetCopyLimitOrderConfigsParams {
    Size$CopyLimitOrderConfig copyLoanOfferConfig;
    Size$CopyLimitOrderConfig copyBorrowOfferConfig;
}

struct Size$SetCopyLimitOrderConfigsFunctionInputs {
    Size$SetCopyLimitOrderConfigsParams params;
}

struct Size$SetCopyLimitOrderConfigsOnBehalfOfParams {
    Size$SetCopyLimitOrderConfigsParams params;
    address onBehalfOf;
}

struct Size$SetCopyLimitOrderConfigsOnBehalfOfFunctionInputs {
    Size$SetCopyLimitOrderConfigsOnBehalfOfParams externalParams;
}

struct Size$SetUserConfigurationParams {
    uint256 openingLimitBorrowCR;
    bool allCreditPositionsForSaleDisabled;
    bool creditPositionIdsForSale;
    uint256[] creditPositionIds;
}

struct Size$SetUserConfigurationFunctionInputs {
    Size$SetUserConfigurationParams params;
}

struct Size$SetUserConfigurationOnBehalfOfParams {
    Size$SetUserConfigurationParams params;
    address onBehalfOf;
}

struct Size$SetUserConfigurationOnBehalfOfFunctionInputs {
    Size$SetUserConfigurationOnBehalfOfParams externalParams;
}

struct Size$SetVaultParams {
    address vault;
    bool forfeitOldShares;
}

struct Size$SetVaultFunctionInputs {
    Size$SetVaultParams params;
}

struct Size$SetVaultOnBehalfOfParams {
    Size$SetVaultParams params;
    address onBehalfOf;
}

struct Size$SetVaultOnBehalfOfFunctionInputs {
    Size$SetVaultOnBehalfOfParams externalParams;
}

struct Size$SupportsInterfaceFunctionInputs {
    bytes4 interfaceId;
}

struct Size$SupportsInterfaceFunctionOutputs {
    bool outArg0;
}

struct Size$UpdateConfigParams {
    string key;
    uint256 value;
}

struct Size$UpdateConfigFunctionInputs {
    Size$UpdateConfigParams params;
}

struct Size$UpgradeToAndCallFunctionInputs {
    address newImplementation;
    bytes data;
}

struct Size$VersionFunctionOutputs {
    string outArg0;
}

struct Size$WithdrawFunctionInputs {
    Size$DepositParams params;
}

struct Size$WithdrawOnBehalfOfFunctionInputs {
    Size$DepositOnBehalfOfParams externalParams;
}

struct Size$BuyCreditLimitEventParams {
    address sender;
    address onBehalfOf;
    uint256 maxDueDate;
    uint256[] curveRelativeTimeTenors;
    int256[] curveRelativeTimeAprs;
    uint256[] curveRelativeTimeMarketRateMultipliers;
}

struct Size$BuyCreditMarketEventParams {
    address sender;
    address lender;
    address borrower;
    address recipient;
    uint256 creditPositionId;
    uint256 amount;
    uint256 tenor;
    uint256 deadline;
    uint256 minAPR;
    bool exactAmountIn;
    uint256 collectionId;
    address rateProvider;
}

struct Size$ClaimEventParams {
    address sender;
    uint256 creditPositionId;
}

struct Size$CompensateEventParams {
    address sender;
    address onBehalfOf;
    uint256 creditPositionWithDebtToRepayId;
    uint256 creditPositionToCompensateId;
    uint256 amount;
}

struct Size$CreateCreditPositionEventParams {
    uint256 creditPositionId;
    address lender;
    uint256 debtPositionId;
    uint256 exitPositionId;
    uint256 credit;
    bool forSale;
}

struct Size$CreateDebtPositionEventParams {
    uint256 debtPositionId;
    address borrower;
    address lender;
    uint256 futureValue;
    uint256 dueDate;
}

struct Size$DepositEventParams {
    address sender;
    address onBehalfOf;
    address token;
    address to;
    uint256 amount;
}

struct Size$InitializeEventParams {
    address sender;
}

struct Size$InitializedEventParams {
    uint64 version;
}

struct Size$LiquidateEventParams {
    address sender;
    uint256 debtPositionId;
    uint256 minimumCollateralProfit;
    uint256 deadline;
    uint256 collateralRatio;
    uint8 loanStatus;
}

struct Size$LiquidateWithReplacementEventParams {
    address sender;
    uint256 debtPositionId;
    address borrower;
    uint256 minimumCollateralProfit;
    uint256 deadline;
    uint256 minAPR;
    uint256 collectionId;
    address rateProvider;
}

struct Size$PartialRepayEventParams {
    address sender;
    uint256 creditPositionWithDebtToRepayId;
    uint256 amount;
    address borrower;
}

struct Size$PausedEventParams {
    address account;
}

struct Size$RepayEventParams {
    address sender;
    uint256 debtPositionId;
    address borrower;
}

struct Size$RoleAdminChangedEventParams {
    bytes32 role;
    bytes32 previousAdminRole;
    bytes32 newAdminRole;
}

struct Size$RoleGrantedEventParams {
    bytes32 role;
    address account;
    address sender;
}

struct Size$RoleRevokedEventParams {
    bytes32 role;
    address account;
    address sender;
}

struct Size$SelfLiquidateEventParams {
    address sender;
    address lender;
    uint256 creditPositionId;
    address recipient;
}

struct Size$SellCreditLimitEventParams {
    address sender;
    address onBehalfOf;
    uint256 maxDueDate;
    uint256[] curveRelativeTimeTenors;
    int256[] curveRelativeTimeAprs;
    uint256[] curveRelativeTimeMarketRateMultipliers;
}

struct Size$SellCreditMarketEventParams {
    address sender;
    address borrower;
    address lender;
    address recipient;
    uint256 creditPositionId;
    uint256 amount;
    uint256 tenor;
    uint256 deadline;
    uint256 maxAPR;
    bool exactAmountIn;
    uint256 collectionId;
    address rateProvider;
}

struct Size$SetCopyLimitOrderConfigsEventParams {
    address sender;
    address onBehalfOf;
    uint256 minTenorLoanOffer;
    uint256 maxTenorLoanOffer;
    uint256 minAPRLoanOffer;
    uint256 maxAPRLoanOffer;
    int256 offsetAPRLoanOffer;
    uint256 minTenorBorrowOffer;
    uint256 maxTenorBorrowOffer;
    uint256 minAPRBorrowOffer;
    uint256 maxAPRBorrowOffer;
    int256 offsetAPRBorrowOffer;
}

struct Size$SetUserConfigurationEventParams {
    address sender;
    address onBehalfOf;
    uint256 openingLimitBorrowCR;
    bool allCreditPositionsForSaleDisabled;
    bool creditPositionIdsForSale;
    uint256[] creditPositionIds;
}

struct Size$SetVaultEventParams {
    address sender;
    address onBehalfOf;
    address vault;
    bool forfeitOldShares;
}

struct Size$SwapDataEventParams {
    uint256 creditPositionId;
    address borrower;
    address lender;
    uint256 credit;
    uint256 cashIn;
    uint256 cashOut;
    uint256 swapFee;
    uint256 fragmentationFee;
    uint256 tenor;
}

struct Size$UnpausedEventParams {
    address account;
}

struct Size$UpdateConfigEventParams {
    address sender;
    bytes32 key;
    uint256 value;
}

struct Size$UpdateCreditPositionEventParams {
    uint256 creditPositionId;
    address lender;
    uint256 credit;
    bool forSale;
}

struct Size$UpdateDebtPositionEventParams {
    uint256 debtPositionId;
    address borrower;
    uint256 futureValue;
    uint256 liquidityIndexAtRepayment;
}

struct Size$UpgradedEventParams {
    address implementation;
}

struct Size$VariablePoolBorrowRateUpdatedEventParams {
    address sender;
    uint128 oldBorrowRate;
    uint128 newBorrowRate;
}

struct Size$WithdrawEventParams {
    address sender;
    address onBehalfOf;
    address token;
    address to;
    uint256 amount;
}

abstract contract Size$OnBuyCreditLimitEvent {
    function onBuyCreditLimitEvent(EventContext memory ctx, Size$BuyCreditLimitEventParams memory inputs) virtual external;

    function triggerOnBuyCreditLimitEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0x1f405a9ced14b5a2394aae7ee59fe66d7d0782e1341a95416291868bbae6913e),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBuyCreditLimitEvent.selector
        });
    }
}

abstract contract Size$OnBuyCreditMarketEvent {
    function onBuyCreditMarketEvent(EventContext memory ctx, Size$BuyCreditMarketEventParams memory inputs) virtual external;

    function triggerOnBuyCreditMarketEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0xa5892ab4c6a088c642bf40d91705ce9b99b2f44dac3a04b88b8e9004ead22bf1),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBuyCreditMarketEvent.selector
        });
    }
}

abstract contract Size$OnClaimEvent {
    function onClaimEvent(EventContext memory ctx, Size$ClaimEventParams memory inputs) virtual external;

    function triggerOnClaimEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0x47cee97cb7acd717b3c0aa1435d004cd5b3c8c57d70dbceb4e4458bbd60e39d4),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onClaimEvent.selector
        });
    }
}

abstract contract Size$OnCompensateEvent {
    function onCompensateEvent(EventContext memory ctx, Size$CompensateEventParams memory inputs) virtual external;

    function triggerOnCompensateEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0x4e7e2735528d8c3e943fd545526d432a6f178a48e5e201186f897a1a86533653),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCompensateEvent.selector
        });
    }
}

abstract contract Size$OnCreateCreditPositionEvent {
    function onCreateCreditPositionEvent(EventContext memory ctx, Size$CreateCreditPositionEventParams memory inputs) virtual external;

    function triggerOnCreateCreditPositionEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0x95c0961f606b338f7e6a3c8fd3b2559a53eb7b083ba4b953fed4f41264491913),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCreateCreditPositionEvent.selector
        });
    }
}

abstract contract Size$OnCreateDebtPositionEvent {
    function onCreateDebtPositionEvent(EventContext memory ctx, Size$CreateDebtPositionEventParams memory inputs) virtual external;

    function triggerOnCreateDebtPositionEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0x0acb8d1aa087e3e5ac169a594b33e8f991bc9e717cdb4fbe0aa6e0b67c18cdb7),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCreateDebtPositionEvent.selector
        });
    }
}

abstract contract Size$OnDepositEvent {
    function onDepositEvent(EventContext memory ctx, Size$DepositEventParams memory inputs) virtual external;

    function triggerOnDepositEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0xa856e8f098813135735b4d4f52d96083d1dbb35fd5603ff424661413f59c2810),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDepositEvent.selector
        });
    }
}

abstract contract Size$OnInitializeEvent {
    function onInitializeEvent(EventContext memory ctx, Size$InitializeEventParams memory inputs) virtual external;

    function triggerOnInitializeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0x36b1453565f45af7b509b59d5e2eac8f1948ea9e3e193db6663b4101afb6382c),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInitializeEvent.selector
        });
    }
}

abstract contract Size$OnInitializedEvent {
    function onInitializedEvent(EventContext memory ctx, Size$InitializedEventParams memory inputs) virtual external;

    function triggerOnInitializedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0xc7f505b2f371ae2175ee4913f4499e1f2633a7b5936321eed1cdaeb6115181d2),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInitializedEvent.selector
        });
    }
}

abstract contract Size$OnLiquidateEvent {
    function onLiquidateEvent(EventContext memory ctx, Size$LiquidateEventParams memory inputs) virtual external;

    function triggerOnLiquidateEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0x06ad6b9ad23e24ea12997b8d45be6f62349e809cbfe701934e61ec45f147c767),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLiquidateEvent.selector
        });
    }
}

abstract contract Size$OnLiquidateWithReplacementEvent {
    function onLiquidateWithReplacementEvent(EventContext memory ctx, Size$LiquidateWithReplacementEventParams memory inputs) virtual external;

    function triggerOnLiquidateWithReplacementEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0xa95988a2ac8baddca52dc81c0e3287b40c695435b2cebcfd30462500d4eddfa1),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLiquidateWithReplacementEvent.selector
        });
    }
}

abstract contract Size$OnPartialRepayEvent {
    function onPartialRepayEvent(EventContext memory ctx, Size$PartialRepayEventParams memory inputs) virtual external;

    function triggerOnPartialRepayEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0x7fc6234daf4e3f9178fcc97837538d638d90e249a12e2dfaacfc11e85b4a7c1e),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPartialRepayEvent.selector
        });
    }
}

abstract contract Size$OnPausedEvent {
    function onPausedEvent(EventContext memory ctx, Size$PausedEventParams memory inputs) virtual external;

    function triggerOnPausedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0x62e78cea01bee320cd4e420270b5ea74000d11b0c9f74754ebdbfc544b05a258),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPausedEvent.selector
        });
    }
}

abstract contract Size$OnRepayEvent {
    function onRepayEvent(EventContext memory ctx, Size$RepayEventParams memory inputs) virtual external;

    function triggerOnRepayEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0x208928674d844f1873d826482474b6f0e021e4592c0384574f00e016d90d979b),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRepayEvent.selector
        });
    }
}

abstract contract Size$OnRoleAdminChangedEvent {
    function onRoleAdminChangedEvent(EventContext memory ctx, Size$RoleAdminChangedEventParams memory inputs) virtual external;

    function triggerOnRoleAdminChangedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0xbd79b86ffe0ab8e8776151514217cd7cacd52c909f66475c3af44e129f0b00ff),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRoleAdminChangedEvent.selector
        });
    }
}

abstract contract Size$OnRoleGrantedEvent {
    function onRoleGrantedEvent(EventContext memory ctx, Size$RoleGrantedEventParams memory inputs) virtual external;

    function triggerOnRoleGrantedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0x2f8788117e7eff1d82e926ec794901d17c78024a50270940304540a733656f0d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRoleGrantedEvent.selector
        });
    }
}

abstract contract Size$OnRoleRevokedEvent {
    function onRoleRevokedEvent(EventContext memory ctx, Size$RoleRevokedEventParams memory inputs) virtual external;

    function triggerOnRoleRevokedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0xf6391f5c32d9c69d2a47ea670b442974b53935d1edc7fd64eb21e047a839171b),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRoleRevokedEvent.selector
        });
    }
}

abstract contract Size$OnSelfLiquidateEvent {
    function onSelfLiquidateEvent(EventContext memory ctx, Size$SelfLiquidateEventParams memory inputs) virtual external;

    function triggerOnSelfLiquidateEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0xf594e4658737d139eb7d733b8f2a663d489e6ac525b1202b82425db84412dd29),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSelfLiquidateEvent.selector
        });
    }
}

abstract contract Size$OnSellCreditLimitEvent {
    function onSellCreditLimitEvent(EventContext memory ctx, Size$SellCreditLimitEventParams memory inputs) virtual external;

    function triggerOnSellCreditLimitEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0x60515588383780aafcff983a5f903b2820f801add505c111247602df240fff58),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSellCreditLimitEvent.selector
        });
    }
}

abstract contract Size$OnSellCreditMarketEvent {
    function onSellCreditMarketEvent(EventContext memory ctx, Size$SellCreditMarketEventParams memory inputs) virtual external;

    function triggerOnSellCreditMarketEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0xb1718819c68f0d980d8e72855f7bb4c2ff6f011149ead5dc0af4472cae65ad4e),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSellCreditMarketEvent.selector
        });
    }
}

abstract contract Size$OnSetCopyLimitOrderConfigsEvent {
    function onSetCopyLimitOrderConfigsEvent(EventContext memory ctx, Size$SetCopyLimitOrderConfigsEventParams memory inputs) virtual external;

    function triggerOnSetCopyLimitOrderConfigsEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0xe489cd0edaabbcd52f773b41ab8d74d6f3ec4dfb4fdcd650086ae961f2e9b9e3),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetCopyLimitOrderConfigsEvent.selector
        });
    }
}

abstract contract Size$OnSetUserConfigurationEvent {
    function onSetUserConfigurationEvent(EventContext memory ctx, Size$SetUserConfigurationEventParams memory inputs) virtual external;

    function triggerOnSetUserConfigurationEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0x2bd6a8dc7dea75bc5b902b8bc4c5bbf3556e2c1ff200edc8187fc816abf45c6d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetUserConfigurationEvent.selector
        });
    }
}

abstract contract Size$OnSetVaultEvent {
    function onSetVaultEvent(EventContext memory ctx, Size$SetVaultEventParams memory inputs) virtual external;

    function triggerOnSetVaultEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0x5b70ed3dd6be2450fd64e8c3d89470867893ec1a5f94a3a1927d83ae649f831f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetVaultEvent.selector
        });
    }
}

abstract contract Size$OnSwapDataEvent {
    function onSwapDataEvent(EventContext memory ctx, Size$SwapDataEventParams memory inputs) virtual external;

    function triggerOnSwapDataEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0x76c745bbc9ee9f9a6c9da49c6849bb4b84b6debecb7d8cc43856e25426bd5264),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSwapDataEvent.selector
        });
    }
}

abstract contract Size$OnUnpausedEvent {
    function onUnpausedEvent(EventContext memory ctx, Size$UnpausedEventParams memory inputs) virtual external;

    function triggerOnUnpausedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0x5db9ee0a495bf2e6ff9c91a7834c1ba4fdd244a5e8aa4e537bd38aeae4b073aa),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUnpausedEvent.selector
        });
    }
}

abstract contract Size$OnUpdateConfigEvent {
    function onUpdateConfigEvent(EventContext memory ctx, Size$UpdateConfigEventParams memory inputs) virtual external;

    function triggerOnUpdateConfigEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0xc03d31d4f53ee33ed4dcaa3100cf44ee6186b00311292cb57f873a5a19dec898),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUpdateConfigEvent.selector
        });
    }
}

abstract contract Size$OnUpdateCreditPositionEvent {
    function onUpdateCreditPositionEvent(EventContext memory ctx, Size$UpdateCreditPositionEventParams memory inputs) virtual external;

    function triggerOnUpdateCreditPositionEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0x16d51caf17ac55f2fdc0f9a732aa48892073855f9deb87364c6cceaf08aedf26),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUpdateCreditPositionEvent.selector
        });
    }
}

abstract contract Size$OnUpdateDebtPositionEvent {
    function onUpdateDebtPositionEvent(EventContext memory ctx, Size$UpdateDebtPositionEventParams memory inputs) virtual external;

    function triggerOnUpdateDebtPositionEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0xe26b988e7697e02e61da8982c50ac17b3154bc97035c55fe9cacc9e8d07010cd),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUpdateDebtPositionEvent.selector
        });
    }
}

abstract contract Size$OnUpgradedEvent {
    function onUpgradedEvent(EventContext memory ctx, Size$UpgradedEventParams memory inputs) virtual external;

    function triggerOnUpgradedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0xbc7cd75a20ee27fd9adebab32041f755214dbc6bffa90cc0225b39da2e5c2d3b),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUpgradedEvent.selector
        });
    }
}

abstract contract Size$OnVariablePoolBorrowRateUpdatedEvent {
    function onVariablePoolBorrowRateUpdatedEvent(EventContext memory ctx, Size$VariablePoolBorrowRateUpdatedEventParams memory inputs) virtual external;

    function triggerOnVariablePoolBorrowRateUpdatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0x26b8010a81fad3e15c7545637c99390bdeb250bf0a67e4cf43c3d220ec2acc31),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onVariablePoolBorrowRateUpdatedEvent.selector
        });
    }
}

abstract contract Size$OnWithdrawEvent {
    function onWithdrawEvent(EventContext memory ctx, Size$WithdrawEventParams memory inputs) virtual external;

    function triggerOnWithdrawEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes32(0xe826ecb5c03d4897f8ab426ee94064e06179dff39cd9fdd0776904cd935c95d8),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onWithdrawEvent.selector
        });
    }
}

abstract contract Size$OnDefaultAdminRoleFunction {
    function onDefaultAdminRoleFunction(FunctionContext memory ctx, Size$DefaultAdminRoleFunctionOutputs memory outputs) virtual external;

    function triggerOnDefaultAdminRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xa217fddf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDefaultAdminRoleFunction.selector
        });
    }
}

abstract contract Size$PreDefaultAdminRoleFunction {
    function preDefaultAdminRoleFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDefaultAdminRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xa217fddf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDefaultAdminRoleFunction.selector
        });
    }
}

abstract contract Size$OnUpgradeInterfaceVersionFunction {
    function onUpgradeInterfaceVersionFunction(FunctionContext memory ctx, Size$UpgradeInterfaceVersionFunctionOutputs memory outputs) virtual external;

    function triggerOnUpgradeInterfaceVersionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xad3cb1cc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUpgradeInterfaceVersionFunction.selector
        });
    }
}

abstract contract Size$PreUpgradeInterfaceVersionFunction {
    function preUpgradeInterfaceVersionFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreUpgradeInterfaceVersionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xad3cb1cc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preUpgradeInterfaceVersionFunction.selector
        });
    }
}

abstract contract Size$OnBuyCreditLimitFunction {
    function onBuyCreditLimitFunction(FunctionContext memory ctx, Size$BuyCreditLimitFunctionInputs memory inputs) virtual external;

    function triggerOnBuyCreditLimitFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x3746f858),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBuyCreditLimitFunction.selector
        });
    }
}

abstract contract Size$PreBuyCreditLimitFunction {
    function preBuyCreditLimitFunction(PreFunctionContext memory ctx, Size$BuyCreditLimitFunctionInputs memory inputs) virtual external;

    function triggerPreBuyCreditLimitFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x3746f858),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBuyCreditLimitFunction.selector
        });
    }
}

abstract contract Size$OnBuyCreditLimitOnBehalfOfFunction {
    function onBuyCreditLimitOnBehalfOfFunction(FunctionContext memory ctx, Size$BuyCreditLimitOnBehalfOfFunctionInputs memory inputs) virtual external;

    function triggerOnBuyCreditLimitOnBehalfOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x53e043d4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBuyCreditLimitOnBehalfOfFunction.selector
        });
    }
}

abstract contract Size$PreBuyCreditLimitOnBehalfOfFunction {
    function preBuyCreditLimitOnBehalfOfFunction(PreFunctionContext memory ctx, Size$BuyCreditLimitOnBehalfOfFunctionInputs memory inputs) virtual external;

    function triggerPreBuyCreditLimitOnBehalfOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x53e043d4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBuyCreditLimitOnBehalfOfFunction.selector
        });
    }
}

abstract contract Size$OnBuyCreditMarketFunction {
    function onBuyCreditMarketFunction(FunctionContext memory ctx, Size$BuyCreditMarketFunctionInputs memory inputs) virtual external;

    function triggerOnBuyCreditMarketFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xe236052b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBuyCreditMarketFunction.selector
        });
    }
}

abstract contract Size$PreBuyCreditMarketFunction {
    function preBuyCreditMarketFunction(PreFunctionContext memory ctx, Size$BuyCreditMarketFunctionInputs memory inputs) virtual external;

    function triggerPreBuyCreditMarketFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xe236052b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBuyCreditMarketFunction.selector
        });
    }
}

abstract contract Size$OnBuyCreditMarketOnBehalfOfFunction {
    function onBuyCreditMarketOnBehalfOfFunction(FunctionContext memory ctx, Size$BuyCreditMarketOnBehalfOfFunctionInputs memory inputs) virtual external;

    function triggerOnBuyCreditMarketOnBehalfOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x834dafb5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBuyCreditMarketOnBehalfOfFunction.selector
        });
    }
}

abstract contract Size$PreBuyCreditMarketOnBehalfOfFunction {
    function preBuyCreditMarketOnBehalfOfFunction(PreFunctionContext memory ctx, Size$BuyCreditMarketOnBehalfOfFunctionInputs memory inputs) virtual external;

    function triggerPreBuyCreditMarketOnBehalfOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x834dafb5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBuyCreditMarketOnBehalfOfFunction.selector
        });
    }
}

abstract contract Size$OnClaimFunction {
    function onClaimFunction(FunctionContext memory ctx, Size$ClaimFunctionInputs memory inputs) virtual external;

    function triggerOnClaimFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xf45bf01c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onClaimFunction.selector
        });
    }
}

abstract contract Size$PreClaimFunction {
    function preClaimFunction(PreFunctionContext memory ctx, Size$ClaimFunctionInputs memory inputs) virtual external;

    function triggerPreClaimFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xf45bf01c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preClaimFunction.selector
        });
    }
}

abstract contract Size$OnCollateralRatioFunction {
    function onCollateralRatioFunction(FunctionContext memory ctx, Size$CollateralRatioFunctionInputs memory inputs, Size$CollateralRatioFunctionOutputs memory outputs) virtual external;

    function triggerOnCollateralRatioFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xca40742c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCollateralRatioFunction.selector
        });
    }
}

abstract contract Size$PreCollateralRatioFunction {
    function preCollateralRatioFunction(PreFunctionContext memory ctx, Size$CollateralRatioFunctionInputs memory inputs) virtual external;

    function triggerPreCollateralRatioFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xca40742c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCollateralRatioFunction.selector
        });
    }
}

abstract contract Size$OnCompensateFunction {
    function onCompensateFunction(FunctionContext memory ctx, Size$CompensateFunctionInputs memory inputs) virtual external;

    function triggerOnCompensateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x8e572776),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCompensateFunction.selector
        });
    }
}

abstract contract Size$PreCompensateFunction {
    function preCompensateFunction(PreFunctionContext memory ctx, Size$CompensateFunctionInputs memory inputs) virtual external;

    function triggerPreCompensateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x8e572776),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCompensateFunction.selector
        });
    }
}

abstract contract Size$OnCompensateOnBehalfOfFunction {
    function onCompensateOnBehalfOfFunction(FunctionContext memory ctx, Size$CompensateOnBehalfOfFunctionInputs memory inputs) virtual external;

    function triggerOnCompensateOnBehalfOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x3ae6d7c3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCompensateOnBehalfOfFunction.selector
        });
    }
}

abstract contract Size$PreCompensateOnBehalfOfFunction {
    function preCompensateOnBehalfOfFunction(PreFunctionContext memory ctx, Size$CompensateOnBehalfOfFunctionInputs memory inputs) virtual external;

    function triggerPreCompensateOnBehalfOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x3ae6d7c3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCompensateOnBehalfOfFunction.selector
        });
    }
}

abstract contract Size$OnDataFunction {
    function onDataFunction(FunctionContext memory ctx, Size$DataFunctionOutputs memory outputs) virtual external;

    function triggerOnDataFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x73d4a13a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDataFunction.selector
        });
    }
}

abstract contract Size$PreDataFunction {
    function preDataFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDataFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x73d4a13a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDataFunction.selector
        });
    }
}

abstract contract Size$OnDebtTokenAmountToCollateralTokenAmountFunction {
    function onDebtTokenAmountToCollateralTokenAmountFunction(FunctionContext memory ctx, Size$DebtTokenAmountToCollateralTokenAmountFunctionInputs memory inputs, Size$DebtTokenAmountToCollateralTokenAmountFunctionOutputs memory outputs) virtual external;

    function triggerOnDebtTokenAmountToCollateralTokenAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x1970e5ea),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDebtTokenAmountToCollateralTokenAmountFunction.selector
        });
    }
}

abstract contract Size$PreDebtTokenAmountToCollateralTokenAmountFunction {
    function preDebtTokenAmountToCollateralTokenAmountFunction(PreFunctionContext memory ctx, Size$DebtTokenAmountToCollateralTokenAmountFunctionInputs memory inputs) virtual external;

    function triggerPreDebtTokenAmountToCollateralTokenAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x1970e5ea),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDebtTokenAmountToCollateralTokenAmountFunction.selector
        });
    }
}

abstract contract Size$OnDepositFunction {
    function onDepositFunction(FunctionContext memory ctx, Size$DepositFunctionInputs memory inputs) virtual external;

    function triggerOnDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x0cf8542f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDepositFunction.selector
        });
    }
}

abstract contract Size$PreDepositFunction {
    function preDepositFunction(PreFunctionContext memory ctx, Size$DepositFunctionInputs memory inputs) virtual external;

    function triggerPreDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x0cf8542f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDepositFunction.selector
        });
    }
}

abstract contract Size$OnDepositOnBehalfOfFunction {
    function onDepositOnBehalfOfFunction(FunctionContext memory ctx, Size$DepositOnBehalfOfFunctionInputs memory inputs) virtual external;

    function triggerOnDepositOnBehalfOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xfa823af5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDepositOnBehalfOfFunction.selector
        });
    }
}

abstract contract Size$PreDepositOnBehalfOfFunction {
    function preDepositOnBehalfOfFunction(PreFunctionContext memory ctx, Size$DepositOnBehalfOfFunctionInputs memory inputs) virtual external;

    function triggerPreDepositOnBehalfOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xfa823af5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDepositOnBehalfOfFunction.selector
        });
    }
}

abstract contract Size$OnFeeConfigFunction {
    function onFeeConfigFunction(FunctionContext memory ctx, Size$FeeConfigFunctionOutputs memory outputs) virtual external;

    function triggerOnFeeConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x1e5eb1d0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFeeConfigFunction.selector
        });
    }
}

abstract contract Size$PreFeeConfigFunction {
    function preFeeConfigFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreFeeConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x1e5eb1d0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preFeeConfigFunction.selector
        });
    }
}

abstract contract Size$OnGetBorrowOfferAprFunction {
    function onGetBorrowOfferAprFunction(FunctionContext memory ctx, Size$GetBorrowOfferAprFunctionInputs memory inputs, Size$GetBorrowOfferAprFunctionOutputs memory outputs) virtual external;

    function triggerOnGetBorrowOfferAprFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x1ff75b0b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetBorrowOfferAprFunction.selector
        });
    }
}

abstract contract Size$PreGetBorrowOfferAprFunction {
    function preGetBorrowOfferAprFunction(PreFunctionContext memory ctx, Size$GetBorrowOfferAprFunctionInputs memory inputs) virtual external;

    function triggerPreGetBorrowOfferAprFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x1ff75b0b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetBorrowOfferAprFunction.selector
        });
    }
}

abstract contract Size$OnGetBuyCreditMarketSwapDataFunction {
    function onGetBuyCreditMarketSwapDataFunction(FunctionContext memory ctx, Size$GetBuyCreditMarketSwapDataFunctionInputs memory inputs, Size$GetBuyCreditMarketSwapDataFunctionOutputs memory outputs) virtual external;

    function triggerOnGetBuyCreditMarketSwapDataFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x02088c51),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetBuyCreditMarketSwapDataFunction.selector
        });
    }
}

abstract contract Size$PreGetBuyCreditMarketSwapDataFunction {
    function preGetBuyCreditMarketSwapDataFunction(PreFunctionContext memory ctx, Size$GetBuyCreditMarketSwapDataFunctionInputs memory inputs) virtual external;

    function triggerPreGetBuyCreditMarketSwapDataFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x02088c51),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetBuyCreditMarketSwapDataFunction.selector
        });
    }
}

abstract contract Size$OnGetCreditPositionFunction {
    function onGetCreditPositionFunction(FunctionContext memory ctx, Size$GetCreditPositionFunctionInputs memory inputs, Size$GetCreditPositionFunctionOutputs memory outputs) virtual external;

    function triggerOnGetCreditPositionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x76c1b82f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetCreditPositionFunction.selector
        });
    }
}

abstract contract Size$PreGetCreditPositionFunction {
    function preGetCreditPositionFunction(PreFunctionContext memory ctx, Size$GetCreditPositionFunctionInputs memory inputs) virtual external;

    function triggerPreGetCreditPositionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x76c1b82f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetCreditPositionFunction.selector
        });
    }
}

abstract contract Size$OnGetDebtPositionFunction {
    function onGetDebtPositionFunction(FunctionContext memory ctx, Size$GetDebtPositionFunctionInputs memory inputs, Size$GetDebtPositionFunctionOutputs memory outputs) virtual external;

    function triggerOnGetDebtPositionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xb5ec7487),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetDebtPositionFunction.selector
        });
    }
}

abstract contract Size$PreGetDebtPositionFunction {
    function preGetDebtPositionFunction(PreFunctionContext memory ctx, Size$GetDebtPositionFunctionInputs memory inputs) virtual external;

    function triggerPreGetDebtPositionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xb5ec7487),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetDebtPositionFunction.selector
        });
    }
}

abstract contract Size$OnGetLoanOfferAprFunction {
    function onGetLoanOfferAprFunction(FunctionContext memory ctx, Size$GetLoanOfferAprFunctionInputs memory inputs, Size$GetLoanOfferAprFunctionOutputs memory outputs) virtual external;

    function triggerOnGetLoanOfferAprFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x73b683be),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetLoanOfferAprFunction.selector
        });
    }
}

abstract contract Size$PreGetLoanOfferAprFunction {
    function preGetLoanOfferAprFunction(PreFunctionContext memory ctx, Size$GetLoanOfferAprFunctionInputs memory inputs) virtual external;

    function triggerPreGetLoanOfferAprFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x73b683be),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetLoanOfferAprFunction.selector
        });
    }
}

abstract contract Size$OnGetRoleAdminFunction {
    function onGetRoleAdminFunction(FunctionContext memory ctx, Size$GetRoleAdminFunctionInputs memory inputs, Size$GetRoleAdminFunctionOutputs memory outputs) virtual external;

    function triggerOnGetRoleAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x248a9ca3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetRoleAdminFunction.selector
        });
    }
}

abstract contract Size$PreGetRoleAdminFunction {
    function preGetRoleAdminFunction(PreFunctionContext memory ctx, Size$GetRoleAdminFunctionInputs memory inputs) virtual external;

    function triggerPreGetRoleAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x248a9ca3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetRoleAdminFunction.selector
        });
    }
}

abstract contract Size$OnGetSellCreditMarketSwapDataFunction {
    function onGetSellCreditMarketSwapDataFunction(FunctionContext memory ctx, Size$GetSellCreditMarketSwapDataFunctionInputs memory inputs, Size$GetSellCreditMarketSwapDataFunctionOutputs memory outputs) virtual external;

    function triggerOnGetSellCreditMarketSwapDataFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x9ab80115),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetSellCreditMarketSwapDataFunction.selector
        });
    }
}

abstract contract Size$PreGetSellCreditMarketSwapDataFunction {
    function preGetSellCreditMarketSwapDataFunction(PreFunctionContext memory ctx, Size$GetSellCreditMarketSwapDataFunctionInputs memory inputs) virtual external;

    function triggerPreGetSellCreditMarketSwapDataFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x9ab80115),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetSellCreditMarketSwapDataFunction.selector
        });
    }
}

abstract contract Size$OnGetUserDefinedBorrowOfferAprFunction {
    function onGetUserDefinedBorrowOfferAprFunction(FunctionContext memory ctx, Size$GetUserDefinedBorrowOfferAprFunctionInputs memory inputs, Size$GetUserDefinedBorrowOfferAprFunctionOutputs memory outputs) virtual external;

    function triggerOnGetUserDefinedBorrowOfferAprFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x2b59bd99),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetUserDefinedBorrowOfferAprFunction.selector
        });
    }
}

abstract contract Size$PreGetUserDefinedBorrowOfferAprFunction {
    function preGetUserDefinedBorrowOfferAprFunction(PreFunctionContext memory ctx, Size$GetUserDefinedBorrowOfferAprFunctionInputs memory inputs) virtual external;

    function triggerPreGetUserDefinedBorrowOfferAprFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x2b59bd99),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetUserDefinedBorrowOfferAprFunction.selector
        });
    }
}

abstract contract Size$OnGetUserDefinedCopyBorrowOfferConfigFunction {
    function onGetUserDefinedCopyBorrowOfferConfigFunction(FunctionContext memory ctx, Size$GetUserDefinedCopyBorrowOfferConfigFunctionInputs memory inputs, Size$GetUserDefinedCopyBorrowOfferConfigFunctionOutputs memory outputs) virtual external;

    function triggerOnGetUserDefinedCopyBorrowOfferConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xc421a759),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetUserDefinedCopyBorrowOfferConfigFunction.selector
        });
    }
}

abstract contract Size$PreGetUserDefinedCopyBorrowOfferConfigFunction {
    function preGetUserDefinedCopyBorrowOfferConfigFunction(PreFunctionContext memory ctx, Size$GetUserDefinedCopyBorrowOfferConfigFunctionInputs memory inputs) virtual external;

    function triggerPreGetUserDefinedCopyBorrowOfferConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xc421a759),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetUserDefinedCopyBorrowOfferConfigFunction.selector
        });
    }
}

abstract contract Size$OnGetUserDefinedCopyLoanOfferConfigFunction {
    function onGetUserDefinedCopyLoanOfferConfigFunction(FunctionContext memory ctx, Size$GetUserDefinedCopyLoanOfferConfigFunctionInputs memory inputs, Size$GetUserDefinedCopyLoanOfferConfigFunctionOutputs memory outputs) virtual external;

    function triggerOnGetUserDefinedCopyLoanOfferConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x04c84222),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetUserDefinedCopyLoanOfferConfigFunction.selector
        });
    }
}

abstract contract Size$PreGetUserDefinedCopyLoanOfferConfigFunction {
    function preGetUserDefinedCopyLoanOfferConfigFunction(PreFunctionContext memory ctx, Size$GetUserDefinedCopyLoanOfferConfigFunctionInputs memory inputs) virtual external;

    function triggerPreGetUserDefinedCopyLoanOfferConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x04c84222),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetUserDefinedCopyLoanOfferConfigFunction.selector
        });
    }
}

abstract contract Size$OnGetUserDefinedLoanOfferAprFunction {
    function onGetUserDefinedLoanOfferAprFunction(FunctionContext memory ctx, Size$GetUserDefinedLoanOfferAprFunctionInputs memory inputs, Size$GetUserDefinedLoanOfferAprFunctionOutputs memory outputs) virtual external;

    function triggerOnGetUserDefinedLoanOfferAprFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x0d37ab00),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetUserDefinedLoanOfferAprFunction.selector
        });
    }
}

abstract contract Size$PreGetUserDefinedLoanOfferAprFunction {
    function preGetUserDefinedLoanOfferAprFunction(PreFunctionContext memory ctx, Size$GetUserDefinedLoanOfferAprFunctionInputs memory inputs) virtual external;

    function triggerPreGetUserDefinedLoanOfferAprFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x0d37ab00),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetUserDefinedLoanOfferAprFunction.selector
        });
    }
}

abstract contract Size$OnGetUserViewFunction {
    function onGetUserViewFunction(FunctionContext memory ctx, Size$GetUserViewFunctionInputs memory inputs, Size$GetUserViewFunctionOutputs memory outputs) virtual external;

    function triggerOnGetUserViewFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x5cbc51eb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetUserViewFunction.selector
        });
    }
}

abstract contract Size$PreGetUserViewFunction {
    function preGetUserViewFunction(PreFunctionContext memory ctx, Size$GetUserViewFunctionInputs memory inputs) virtual external;

    function triggerPreGetUserViewFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x5cbc51eb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetUserViewFunction.selector
        });
    }
}

abstract contract Size$OnGrantRoleFunction {
    function onGrantRoleFunction(FunctionContext memory ctx, Size$GrantRoleFunctionInputs memory inputs) virtual external;

    function triggerOnGrantRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x2f2ff15d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGrantRoleFunction.selector
        });
    }
}

abstract contract Size$PreGrantRoleFunction {
    function preGrantRoleFunction(PreFunctionContext memory ctx, Size$GrantRoleFunctionInputs memory inputs) virtual external;

    function triggerPreGrantRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x2f2ff15d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGrantRoleFunction.selector
        });
    }
}

abstract contract Size$OnHasRoleFunction {
    function onHasRoleFunction(FunctionContext memory ctx, Size$HasRoleFunctionInputs memory inputs, Size$HasRoleFunctionOutputs memory outputs) virtual external;

    function triggerOnHasRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x91d14854),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onHasRoleFunction.selector
        });
    }
}

abstract contract Size$PreHasRoleFunction {
    function preHasRoleFunction(PreFunctionContext memory ctx, Size$HasRoleFunctionInputs memory inputs) virtual external;

    function triggerPreHasRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x91d14854),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preHasRoleFunction.selector
        });
    }
}

abstract contract Size$OnInitializeFunction {
    function onInitializeFunction(FunctionContext memory ctx, Size$InitializeFunctionInputs memory inputs) virtual external;

    function triggerOnInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xf1bf35c3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInitializeFunction.selector
        });
    }
}

abstract contract Size$PreInitializeFunction {
    function preInitializeFunction(PreFunctionContext memory ctx, Size$InitializeFunctionInputs memory inputs) virtual external;

    function triggerPreInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xf1bf35c3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInitializeFunction.selector
        });
    }
}

abstract contract Size$OnIsUserDefinedBorrowOfferNullFunction {
    function onIsUserDefinedBorrowOfferNullFunction(FunctionContext memory ctx, Size$IsUserDefinedBorrowOfferNullFunctionInputs memory inputs, Size$IsUserDefinedBorrowOfferNullFunctionOutputs memory outputs) virtual external;

    function triggerOnIsUserDefinedBorrowOfferNullFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x0cfa9a49),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIsUserDefinedBorrowOfferNullFunction.selector
        });
    }
}

abstract contract Size$PreIsUserDefinedBorrowOfferNullFunction {
    function preIsUserDefinedBorrowOfferNullFunction(PreFunctionContext memory ctx, Size$IsUserDefinedBorrowOfferNullFunctionInputs memory inputs) virtual external;

    function triggerPreIsUserDefinedBorrowOfferNullFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x0cfa9a49),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIsUserDefinedBorrowOfferNullFunction.selector
        });
    }
}

abstract contract Size$OnIsUserDefinedLoanOfferNullFunction {
    function onIsUserDefinedLoanOfferNullFunction(FunctionContext memory ctx, Size$IsUserDefinedLoanOfferNullFunctionInputs memory inputs, Size$IsUserDefinedLoanOfferNullFunctionOutputs memory outputs) virtual external;

    function triggerOnIsUserDefinedLoanOfferNullFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x44ce7c30),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIsUserDefinedLoanOfferNullFunction.selector
        });
    }
}

abstract contract Size$PreIsUserDefinedLoanOfferNullFunction {
    function preIsUserDefinedLoanOfferNullFunction(PreFunctionContext memory ctx, Size$IsUserDefinedLoanOfferNullFunctionInputs memory inputs) virtual external;

    function triggerPreIsUserDefinedLoanOfferNullFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x44ce7c30),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIsUserDefinedLoanOfferNullFunction.selector
        });
    }
}

abstract contract Size$OnLiquidateFunction {
    function onLiquidateFunction(FunctionContext memory ctx, Size$LiquidateFunctionInputs memory inputs, Size$LiquidateFunctionOutputs memory outputs) virtual external;

    function triggerOnLiquidateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xe05001f5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLiquidateFunction.selector
        });
    }
}

abstract contract Size$PreLiquidateFunction {
    function preLiquidateFunction(PreFunctionContext memory ctx, Size$LiquidateFunctionInputs memory inputs) virtual external;

    function triggerPreLiquidateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xe05001f5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLiquidateFunction.selector
        });
    }
}

abstract contract Size$OnLiquidateWithReplacementFunction {
    function onLiquidateWithReplacementFunction(FunctionContext memory ctx, Size$LiquidateWithReplacementFunctionInputs memory inputs, Size$LiquidateWithReplacementFunctionOutputs memory outputs) virtual external;

    function triggerOnLiquidateWithReplacementFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xd927acef),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLiquidateWithReplacementFunction.selector
        });
    }
}

abstract contract Size$PreLiquidateWithReplacementFunction {
    function preLiquidateWithReplacementFunction(PreFunctionContext memory ctx, Size$LiquidateWithReplacementFunctionInputs memory inputs) virtual external;

    function triggerPreLiquidateWithReplacementFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xd927acef),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLiquidateWithReplacementFunction.selector
        });
    }
}

abstract contract Size$OnMulticallFunction {
    function onMulticallFunction(FunctionContext memory ctx, Size$MulticallFunctionInputs memory inputs, Size$MulticallFunctionOutputs memory outputs) virtual external;

    function triggerOnMulticallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xac9650d8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMulticallFunction.selector
        });
    }
}

abstract contract Size$PreMulticallFunction {
    function preMulticallFunction(PreFunctionContext memory ctx, Size$MulticallFunctionInputs memory inputs) virtual external;

    function triggerPreMulticallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xac9650d8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMulticallFunction.selector
        });
    }
}

abstract contract Size$OnOracleFunction {
    function onOracleFunction(FunctionContext memory ctx, Size$OracleFunctionOutputs memory outputs) virtual external;

    function triggerOnOracleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x7dc0d1d0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOracleFunction.selector
        });
    }
}

abstract contract Size$PreOracleFunction {
    function preOracleFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreOracleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x7dc0d1d0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preOracleFunction.selector
        });
    }
}

abstract contract Size$OnPartialRepayFunction {
    function onPartialRepayFunction(FunctionContext memory ctx, Size$PartialRepayFunctionInputs memory inputs) virtual external;

    function triggerOnPartialRepayFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x02f2855a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPartialRepayFunction.selector
        });
    }
}

abstract contract Size$PrePartialRepayFunction {
    function prePartialRepayFunction(PreFunctionContext memory ctx, Size$PartialRepayFunctionInputs memory inputs) virtual external;

    function triggerPrePartialRepayFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x02f2855a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePartialRepayFunction.selector
        });
    }
}

abstract contract Size$OnPauseFunction {
    function onPauseFunction(FunctionContext memory ctx) virtual external;

    function triggerOnPauseFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x8456cb59),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPauseFunction.selector
        });
    }
}

abstract contract Size$PrePauseFunction {
    function prePauseFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPrePauseFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x8456cb59),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePauseFunction.selector
        });
    }
}

abstract contract Size$OnPausedFunction {
    function onPausedFunction(FunctionContext memory ctx, Size$PausedFunctionOutputs memory outputs) virtual external;

    function triggerOnPausedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x5c975abb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPausedFunction.selector
        });
    }
}

abstract contract Size$PrePausedFunction {
    function prePausedFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPrePausedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x5c975abb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePausedFunction.selector
        });
    }
}

abstract contract Size$OnProxiableUuidFunction {
    function onProxiableUuidFunction(FunctionContext memory ctx, Size$ProxiableUuidFunctionOutputs memory outputs) virtual external;

    function triggerOnProxiableUuidFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x52d1902d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onProxiableUuidFunction.selector
        });
    }
}

abstract contract Size$PreProxiableUuidFunction {
    function preProxiableUuidFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreProxiableUuidFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x52d1902d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preProxiableUuidFunction.selector
        });
    }
}

abstract contract Size$OnReinitializeFunction {
    function onReinitializeFunction(FunctionContext memory ctx) virtual external;

    function triggerOnReinitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x6c2eb350),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onReinitializeFunction.selector
        });
    }
}

abstract contract Size$PreReinitializeFunction {
    function preReinitializeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreReinitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x6c2eb350),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preReinitializeFunction.selector
        });
    }
}

abstract contract Size$OnRenounceRoleFunction {
    function onRenounceRoleFunction(FunctionContext memory ctx, Size$RenounceRoleFunctionInputs memory inputs) virtual external;

    function triggerOnRenounceRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x36568abe),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRenounceRoleFunction.selector
        });
    }
}

abstract contract Size$PreRenounceRoleFunction {
    function preRenounceRoleFunction(PreFunctionContext memory ctx, Size$RenounceRoleFunctionInputs memory inputs) virtual external;

    function triggerPreRenounceRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x36568abe),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRenounceRoleFunction.selector
        });
    }
}

abstract contract Size$OnRepayFunction {
    function onRepayFunction(FunctionContext memory ctx, Size$RepayFunctionInputs memory inputs) virtual external;

    function triggerOnRepayFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x7f417c06),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRepayFunction.selector
        });
    }
}

abstract contract Size$PreRepayFunction {
    function preRepayFunction(PreFunctionContext memory ctx, Size$RepayFunctionInputs memory inputs) virtual external;

    function triggerPreRepayFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x7f417c06),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRepayFunction.selector
        });
    }
}

abstract contract Size$OnRevokeRoleFunction {
    function onRevokeRoleFunction(FunctionContext memory ctx, Size$RevokeRoleFunctionInputs memory inputs) virtual external;

    function triggerOnRevokeRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xd547741f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRevokeRoleFunction.selector
        });
    }
}

abstract contract Size$PreRevokeRoleFunction {
    function preRevokeRoleFunction(PreFunctionContext memory ctx, Size$RevokeRoleFunctionInputs memory inputs) virtual external;

    function triggerPreRevokeRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xd547741f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRevokeRoleFunction.selector
        });
    }
}

abstract contract Size$OnRiskConfigFunction {
    function onRiskConfigFunction(FunctionContext memory ctx, Size$RiskConfigFunctionOutputs memory outputs) virtual external;

    function triggerOnRiskConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x7c90a6ca),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRiskConfigFunction.selector
        });
    }
}

abstract contract Size$PreRiskConfigFunction {
    function preRiskConfigFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreRiskConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x7c90a6ca),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRiskConfigFunction.selector
        });
    }
}

abstract contract Size$OnSelfLiquidateFunction {
    function onSelfLiquidateFunction(FunctionContext memory ctx, Size$SelfLiquidateFunctionInputs memory inputs) virtual external;

    function triggerOnSelfLiquidateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xfd17174a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSelfLiquidateFunction.selector
        });
    }
}

abstract contract Size$PreSelfLiquidateFunction {
    function preSelfLiquidateFunction(PreFunctionContext memory ctx, Size$SelfLiquidateFunctionInputs memory inputs) virtual external;

    function triggerPreSelfLiquidateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xfd17174a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSelfLiquidateFunction.selector
        });
    }
}

abstract contract Size$OnSelfLiquidateOnBehalfOfFunction {
    function onSelfLiquidateOnBehalfOfFunction(FunctionContext memory ctx, Size$SelfLiquidateOnBehalfOfFunctionInputs memory inputs) virtual external;

    function triggerOnSelfLiquidateOnBehalfOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x536b9c79),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSelfLiquidateOnBehalfOfFunction.selector
        });
    }
}

abstract contract Size$PreSelfLiquidateOnBehalfOfFunction {
    function preSelfLiquidateOnBehalfOfFunction(PreFunctionContext memory ctx, Size$SelfLiquidateOnBehalfOfFunctionInputs memory inputs) virtual external;

    function triggerPreSelfLiquidateOnBehalfOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x536b9c79),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSelfLiquidateOnBehalfOfFunction.selector
        });
    }
}

abstract contract Size$OnSellCreditLimitFunction {
    function onSellCreditLimitFunction(FunctionContext memory ctx, Size$SellCreditLimitFunctionInputs memory inputs) virtual external;

    function triggerOnSellCreditLimitFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xccd8d4d1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSellCreditLimitFunction.selector
        });
    }
}

abstract contract Size$PreSellCreditLimitFunction {
    function preSellCreditLimitFunction(PreFunctionContext memory ctx, Size$SellCreditLimitFunctionInputs memory inputs) virtual external;

    function triggerPreSellCreditLimitFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xccd8d4d1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSellCreditLimitFunction.selector
        });
    }
}

abstract contract Size$OnSellCreditLimitOnBehalfOfFunction {
    function onSellCreditLimitOnBehalfOfFunction(FunctionContext memory ctx, Size$SellCreditLimitOnBehalfOfFunctionInputs memory inputs) virtual external;

    function triggerOnSellCreditLimitOnBehalfOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x4fd9a8a5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSellCreditLimitOnBehalfOfFunction.selector
        });
    }
}

abstract contract Size$PreSellCreditLimitOnBehalfOfFunction {
    function preSellCreditLimitOnBehalfOfFunction(PreFunctionContext memory ctx, Size$SellCreditLimitOnBehalfOfFunctionInputs memory inputs) virtual external;

    function triggerPreSellCreditLimitOnBehalfOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x4fd9a8a5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSellCreditLimitOnBehalfOfFunction.selector
        });
    }
}

abstract contract Size$OnSellCreditMarketFunction {
    function onSellCreditMarketFunction(FunctionContext memory ctx, Size$SellCreditMarketFunctionInputs memory inputs) virtual external;

    function triggerOnSellCreditMarketFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x8ea68d7e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSellCreditMarketFunction.selector
        });
    }
}

abstract contract Size$PreSellCreditMarketFunction {
    function preSellCreditMarketFunction(PreFunctionContext memory ctx, Size$SellCreditMarketFunctionInputs memory inputs) virtual external;

    function triggerPreSellCreditMarketFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x8ea68d7e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSellCreditMarketFunction.selector
        });
    }
}

abstract contract Size$OnSellCreditMarketOnBehalfOfFunction {
    function onSellCreditMarketOnBehalfOfFunction(FunctionContext memory ctx, Size$SellCreditMarketOnBehalfOfFunctionInputs memory inputs) virtual external;

    function triggerOnSellCreditMarketOnBehalfOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x3962a686),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSellCreditMarketOnBehalfOfFunction.selector
        });
    }
}

abstract contract Size$PreSellCreditMarketOnBehalfOfFunction {
    function preSellCreditMarketOnBehalfOfFunction(PreFunctionContext memory ctx, Size$SellCreditMarketOnBehalfOfFunctionInputs memory inputs) virtual external;

    function triggerPreSellCreditMarketOnBehalfOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x3962a686),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSellCreditMarketOnBehalfOfFunction.selector
        });
    }
}

abstract contract Size$OnSetCopyLimitOrderConfigsFunction {
    function onSetCopyLimitOrderConfigsFunction(FunctionContext memory ctx, Size$SetCopyLimitOrderConfigsFunctionInputs memory inputs) virtual external;

    function triggerOnSetCopyLimitOrderConfigsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xcb2e9bdc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetCopyLimitOrderConfigsFunction.selector
        });
    }
}

abstract contract Size$PreSetCopyLimitOrderConfigsFunction {
    function preSetCopyLimitOrderConfigsFunction(PreFunctionContext memory ctx, Size$SetCopyLimitOrderConfigsFunctionInputs memory inputs) virtual external;

    function triggerPreSetCopyLimitOrderConfigsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xcb2e9bdc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetCopyLimitOrderConfigsFunction.selector
        });
    }
}

abstract contract Size$OnSetCopyLimitOrderConfigsOnBehalfOfFunction {
    function onSetCopyLimitOrderConfigsOnBehalfOfFunction(FunctionContext memory ctx, Size$SetCopyLimitOrderConfigsOnBehalfOfFunctionInputs memory inputs) virtual external;

    function triggerOnSetCopyLimitOrderConfigsOnBehalfOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x7a32376a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetCopyLimitOrderConfigsOnBehalfOfFunction.selector
        });
    }
}

abstract contract Size$PreSetCopyLimitOrderConfigsOnBehalfOfFunction {
    function preSetCopyLimitOrderConfigsOnBehalfOfFunction(PreFunctionContext memory ctx, Size$SetCopyLimitOrderConfigsOnBehalfOfFunctionInputs memory inputs) virtual external;

    function triggerPreSetCopyLimitOrderConfigsOnBehalfOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x7a32376a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetCopyLimitOrderConfigsOnBehalfOfFunction.selector
        });
    }
}

abstract contract Size$OnSetUserConfigurationFunction {
    function onSetUserConfigurationFunction(FunctionContext memory ctx, Size$SetUserConfigurationFunctionInputs memory inputs) virtual external;

    function triggerOnSetUserConfigurationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x2e106f21),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetUserConfigurationFunction.selector
        });
    }
}

abstract contract Size$PreSetUserConfigurationFunction {
    function preSetUserConfigurationFunction(PreFunctionContext memory ctx, Size$SetUserConfigurationFunctionInputs memory inputs) virtual external;

    function triggerPreSetUserConfigurationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x2e106f21),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetUserConfigurationFunction.selector
        });
    }
}

abstract contract Size$OnSetUserConfigurationOnBehalfOfFunction {
    function onSetUserConfigurationOnBehalfOfFunction(FunctionContext memory ctx, Size$SetUserConfigurationOnBehalfOfFunctionInputs memory inputs) virtual external;

    function triggerOnSetUserConfigurationOnBehalfOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x134f3f96),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetUserConfigurationOnBehalfOfFunction.selector
        });
    }
}

abstract contract Size$PreSetUserConfigurationOnBehalfOfFunction {
    function preSetUserConfigurationOnBehalfOfFunction(PreFunctionContext memory ctx, Size$SetUserConfigurationOnBehalfOfFunctionInputs memory inputs) virtual external;

    function triggerPreSetUserConfigurationOnBehalfOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x134f3f96),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetUserConfigurationOnBehalfOfFunction.selector
        });
    }
}

abstract contract Size$OnSetVaultFunction {
    function onSetVaultFunction(FunctionContext memory ctx, Size$SetVaultFunctionInputs memory inputs) virtual external;

    function triggerOnSetVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x510aeb39),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetVaultFunction.selector
        });
    }
}

abstract contract Size$PreSetVaultFunction {
    function preSetVaultFunction(PreFunctionContext memory ctx, Size$SetVaultFunctionInputs memory inputs) virtual external;

    function triggerPreSetVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x510aeb39),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetVaultFunction.selector
        });
    }
}

abstract contract Size$OnSetVaultOnBehalfOfFunction {
    function onSetVaultOnBehalfOfFunction(FunctionContext memory ctx, Size$SetVaultOnBehalfOfFunctionInputs memory inputs) virtual external;

    function triggerOnSetVaultOnBehalfOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x75829a36),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetVaultOnBehalfOfFunction.selector
        });
    }
}

abstract contract Size$PreSetVaultOnBehalfOfFunction {
    function preSetVaultOnBehalfOfFunction(PreFunctionContext memory ctx, Size$SetVaultOnBehalfOfFunctionInputs memory inputs) virtual external;

    function triggerPreSetVaultOnBehalfOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x75829a36),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetVaultOnBehalfOfFunction.selector
        });
    }
}

abstract contract Size$OnSupportsInterfaceFunction {
    function onSupportsInterfaceFunction(FunctionContext memory ctx, Size$SupportsInterfaceFunctionInputs memory inputs, Size$SupportsInterfaceFunctionOutputs memory outputs) virtual external;

    function triggerOnSupportsInterfaceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x01ffc9a7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSupportsInterfaceFunction.selector
        });
    }
}

abstract contract Size$PreSupportsInterfaceFunction {
    function preSupportsInterfaceFunction(PreFunctionContext memory ctx, Size$SupportsInterfaceFunctionInputs memory inputs) virtual external;

    function triggerPreSupportsInterfaceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x01ffc9a7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSupportsInterfaceFunction.selector
        });
    }
}

abstract contract Size$OnUnpauseFunction {
    function onUnpauseFunction(FunctionContext memory ctx) virtual external;

    function triggerOnUnpauseFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x3f4ba83a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUnpauseFunction.selector
        });
    }
}

abstract contract Size$PreUnpauseFunction {
    function preUnpauseFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreUnpauseFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x3f4ba83a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preUnpauseFunction.selector
        });
    }
}

abstract contract Size$OnUpdateConfigFunction {
    function onUpdateConfigFunction(FunctionContext memory ctx, Size$UpdateConfigFunctionInputs memory inputs) virtual external;

    function triggerOnUpdateConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x0317b9df),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUpdateConfigFunction.selector
        });
    }
}

abstract contract Size$PreUpdateConfigFunction {
    function preUpdateConfigFunction(PreFunctionContext memory ctx, Size$UpdateConfigFunctionInputs memory inputs) virtual external;

    function triggerPreUpdateConfigFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x0317b9df),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preUpdateConfigFunction.selector
        });
    }
}

abstract contract Size$OnUpgradeToAndCallFunction {
    function onUpgradeToAndCallFunction(FunctionContext memory ctx, Size$UpgradeToAndCallFunctionInputs memory inputs) virtual external;

    function triggerOnUpgradeToAndCallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x4f1ef286),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUpgradeToAndCallFunction.selector
        });
    }
}

abstract contract Size$PreUpgradeToAndCallFunction {
    function preUpgradeToAndCallFunction(PreFunctionContext memory ctx, Size$UpgradeToAndCallFunctionInputs memory inputs) virtual external;

    function triggerPreUpgradeToAndCallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x4f1ef286),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preUpgradeToAndCallFunction.selector
        });
    }
}

abstract contract Size$OnVersionFunction {
    function onVersionFunction(FunctionContext memory ctx, Size$VersionFunctionOutputs memory outputs) virtual external;

    function triggerOnVersionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x54fd4d50),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onVersionFunction.selector
        });
    }
}

abstract contract Size$PreVersionFunction {
    function preVersionFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreVersionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x54fd4d50),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preVersionFunction.selector
        });
    }
}

abstract contract Size$OnWithdrawFunction {
    function onWithdrawFunction(FunctionContext memory ctx, Size$WithdrawFunctionInputs memory inputs) virtual external;

    function triggerOnWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x2b4c9a20),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onWithdrawFunction.selector
        });
    }
}

abstract contract Size$PreWithdrawFunction {
    function preWithdrawFunction(PreFunctionContext memory ctx, Size$WithdrawFunctionInputs memory inputs) virtual external;

    function triggerPreWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0x2b4c9a20),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preWithdrawFunction.selector
        });
    }
}

abstract contract Size$OnWithdrawOnBehalfOfFunction {
    function onWithdrawOnBehalfOfFunction(FunctionContext memory ctx, Size$WithdrawOnBehalfOfFunctionInputs memory inputs) virtual external;

    function triggerOnWithdrawOnBehalfOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xf54ae18b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onWithdrawOnBehalfOfFunction.selector
        });
    }
}

abstract contract Size$PreWithdrawOnBehalfOfFunction {
    function preWithdrawOnBehalfOfFunction(PreFunctionContext memory ctx, Size$WithdrawOnBehalfOfFunctionInputs memory inputs) virtual external;

    function triggerPreWithdrawOnBehalfOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "Size",
            selector: bytes4(0xf54ae18b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preWithdrawOnBehalfOfFunction.selector
        });
    }
}


struct Size$EmitAllEvents$BuyCreditLimit {
  address sender;
  address onBehalfOf;
  uint256 maxDueDate;
  uint256[] curveRelativeTimeTenors;
  int256[] curveRelativeTimeAprs;
  uint256[] curveRelativeTimeMarketRateMultipliers;
}

struct Size$EmitAllEvents$BuyCreditMarket {
  address sender;
  address lender;
  address borrower;
  address recipient;
  uint256 creditPositionId;
  uint256 amount;
  uint256 tenor;
  uint256 deadline;
  uint256 minAPR;
  bool exactAmountIn;
  uint256 collectionId;
  address rateProvider;
}

struct Size$EmitAllEvents$Claim {
  address sender;
  uint256 creditPositionId;
}

struct Size$EmitAllEvents$Compensate {
  address sender;
  address onBehalfOf;
  uint256 creditPositionWithDebtToRepayId;
  uint256 creditPositionToCompensateId;
  uint256 amount;
}

struct Size$EmitAllEvents$CreateCreditPosition {
  uint256 creditPositionId;
  address lender;
  uint256 debtPositionId;
  uint256 exitPositionId;
  uint256 credit;
  bool forSale;
}

struct Size$EmitAllEvents$CreateDebtPosition {
  uint256 debtPositionId;
  address borrower;
  address lender;
  uint256 futureValue;
  uint256 dueDate;
}

struct Size$EmitAllEvents$Deposit {
  address sender;
  address onBehalfOf;
  address token;
  address to;
  uint256 amount;
}

struct Size$EmitAllEvents$Initialize {
  address sender;
}

struct Size$EmitAllEvents$Initialized {
  uint64 version;
}

struct Size$EmitAllEvents$Liquidate {
  address sender;
  uint256 debtPositionId;
  uint256 minimumCollateralProfit;
  uint256 deadline;
  uint256 collateralRatio;
  uint8 loanStatus;
}

struct Size$EmitAllEvents$LiquidateWithReplacement {
  address sender;
  uint256 debtPositionId;
  address borrower;
  uint256 minimumCollateralProfit;
  uint256 deadline;
  uint256 minAPR;
  uint256 collectionId;
  address rateProvider;
}

struct Size$EmitAllEvents$PartialRepay {
  address sender;
  uint256 creditPositionWithDebtToRepayId;
  uint256 amount;
  address borrower;
}

struct Size$EmitAllEvents$Paused {
  address account;
}

struct Size$EmitAllEvents$Repay {
  address sender;
  uint256 debtPositionId;
  address borrower;
}

struct Size$EmitAllEvents$RoleAdminChanged {
  bytes32 role;
  bytes32 previousAdminRole;
  bytes32 newAdminRole;
}

struct Size$EmitAllEvents$RoleGranted {
  bytes32 role;
  address account;
  address sender;
}

struct Size$EmitAllEvents$RoleRevoked {
  bytes32 role;
  address account;
  address sender;
}

struct Size$EmitAllEvents$SelfLiquidate {
  address sender;
  address lender;
  uint256 creditPositionId;
  address recipient;
}

struct Size$EmitAllEvents$SellCreditLimit {
  address sender;
  address onBehalfOf;
  uint256 maxDueDate;
  uint256[] curveRelativeTimeTenors;
  int256[] curveRelativeTimeAprs;
  uint256[] curveRelativeTimeMarketRateMultipliers;
}

struct Size$EmitAllEvents$SellCreditMarket {
  address sender;
  address borrower;
  address lender;
  address recipient;
  uint256 creditPositionId;
  uint256 amount;
  uint256 tenor;
  uint256 deadline;
  uint256 maxAPR;
  bool exactAmountIn;
  uint256 collectionId;
  address rateProvider;
}

struct Size$EmitAllEvents$SetCopyLimitOrderConfigs {
  address sender;
  address onBehalfOf;
  uint256 minTenorLoanOffer;
  uint256 maxTenorLoanOffer;
  uint256 minAPRLoanOffer;
  uint256 maxAPRLoanOffer;
  int256 offsetAPRLoanOffer;
  uint256 minTenorBorrowOffer;
  uint256 maxTenorBorrowOffer;
  uint256 minAPRBorrowOffer;
  uint256 maxAPRBorrowOffer;
  int256 offsetAPRBorrowOffer;
}

struct Size$EmitAllEvents$SetUserConfiguration {
  address sender;
  address onBehalfOf;
  uint256 openingLimitBorrowCR;
  bool allCreditPositionsForSaleDisabled;
  bool creditPositionIdsForSale;
  uint256[] creditPositionIds;
}

struct Size$EmitAllEvents$SetVault {
  address sender;
  address onBehalfOf;
  address vault;
  bool forfeitOldShares;
}

struct Size$EmitAllEvents$SwapData {
  uint256 creditPositionId;
  address borrower;
  address lender;
  uint256 credit;
  uint256 cashIn;
  uint256 cashOut;
  uint256 swapFee;
  uint256 fragmentationFee;
  uint256 tenor;
}

struct Size$EmitAllEvents$Unpaused {
  address account;
}

struct Size$EmitAllEvents$UpdateConfig {
  address sender;
  bytes32 key;
  uint256 value;
}

struct Size$EmitAllEvents$UpdateCreditPosition {
  uint256 creditPositionId;
  address lender;
  uint256 credit;
  bool forSale;
}

struct Size$EmitAllEvents$UpdateDebtPosition {
  uint256 debtPositionId;
  address borrower;
  uint256 futureValue;
  uint256 liquidityIndexAtRepayment;
}

struct Size$EmitAllEvents$Upgraded {
  address implementation;
}

struct Size$EmitAllEvents$VariablePoolBorrowRateUpdated {
  address sender;
  uint128 oldBorrowRate;
  uint128 newBorrowRate;
}

struct Size$EmitAllEvents$Withdraw {
  address sender;
  address onBehalfOf;
  address token;
  address to;
  uint256 amount;
}

contract Size$EmitAllEvents is
  Size$OnBuyCreditLimitEvent,
Size$OnBuyCreditMarketEvent,
Size$OnClaimEvent,
Size$OnCompensateEvent,
Size$OnCreateCreditPositionEvent,
Size$OnCreateDebtPositionEvent,
Size$OnDepositEvent,
Size$OnInitializeEvent,
Size$OnInitializedEvent,
Size$OnLiquidateEvent,
Size$OnLiquidateWithReplacementEvent,
Size$OnPartialRepayEvent,
Size$OnPausedEvent,
Size$OnRepayEvent,
Size$OnRoleAdminChangedEvent,
Size$OnRoleGrantedEvent,
Size$OnRoleRevokedEvent,
Size$OnSelfLiquidateEvent,
Size$OnSellCreditLimitEvent,
Size$OnSellCreditMarketEvent,
Size$OnSetCopyLimitOrderConfigsEvent,
Size$OnSetUserConfigurationEvent,
Size$OnSetVaultEvent,
Size$OnSwapDataEvent,
Size$OnUnpausedEvent,
Size$OnUpdateConfigEvent,
Size$OnUpdateCreditPositionEvent,
Size$OnUpdateDebtPositionEvent,
Size$OnUpgradedEvent,
Size$OnVariablePoolBorrowRateUpdatedEvent,
Size$OnWithdrawEvent
{
  event BuyCreditLimit(Size$EmitAllEvents$BuyCreditLimit);
  event BuyCreditMarket(Size$EmitAllEvents$BuyCreditMarket);
  event Claim(Size$EmitAllEvents$Claim);
  event Compensate(Size$EmitAllEvents$Compensate);
  event CreateCreditPosition(Size$EmitAllEvents$CreateCreditPosition);
  event CreateDebtPosition(Size$EmitAllEvents$CreateDebtPosition);
  event Deposit(Size$EmitAllEvents$Deposit);
  event Initialize(Size$EmitAllEvents$Initialize);
  event Initialized(Size$EmitAllEvents$Initialized);
  event Liquidate(Size$EmitAllEvents$Liquidate);
  event LiquidateWithReplacement(Size$EmitAllEvents$LiquidateWithReplacement);
  event PartialRepay(Size$EmitAllEvents$PartialRepay);
  event Paused(Size$EmitAllEvents$Paused);
  event Repay(Size$EmitAllEvents$Repay);
  event RoleAdminChanged(Size$EmitAllEvents$RoleAdminChanged);
  event RoleGranted(Size$EmitAllEvents$RoleGranted);
  event RoleRevoked(Size$EmitAllEvents$RoleRevoked);
  event SelfLiquidate(Size$EmitAllEvents$SelfLiquidate);
  event SellCreditLimit(Size$EmitAllEvents$SellCreditLimit);
  event SellCreditMarket(Size$EmitAllEvents$SellCreditMarket);
  event SetCopyLimitOrderConfigs(Size$EmitAllEvents$SetCopyLimitOrderConfigs);
  event SetUserConfiguration(Size$EmitAllEvents$SetUserConfiguration);
  event SetVault(Size$EmitAllEvents$SetVault);
  event SwapData(Size$EmitAllEvents$SwapData);
  event Unpaused(Size$EmitAllEvents$Unpaused);
  event UpdateConfig(Size$EmitAllEvents$UpdateConfig);
  event UpdateCreditPosition(Size$EmitAllEvents$UpdateCreditPosition);
  event UpdateDebtPosition(Size$EmitAllEvents$UpdateDebtPosition);
  event Upgraded(Size$EmitAllEvents$Upgraded);
  event VariablePoolBorrowRateUpdated(Size$EmitAllEvents$VariablePoolBorrowRateUpdated);
  event Withdraw(Size$EmitAllEvents$Withdraw);

  function onBuyCreditLimitEvent(EventContext memory ctx, Size$BuyCreditLimitEventParams memory inputs) virtual external override {
    emit BuyCreditLimit(Size$EmitAllEvents$BuyCreditLimit(inputs.sender, inputs.onBehalfOf, inputs.maxDueDate, inputs.curveRelativeTimeTenors, inputs.curveRelativeTimeAprs, inputs.curveRelativeTimeMarketRateMultipliers));
  }
function onBuyCreditMarketEvent(EventContext memory ctx, Size$BuyCreditMarketEventParams memory inputs) virtual external override {
    emit BuyCreditMarket(Size$EmitAllEvents$BuyCreditMarket(inputs.sender, inputs.lender, inputs.borrower, inputs.recipient, inputs.creditPositionId, inputs.amount, inputs.tenor, inputs.deadline, inputs.minAPR, inputs.exactAmountIn, inputs.collectionId, inputs.rateProvider));
  }
function onClaimEvent(EventContext memory ctx, Size$ClaimEventParams memory inputs) virtual external override {
    emit Claim(Size$EmitAllEvents$Claim(inputs.sender, inputs.creditPositionId));
  }
function onCompensateEvent(EventContext memory ctx, Size$CompensateEventParams memory inputs) virtual external override {
    emit Compensate(Size$EmitAllEvents$Compensate(inputs.sender, inputs.onBehalfOf, inputs.creditPositionWithDebtToRepayId, inputs.creditPositionToCompensateId, inputs.amount));
  }
function onCreateCreditPositionEvent(EventContext memory ctx, Size$CreateCreditPositionEventParams memory inputs) virtual external override {
    emit CreateCreditPosition(Size$EmitAllEvents$CreateCreditPosition(inputs.creditPositionId, inputs.lender, inputs.debtPositionId, inputs.exitPositionId, inputs.credit, inputs.forSale));
  }
function onCreateDebtPositionEvent(EventContext memory ctx, Size$CreateDebtPositionEventParams memory inputs) virtual external override {
    emit CreateDebtPosition(Size$EmitAllEvents$CreateDebtPosition(inputs.debtPositionId, inputs.borrower, inputs.lender, inputs.futureValue, inputs.dueDate));
  }
function onDepositEvent(EventContext memory ctx, Size$DepositEventParams memory inputs) virtual external override {
    emit Deposit(Size$EmitAllEvents$Deposit(inputs.sender, inputs.onBehalfOf, inputs.token, inputs.to, inputs.amount));
  }
function onInitializeEvent(EventContext memory ctx, Size$InitializeEventParams memory inputs) virtual external override {
    emit Initialize(Size$EmitAllEvents$Initialize(inputs.sender));
  }
function onInitializedEvent(EventContext memory ctx, Size$InitializedEventParams memory inputs) virtual external override {
    emit Initialized(Size$EmitAllEvents$Initialized(inputs.version));
  }
function onLiquidateEvent(EventContext memory ctx, Size$LiquidateEventParams memory inputs) virtual external override {
    emit Liquidate(Size$EmitAllEvents$Liquidate(inputs.sender, inputs.debtPositionId, inputs.minimumCollateralProfit, inputs.deadline, inputs.collateralRatio, inputs.loanStatus));
  }
function onLiquidateWithReplacementEvent(EventContext memory ctx, Size$LiquidateWithReplacementEventParams memory inputs) virtual external override {
    emit LiquidateWithReplacement(Size$EmitAllEvents$LiquidateWithReplacement(inputs.sender, inputs.debtPositionId, inputs.borrower, inputs.minimumCollateralProfit, inputs.deadline, inputs.minAPR, inputs.collectionId, inputs.rateProvider));
  }
function onPartialRepayEvent(EventContext memory ctx, Size$PartialRepayEventParams memory inputs) virtual external override {
    emit PartialRepay(Size$EmitAllEvents$PartialRepay(inputs.sender, inputs.creditPositionWithDebtToRepayId, inputs.amount, inputs.borrower));
  }
function onPausedEvent(EventContext memory ctx, Size$PausedEventParams memory inputs) virtual external override {
    emit Paused(Size$EmitAllEvents$Paused(inputs.account));
  }
function onRepayEvent(EventContext memory ctx, Size$RepayEventParams memory inputs) virtual external override {
    emit Repay(Size$EmitAllEvents$Repay(inputs.sender, inputs.debtPositionId, inputs.borrower));
  }
function onRoleAdminChangedEvent(EventContext memory ctx, Size$RoleAdminChangedEventParams memory inputs) virtual external override {
    emit RoleAdminChanged(Size$EmitAllEvents$RoleAdminChanged(inputs.role, inputs.previousAdminRole, inputs.newAdminRole));
  }
function onRoleGrantedEvent(EventContext memory ctx, Size$RoleGrantedEventParams memory inputs) virtual external override {
    emit RoleGranted(Size$EmitAllEvents$RoleGranted(inputs.role, inputs.account, inputs.sender));
  }
function onRoleRevokedEvent(EventContext memory ctx, Size$RoleRevokedEventParams memory inputs) virtual external override {
    emit RoleRevoked(Size$EmitAllEvents$RoleRevoked(inputs.role, inputs.account, inputs.sender));
  }
function onSelfLiquidateEvent(EventContext memory ctx, Size$SelfLiquidateEventParams memory inputs) virtual external override {
    emit SelfLiquidate(Size$EmitAllEvents$SelfLiquidate(inputs.sender, inputs.lender, inputs.creditPositionId, inputs.recipient));
  }
function onSellCreditLimitEvent(EventContext memory ctx, Size$SellCreditLimitEventParams memory inputs) virtual external override {
    emit SellCreditLimit(Size$EmitAllEvents$SellCreditLimit(inputs.sender, inputs.onBehalfOf, inputs.maxDueDate, inputs.curveRelativeTimeTenors, inputs.curveRelativeTimeAprs, inputs.curveRelativeTimeMarketRateMultipliers));
  }
function onSellCreditMarketEvent(EventContext memory ctx, Size$SellCreditMarketEventParams memory inputs) virtual external override {
    emit SellCreditMarket(Size$EmitAllEvents$SellCreditMarket(inputs.sender, inputs.borrower, inputs.lender, inputs.recipient, inputs.creditPositionId, inputs.amount, inputs.tenor, inputs.deadline, inputs.maxAPR, inputs.exactAmountIn, inputs.collectionId, inputs.rateProvider));
  }
function onSetCopyLimitOrderConfigsEvent(EventContext memory ctx, Size$SetCopyLimitOrderConfigsEventParams memory inputs) virtual external override {
    emit SetCopyLimitOrderConfigs(Size$EmitAllEvents$SetCopyLimitOrderConfigs(inputs.sender, inputs.onBehalfOf, inputs.minTenorLoanOffer, inputs.maxTenorLoanOffer, inputs.minAPRLoanOffer, inputs.maxAPRLoanOffer, inputs.offsetAPRLoanOffer, inputs.minTenorBorrowOffer, inputs.maxTenorBorrowOffer, inputs.minAPRBorrowOffer, inputs.maxAPRBorrowOffer, inputs.offsetAPRBorrowOffer));
  }
function onSetUserConfigurationEvent(EventContext memory ctx, Size$SetUserConfigurationEventParams memory inputs) virtual external override {
    emit SetUserConfiguration(Size$EmitAllEvents$SetUserConfiguration(inputs.sender, inputs.onBehalfOf, inputs.openingLimitBorrowCR, inputs.allCreditPositionsForSaleDisabled, inputs.creditPositionIdsForSale, inputs.creditPositionIds));
  }
function onSetVaultEvent(EventContext memory ctx, Size$SetVaultEventParams memory inputs) virtual external override {
    emit SetVault(Size$EmitAllEvents$SetVault(inputs.sender, inputs.onBehalfOf, inputs.vault, inputs.forfeitOldShares));
  }
function onSwapDataEvent(EventContext memory ctx, Size$SwapDataEventParams memory inputs) virtual external override {
    emit SwapData(Size$EmitAllEvents$SwapData(inputs.creditPositionId, inputs.borrower, inputs.lender, inputs.credit, inputs.cashIn, inputs.cashOut, inputs.swapFee, inputs.fragmentationFee, inputs.tenor));
  }
function onUnpausedEvent(EventContext memory ctx, Size$UnpausedEventParams memory inputs) virtual external override {
    emit Unpaused(Size$EmitAllEvents$Unpaused(inputs.account));
  }
function onUpdateConfigEvent(EventContext memory ctx, Size$UpdateConfigEventParams memory inputs) virtual external override {
    emit UpdateConfig(Size$EmitAllEvents$UpdateConfig(inputs.sender, inputs.key, inputs.value));
  }
function onUpdateCreditPositionEvent(EventContext memory ctx, Size$UpdateCreditPositionEventParams memory inputs) virtual external override {
    emit UpdateCreditPosition(Size$EmitAllEvents$UpdateCreditPosition(inputs.creditPositionId, inputs.lender, inputs.credit, inputs.forSale));
  }
function onUpdateDebtPositionEvent(EventContext memory ctx, Size$UpdateDebtPositionEventParams memory inputs) virtual external override {
    emit UpdateDebtPosition(Size$EmitAllEvents$UpdateDebtPosition(inputs.debtPositionId, inputs.borrower, inputs.futureValue, inputs.liquidityIndexAtRepayment));
  }
function onUpgradedEvent(EventContext memory ctx, Size$UpgradedEventParams memory inputs) virtual external override {
    emit Upgraded(Size$EmitAllEvents$Upgraded(inputs.implementation));
  }
function onVariablePoolBorrowRateUpdatedEvent(EventContext memory ctx, Size$VariablePoolBorrowRateUpdatedEventParams memory inputs) virtual external override {
    emit VariablePoolBorrowRateUpdated(Size$EmitAllEvents$VariablePoolBorrowRateUpdated(inputs.sender, inputs.oldBorrowRate, inputs.newBorrowRate));
  }
function onWithdrawEvent(EventContext memory ctx, Size$WithdrawEventParams memory inputs) virtual external override {
    emit Withdraw(Size$EmitAllEvents$Withdraw(inputs.sender, inputs.onBehalfOf, inputs.token, inputs.to, inputs.amount));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](31);
    triggers[0] = this.triggerOnBuyCreditLimitEvent();
    triggers[1] = this.triggerOnBuyCreditMarketEvent();
    triggers[2] = this.triggerOnClaimEvent();
    triggers[3] = this.triggerOnCompensateEvent();
    triggers[4] = this.triggerOnCreateCreditPositionEvent();
    triggers[5] = this.triggerOnCreateDebtPositionEvent();
    triggers[6] = this.triggerOnDepositEvent();
    triggers[7] = this.triggerOnInitializeEvent();
    triggers[8] = this.triggerOnInitializedEvent();
    triggers[9] = this.triggerOnLiquidateEvent();
    triggers[10] = this.triggerOnLiquidateWithReplacementEvent();
    triggers[11] = this.triggerOnPartialRepayEvent();
    triggers[12] = this.triggerOnPausedEvent();
    triggers[13] = this.triggerOnRepayEvent();
    triggers[14] = this.triggerOnRoleAdminChangedEvent();
    triggers[15] = this.triggerOnRoleGrantedEvent();
    triggers[16] = this.triggerOnRoleRevokedEvent();
    triggers[17] = this.triggerOnSelfLiquidateEvent();
    triggers[18] = this.triggerOnSellCreditLimitEvent();
    triggers[19] = this.triggerOnSellCreditMarketEvent();
    triggers[20] = this.triggerOnSetCopyLimitOrderConfigsEvent();
    triggers[21] = this.triggerOnSetUserConfigurationEvent();
    triggers[22] = this.triggerOnSetVaultEvent();
    triggers[23] = this.triggerOnSwapDataEvent();
    triggers[24] = this.triggerOnUnpausedEvent();
    triggers[25] = this.triggerOnUpdateConfigEvent();
    triggers[26] = this.triggerOnUpdateCreditPositionEvent();
    triggers[27] = this.triggerOnUpdateDebtPositionEvent();
    triggers[28] = this.triggerOnUpgradedEvent();
    triggers[29] = this.triggerOnVariablePoolBorrowRateUpdatedEvent();
    triggers[30] = this.triggerOnWithdrawEvent();
    return triggers;
  }
}