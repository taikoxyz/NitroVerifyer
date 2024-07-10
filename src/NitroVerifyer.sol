// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.13;

import {NitroProver} from "NitroProver/src/NitroProver.sol";

contract NitroVerifyer is NitroProver {
    mapping(bytes32 => bytes) PCRs;
    bytes32[] enclaves;

    function registerEnclave(
        bytes memory attestation,
        bytes32 enclaveId
    ) public view {
        bytes memory pubKey = verifyAttestation(
            attestation,
            PCRs[enclaveId],
            365 days
        );
    }
}
