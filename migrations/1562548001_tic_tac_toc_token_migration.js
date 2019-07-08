let TicTacToeToken = artifacts.require("./TicTacToeToken.sol");  
let tokenAddress=""; 

module.exports = function(deployer) {  
  deployer.deploy(TicTacToeToken)
    .then(()=>{
      tokenAddress = TicTacToeToken.address;
    })
    .then(()=>{
      console.log(tokenAddress)
    })  
};


