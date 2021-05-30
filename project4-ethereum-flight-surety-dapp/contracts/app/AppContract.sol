// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./base/BaseAppContract.sol";
import "../shared/BaseSuretyData.sol";
import "../shared/PayableContract.sol";

abstract contract AppContract is BaseAppContract, PayableContract {

    BaseSuretyData private suretyDataContract;

    /**
    * API
    */

    constructor(address suretyDataContractAddress) {
        suretyDataContract = BaseSuretyData(suretyDataContractAddress);
    }

    function getSuretyDataContract() internal view override returns (BaseSuretyData) {
        return suretyDataContract;
    }

    receive() external payable {
        payTo(address(suretyDataContract), msg.value, "Cannot fund suretyDataContract");
    }

}
