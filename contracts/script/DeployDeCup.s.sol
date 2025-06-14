// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {Script} from "forge-std/Script.sol";
import {DeCup} from "src/DeCup.sol";
import {Base64} from "@openzeppelin/contracts/utils/Base64.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployDeCup is Script {
    //  HelperConfig helperConfig;

    function run() external returns (DeCup, HelperConfig) {
        HelperConfig config = new HelperConfig();
        HelperConfig.NetworkConfig memory networkConfig = config.getConfig();

        DeCup decup = deployDeCup(
            networkConfig.imageURI,
            networkConfig.tokenAddresses,
            networkConfig.priceFeedAddresses,
            networkConfig.defaultPriceFeed
        );
        return (decup, config);
    }

    function deployDeCup(
        string memory imageURI,
        address[] memory tokenAddresses,
        address[] memory priceFeedAddresses,
        address defaultPriceFeed
    ) public returns (DeCup) {
        vm.startBroadcast();
        DeCup deploy = new DeCup(imageURI, tokenAddresses, priceFeedAddresses, defaultPriceFeed);
        vm.stopBroadcast();
        return deploy;
    }
}
