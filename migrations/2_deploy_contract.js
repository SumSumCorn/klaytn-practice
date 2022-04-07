const MyKIP17TokenV2 = artifacts.require("MyKIP17TokenV2");

module.exports = function (deployer) {
  deployer.deploy(MyKIP17TokenV2);
};