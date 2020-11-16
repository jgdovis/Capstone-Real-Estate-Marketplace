pragma solidity >=0.4.21 <0.6.0;

import "openzeppelin-solidity/contracts/utils/Address.sol";
import "./Verifier.sol";
import "./ERC721Mintable.sol";

contract SquareVerifier is Verifier{

}

contract SolnSquareVerifier is  jgdovishomesERC721Token{
    SquareVerifier public verifierContract;

    constructor(address verifierAddress)
          jgdovishomesERC721Token() 
          public
          {
              verifierContract = SquareVerifier(verifierAddress);

          }     

struct Solutions{
    uint tokenId;
    address to;

}

Solutions[] SolutionsArray;

mapping (bytes32 => Solutions) private uniqueSolutions;

event SolutionAdded(uint tokenid,address to);

function AddSolution(address _to,uint _tokenId,bytes32 key)
                    public
{
    Solutions memory _soln = Solutions({tokenId:_tokenId,to:_to});
    SolutionsArray.push(_soln);
    uniqueSolutions[key] = _soln;
    emit SolutionAdded(_tokenId,_to);
}



function CanMintToken(address _to,uint _tokenId,
            uint[2] memory a,
            uint[2] memory a_p,
            uint[2][2] memory b,
            uint[2] memory b_p,
            uint[2] memory c,
            uint[2] memory c_p,
            uint[2] memory h,
            uint[2] memory k,
            uint[2] memory input)
            public
            
{
     // check if solution is valid
    require(verifierContract.verifyTx(a, a_p, b, b_p, c, c_p, h, k, input), "solution not valid");
    bytes32 key = keccak256(abi.encodePacked(a,a_p,b,b_p,c,c_p,h,k,input));
    require(uniqueSolutions[key].to == address(0),"Solution already used.");    
       
    AddSolution(_to,_tokenId,key);
      
}

function mintToken(address _to,uint _tokenId,
            uint[2] memory a,
            uint[2] memory a_p,
            uint[2][2] memory b,
            uint[2] memory b_p,
            uint[2] memory c,
            uint[2] memory c_p,
            uint[2] memory h,
            uint[2] memory k,
            uint[2] memory input)
            public
{
    bytes32 key = keccak256(abi.encodePacked(a,a_p,b,b_p,c,c_p,h,k,input));
    require(uniqueSolutions[key].to == address(0),"Solution already used.");
    require(verifierContract.verifyTx(a,a_p,b,b_p,c,c_p,h,k,input)," solution not valid");
    
    AddSolution(_to,_tokenId,key);
    super.mint(_to,_tokenId);
}



}