// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

/**
 * @title ILevelUploadSystem
 * @author MUD (https://mud.dev) by Lattice (https://lattice.xyz)
 * @dev This interface is automatically generated from the corresponding system contract. Do not edit manually.
 */
interface ILevelUploadSystem {
  function uploadLevel(bytes32 levelId, bytes32[] memory templateIds, int32[] memory xs, int32[] memory ys) external;
}
