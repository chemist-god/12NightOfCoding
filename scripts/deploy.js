const { ethers } = require("hardhat");

async function main() {
  // Get the contract factory
  const ContractName = await ethers.getContractFactory("HelloWorld");

  // Deploy the contract
  const contract = await ContractName.deploy();
  console.log("Contract deployment initiated:", contract);

  // Check if deployTransaction is defined
  if (contract.deployTransaction) {
    console.log("Waiting for the deployment transaction to be mined...");
    const receipt = await contract.deployTransaction.wait();
    console.log(`Contract deployed to: ${contract.address}`);
    console.log("Transaction receipt:", receipt);
  } else {
    throw new Error("deployTransaction is undefined. Contract may not have deployed correctly.");
  }
}

// Recommended pattern for handling async errors
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error("Script failed:", error);
    process.exit(1);
  });
