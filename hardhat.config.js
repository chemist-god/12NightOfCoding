require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config(); // Load environment variables from .env file

/** @type import('hardhat/config').HardhatUser Config */
module.exports = {
  solidity: "0.8.27",
  networks: {
    sepolia: {
      url: process.env.SEPOLIA_RPC_URL || "", // Use process.env to access the variable
      accounts: process.env.PRIVATE_KEY ? [process.env.PRIVATE_KEY] : [], // Access the private key from process.env
    },
  },
};

