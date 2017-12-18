var EtherBusiness = artifacts.require("./EtherBusiness.sol");

module.exports = function(deployer) {
  deployer.deploy(EtherBusiness);
};
