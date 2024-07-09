// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {NitroVerifyer} from "../src/NitroVerifyer.sol";

contract NitroVerifyerTest is Test {
    NitroVerifyer public verifyer;

    function setUp() public {
        verifyer = new NitroVerifyer();
    }

    // TODO: test cert chain verification
    // TODO: test proof verification
}
