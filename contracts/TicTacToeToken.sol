pragma solidity ^0.4.24;  


import "openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";  
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";  

   
/**  
* @title TicTacToe is a basic ERC20 Token  
*/  
contract TicTacToeToken {  

  event Transfer(
        address owner,
        address addresses,
        uint _value
        );
  uint256 public totalSupply;  
  string public name;  
  string public symbol;  
  uint32 public decimals; 
   
  mapping ( address => uint256) balances;
  address owner;
  
  constructor() public {  
            symbol = "TIC";  
            name = "TicTacToeToken";  
            decimals = 5;  
            totalSupply = 10000;  
            owner = msg.sender;  
            balances[msg.sender] = totalSupply;  
            emit Transfer(0x0, msg.sender, totalSupply);  
  }

  function transfer(address to, uint value) public returns (bool sucess){

        balances[msg.sender] = balances[msg.sender].sub(value);
        balances[to] = balances[to].add(value);
        Transfer(msg.sender, to,value); 
        return true;
  }

 
 }