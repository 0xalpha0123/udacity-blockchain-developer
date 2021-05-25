// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

interface BaseOperationalContract {
    function isContractOperational() external view returns (bool);

    function pauseContract() external;

    function resumeContract() external;
}
