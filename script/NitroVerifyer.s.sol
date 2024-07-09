// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {NitroVerifyer} from "../src/NitroVerifyer.sol";

contract CounterScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        // TODO: implement
        vm.stopBroadcast();
    }
}
