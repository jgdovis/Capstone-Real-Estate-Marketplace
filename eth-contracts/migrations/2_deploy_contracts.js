var ERC721Mintable = artifacts.require("./jgdovishomesERC721Token");
var SquareVerifier = artifacts.require("./SquareVerifier");
var SolnSquareVerifier = artifacts.require("./SolnSquareVerifier");

module.exports = function(deployer) {
  deployer.deploy(SquareVerifier)
   .then(() => {
     return deployer.deploy(SolnSquareVerifier,SquareVerifier.address);
   })
  
 
};