// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import {ISizeView} from "lib/size-solidity/src/market/interfaces/ISizeView.sol";

/// Index calls to any Size functions
/// To hook on more function calls, specify that this listener should implement that interface and follow the compiler errors.
contract SizeListener is Size$EmitAllEvents {
    /// Emitted events are indexed.
    /// To change the data which is indexed, modify the event or add more events.
    event IsLiquidatable(address user, bool isLiquidatable);

    modifier emitIsLiquidatable(EventContext memory ctx, address user) {
        _;
        emit IsLiquidatable(user, _isLiquidatable(ctx, user));
    }

    function _isLiquidatable(EventContext memory ctx, address user) internal view returns (bool) {
        return ISizeView(ctx.txn.call.callee()).collateralRatio(user) < ISizeView(ctx.txn.call.callee()).riskConfig().crLiquidation;
    }

    function onBuyCreditLimitEvent(EventContext memory ctx, Size$BuyCreditLimitEventParams memory inputs)
        external
        virtual
        override
    {
        super.onBuyCreditLimitEvent(ctx, inputs);
    }

    function onBuyCreditMarketEvent(EventContext memory ctx, Size$BuyCreditMarketEventParams memory inputs)
        external
        virtual
        override
    {
        super.onBuyCreditMarketEvent(ctx, inputs);
    }

    function onClaimEvent(EventContext memory ctx, Size$ClaimEventParams memory inputs) external virtual override {
        super.onClaimEvent(ctx, inputs);
    }

    function onCompensateEvent(EventContext memory ctx, Size$CompensateEventParams memory inputs)
        external
        virtual
        override
    {
        super.onCompensateEvent(ctx, inputs);
    }

    function onCreateCreditPositionEvent(EventContext memory ctx, Size$CreateCreditPositionEventParams memory inputs)
        external
        virtual
        override
    {
        super.onCreateCreditPositionEvent(ctx, inputs);
    }

    function onCreateDebtPositionEvent(EventContext memory ctx, Size$CreateDebtPositionEventParams memory inputs)
        external
        virtual
        override
    {
        super.onCreateDebtPositionEvent(ctx, inputs);
    }

    function onDepositEvent(EventContext memory ctx, Size$DepositEventParams memory inputs) external virtual override {
        super.onDepositEvent(ctx, inputs);
    }

    function onInitializeEvent(EventContext memory ctx, Size$InitializeEventParams memory inputs)
        external
        virtual
        override
    {
        super.onInitializeEvent(ctx, inputs);
    }

    function onInitializedEvent(EventContext memory ctx, Size$InitializedEventParams memory inputs)
        external
        virtual
        override
    {
        super.onInitializedEvent(ctx, inputs);
    }

    function onLiquidateEvent(EventContext memory ctx, Size$LiquidateEventParams memory inputs)
        external
        virtual
        override
    {
        super.onLiquidateEvent(ctx, inputs);
    }

    function onLiquidateWithReplacementEvent(
        EventContext memory ctx,
        Size$LiquidateWithReplacementEventParams memory inputs
    ) external virtual override {
        super.onLiquidateWithReplacementEvent(ctx, inputs);
    }

    function onPartialRepayEvent(EventContext memory ctx, Size$PartialRepayEventParams memory inputs)
        external
        virtual
        override
    {
        super.onPartialRepayEvent(ctx, inputs);
    }

    function onPausedEvent(EventContext memory ctx, Size$PausedEventParams memory inputs) external virtual override {
        super.onPausedEvent(ctx, inputs);
    }

    function onRepayEvent(EventContext memory ctx, Size$RepayEventParams memory inputs) external virtual override {
        super.onRepayEvent(ctx, inputs);
    }

    function onRoleAdminChangedEvent(EventContext memory ctx, Size$RoleAdminChangedEventParams memory inputs)
        external
        virtual
        override
    {
        super.onRoleAdminChangedEvent(ctx, inputs);
    }

    function onRoleGrantedEvent(EventContext memory ctx, Size$RoleGrantedEventParams memory inputs)
        external
        virtual
        override
    {
        super.onRoleGrantedEvent(ctx, inputs);
    }

    function onRoleRevokedEvent(EventContext memory ctx, Size$RoleRevokedEventParams memory inputs)
        external
        virtual
        override
    {
        super.onRoleRevokedEvent(ctx, inputs);
    }

    function onSelfLiquidateEvent(EventContext memory ctx, Size$SelfLiquidateEventParams memory inputs)
        external
        virtual
        override
    {
        super.onSelfLiquidateEvent(ctx, inputs);
    }

    function onSellCreditLimitEvent(EventContext memory ctx, Size$SellCreditLimitEventParams memory inputs)
        external
        virtual
        override
    {
        super.onSellCreditLimitEvent(ctx, inputs);
    }

    function onSellCreditMarketEvent(EventContext memory ctx, Size$SellCreditMarketEventParams memory inputs)
        external
        virtual
        override
    {
        super.onSellCreditMarketEvent(ctx, inputs);
    }

    function onSetCopyLimitOrderConfigsEvent(
        EventContext memory ctx,
        Size$SetCopyLimitOrderConfigsEventParams memory inputs
    ) external virtual override {
        super.onSetCopyLimitOrderConfigsEvent(ctx, inputs);
    }

    function onSetUserConfigurationEvent(EventContext memory ctx, Size$SetUserConfigurationEventParams memory inputs)
        external
        virtual
        override
    {
        super.onSetUserConfigurationEvent(ctx, inputs);
    }

    function onSetVaultEvent(EventContext memory ctx, Size$SetVaultEventParams memory inputs)
        external
        virtual
        override
    {
        super.onSetVaultEvent(ctx, inputs);
    }

    function onSwapDataEvent(EventContext memory ctx, Size$SwapDataEventParams memory inputs)
        external
        virtual
        override
    {
        super.onSwapDataEvent(ctx, inputs);
    }

    function onUnpausedEvent(EventContext memory ctx, Size$UnpausedEventParams memory inputs)
        external
        virtual
        override
    {
        super.onUnpausedEvent(ctx, inputs);
    }

    function onUpdateConfigEvent(EventContext memory ctx, Size$UpdateConfigEventParams memory inputs)
        external
        virtual
        override
    {
        super.onUpdateConfigEvent(ctx, inputs);
    }

    function onUpdateCreditPositionEvent(EventContext memory ctx, Size$UpdateCreditPositionEventParams memory inputs)
        external
        virtual
        override
    {
        super.onUpdateCreditPositionEvent(ctx, inputs);
    }

    function onUpdateDebtPositionEvent(EventContext memory ctx, Size$UpdateDebtPositionEventParams memory inputs)
        external
        virtual
        override
    {
        super.onUpdateDebtPositionEvent(ctx, inputs);
    }

    function onUpgradedEvent(EventContext memory ctx, Size$UpgradedEventParams memory inputs)
        external
        virtual
        override
    {
        super.onUpgradedEvent(ctx, inputs);
    }

    function onVariablePoolBorrowRateUpdatedEvent(
        EventContext memory ctx,
        Size$VariablePoolBorrowRateUpdatedEventParams memory inputs
    ) external virtual override {
        super.onVariablePoolBorrowRateUpdatedEvent(ctx, inputs);
    }

    function onWithdrawEvent(EventContext memory ctx, Size$WithdrawEventParams memory inputs)
        external
        virtual
        override
    {
        super.onWithdrawEvent(ctx, inputs);
    }
}
