// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

import "forge-std/Script.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { IWorld } from "../src/codegen/world/IWorld.sol";

import { CancelMatchSystem } from "../src/systems/CancelMatchSystem.sol";
import { redeploySystem } from "./migrationUtils.sol";

contract RedeployCancelMatchSystem is Script {
  function run(address worldAddress) external {
    IWorld world = IWorld(worldAddress);
    StoreSwitch.setStoreAddress(worldAddress);

    uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
    vm.startBroadcast(deployerPrivateKey);

    redeploySystem(world, new CancelMatchSystem(), "CancelMatchSyste");

    vm.stopBroadcast();
  }
}
