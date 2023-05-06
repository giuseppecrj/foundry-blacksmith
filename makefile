-include .env

deploy-blacksmith :;
	@forge build
	@forge script script/${contract}.s.sol:${contract} --rpc-url ${LOCAL_RPC_URL} --private-key ${LOCAL_PK} --verifier-url http://localhost:3000/api/verify --etherscan-api-key ${LOCAL_API_KEY} --verify --broadcast -vvvv


deploy-anvil :;
	@forge build
	@forge script script/${contract}.s.sol:${contract} --rpc-url ${LOCAL_RPC_URL} --private-key ${LOCAL_PK} --broadcast -vvvv
