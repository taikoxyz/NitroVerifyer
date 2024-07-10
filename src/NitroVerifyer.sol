// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.13;

import {NitroProver} from "NitroProver/src/NitroProver.sol";
import {Ownable} from "@openzeppelin-contracts-5.0.2/access/Ownable.sol";

contract NitroVerifyer is NitroProver, Ownable {
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
