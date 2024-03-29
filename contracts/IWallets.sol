// SPDX-License-Identifier: AGPL-3.0-only

/*
    IWallets - SKALE Manager Interfaces
    Copyright (C) 2021-Present SKALE Labs
    @author Dmytro Stebaeiv

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

interface IWallets {
    receive() external payable;
    function refundGasByValidator(uint validatorId, address payable spender, uint gasLimit) external;
    function refundGasByValidatorToSchain(uint validatorId, bytes32 schainHash) external;
    function refundGasBySchain(bytes32 schainId, address payable spender, uint spentGas, bool isDebt) external;
    function withdrawFundsFromSchainWallet(address payable schainOwner, bytes32 schainHash) external;
    function withdrawFundsFromValidatorWallet(uint amount) external;
    function rechargeValidatorWallet(uint validatorId) external payable;
    function rechargeSchainWallet(bytes32 schainId) external payable;
    function getSchainBalance(bytes32 schainHash) external view returns (uint);
    function getValidatorBalance(uint validatorId) external view returns (uint);
}
