-include .env

.PHONY: all test clean deploy fund install snapshot format anvil 

install:; forge install openzeppelin/openzeppelin-contracts@v5.3.0 && forge install foundry-devops@0.3.2 && forge install smartcontractkit/chainlink-brownie-contracts@1.3.0 && forge install smartcontractkit/ccip@v2.9.0 && forge install smartcontractkit/chainlink-local@v0.2.5


#deploy-anvil:; forge script script/DeployDeCup.s.sol:DeployDeCup --broadcast --rpc-url 127.0.0.1:8545 --account defaultKey -vvvv
deploy-anvil:; forge script script/DeployDeCupManager.s.sol:DeployDeCupManager --broadcast --rpc-url 127.0.0.1:8545 --account defaultKey -vvvv

deposit-eth-anvil:; forge script script/Interactions.s.sol:DepositNativeCurrencyAndMintNft --rpc-url 127.0.0.1:8545 --broadcast --account defaultKey -vvvv

deposit-multiple-anvil:; forge script script/Interactions.s.sol:DepositMultipleAssetsAndMintNft --rpc-url 127.0.0.1:8545 --broadcast --account defaultKey -vvvv

#deploy-sepolia:; forge script script/DeployDeCup.s.sol:DeployDeCup --broadcast --rpc-url $(SEPOLIA_RPC_URL) --account devKey -vvvv
deploy-sepolia:; forge script script/DeployDeCupManager.s.sol:DeployDeCupManager --broadcast --rpc-url $(SEPOLIA_RPC_URL) --account devKey --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv

deposit-eth-sepolia:; forge script script/Interactions.s.sol:DepositNativeCurrencyAndMintNft --rpc-url $(SEPOLIA_RPC_URL) --broadcast --account devKey -vvvv

create-sale-sepolia:; forge script script/Interactions.s.sol:CreateSale --sig "run(uint256)" $(TOKEN_ID) --rpc-url $(SEPOLIA_RPC_URL) --broadcast --account devKey -vvvv

add-single-asset-cup-sepolia:; forge script script/Interactions.s.sol:AddSingleAssetCollateralToExistingCup --sig "run(uint256)" $(TOKEN_ID) --rpc-url $(SEPOLIA_RPC_URL) --broadcast --account devKey -vvvv

get-nft-collateral-sepolia:; forge script script/Interactions.s.sol:GetNftCollateral --sig "run(uint256,address)" $(TOKEN_ID) $(TOKEN_ADDRESS) --rpc-url $(SEPOLIA_RPC_URL) --broadcast --account devKey -vvvv

get-nft-tcl-sepolia:; forge script script/Interactions.s.sol:GetNftTCLOfToken --sig "run(uint256)" 0 --rpc-url $(SEPOLIA_RPC_URL) --broadcast --account devKey -vvvv

burn-eth-sepolia:; forge script script/Interactions.s.sol:BurnDeCupNft --sig "run(uint256)" 0 --rpc-url $(SEPOLIA_RPC_URL) --broadcast --account devKey -vvvv

#avalanche fuji
deploy-fuji:; forge script script/DeployDeCupManager.s.sol:DeployDeCupManager --broadcast --rpc-url $(AVALANCHE_FUJI_RPC_URL) --account devKey --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv

deposit-eth-fuji:; forge script script/Interactions.s.sol:DepositNativeCurrencyAndMintNft --rpc-url $(AVALANCHE_FUJI_RPC_URL) --broadcast --account devKey -vvvv

create-sale-fuji:; forge script script/Interactions.s.sol:CreateSale --sig "run(uint256)" $(TOKEN_ID) --rpc-url $(AVALANCHE_FUJI_RPC_URL) --broadcast --account devKey -vvvv

add-single-asset-cup-fuji:; forge script script/Interactions.s.sol:AddSingleAssetCollateralToExistingCup --sig "run(uint256)" $(TOKEN_ID) --rpc-url $(AVALANCHE_FUJI_RPC_URL) --broadcast --account devKey -vvvv

get-nft-collateral-fuji:; forge script script/Interactions.s.sol:GetNftCollateral --sig "run(uint256,address)" $(TOKEN_ID) $(TOKEN_ADDRESS) --rpc-url $(AVALANCHE_FUJI_RPC_URL) --broadcast --account devKey -vvvv

get-nft-tcl-fuji:; forge script script/Interactions.s.sol:GetNftTCLOfToken --sig "run(uint256)" 0 --rpc-url $(AVALANCHE_FUJI_RPC_URL) --broadcast --account devKey -vvvv

burn-eth-fuji:; forge script script/Interactions.s.sol:BurnDeCupNft --sig "run(uint256)" 0 --rpc-url $(AVALANCHE_FUJI_RPC_URL) --broadcast --account devKey -vvvv
