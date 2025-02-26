require("@nomicfoundation/hardhat-toolbox");

require("dotenv").config();
/** @type import('hardhat/config').HardhatUserConfig */

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.20",
  networks: {
    sepolia: {
      url: 'https://eth-sepolia.g.alchemy.com/v2/9fveTVvEor1oOceuFJ6c10TJ64kGjqhC',
      accounts: [
        'cca38e254f85b6ede2f0decf318be4bad548a7f751f1981fdc0c613eab652cc9',
      ],
    },
  },
};
