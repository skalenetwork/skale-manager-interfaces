// SPDX-License-Identifier: AGPL-3.0-only

/*
    IConstantsHolder.sol - SKALE Manager Interfaces
    Copyright (C) 2021-Present SKALE Labs
    @author Artem Payvin

    SKALE Manager Interfaces is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published
    by the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    SKALE Manager Interfaces is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with SKALE Manager Interfaces.  If not, see <https://www.gnu.org/licenses/>.
*/

pragma solidity >=0.6.10 <0.9.0;

interface IConstantsHolder {

    /**
     * @dev Emitted when constants updated.
     */
    event ConstantUpdated(
        bytes32 indexed constantHash,
        uint previousValue,
        uint newValue
    );

    function setPeriods(uint32 newRewardPeriod, uint32 newDeltaPeriod) external;
    function setCheckTime(uint newCheckTime) external;
    function setLatency(uint32 newAllowableLatency) external;
    function setMSR(uint newMSR) external;
    function setLaunchTimestamp(uint timestamp) external;
    function setRotationDelay(uint newDelay) external;
    function setProofOfUseLockUpPeriod(uint periodDays) external;
    function setProofOfUseDelegationPercentage(uint percentage) external;
    function setLimitValidatorsPerDelegator(uint newLimit) external;
    function setSchainCreationTimeStamp(uint timestamp) external;
    function setMinimalSchainLifetime(uint lifetime) external;
    function setComplaintTimeLimit(uint timeLimit) external;
    function setMinNodeBalance(uint newMinNodeBalance) external;
    function reinitialize() external;
    // Corresponds to the public field
    // solhint-disable func-name-mixedcase
    // slither-disable-start naming-convention
    function BOUNTY_LOCKUP_MONTHS() external view returns (uint256);
    function NODE_DEPOSIT() external view returns (uint256);
    function SECONDS_TO_YEAR() external view returns (uint32);
    function SMALL_DIVISOR() external view returns (uint8);
    function TOTAL_SPACE_ON_NODE() external view returns (uint8);
    // solhint-enable func-name-mixedcase
    // slither-disable-end naming-convention
    function msr() external view returns (uint);
    function launchTimestamp() external view returns (uint);
    function rotationDelay() external view returns (uint);
    function limitValidatorsPerDelegator() external view returns (uint);
    function schainCreationTimeStamp() external view returns (uint);
    function minimalSchainLifetime() external view returns (uint);
    function complaintTimeLimit() external view returns (uint);
    function minNodeBalance() external view returns (uint);
}
