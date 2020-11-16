# Udacity Blockchain Capstone

This project is about managing Real Estate Marketplace in Etherium Blockchain.Each property is represented by ERC721 Token. 
(https://rinkeby.opensea.io/accounts/jgdovis) 

## Install

`npm install`

1. Start Ganache like below .

`ganache-cli` 

2. In a separate terminal window,from inside the directory      eth-contracts/ Compile smart contracts:

`truffle.cmd compile`

3. Then compile and deploy with truffle.

`truffle.cmd migrate --network development --reset --compile-all`

## Testing

`truffle.cmd test`

## Deployment

`truffle migrate --network rinkeby`

## Minting a Token
launch the DApp separate terminal window.

`npm run dev`

To view dapp

`http://localhost:3000`

![Dapp page](DApp Images\Tokenise Real State Property.PNG)

## OpenSea marketplace

Storefront was created in OpenSea marketplace https://rinkeby.opensea.io/accounts/0xe97f96adecb5c24a2fe1d6c198a218feac40953a

![OpenSea Store](OpenSea Store image\opensea.io store.PNG)

Propetys on Sale and Action on OpenSea

https://rinkeby.opensea.io/account?search=%7B%22toggles%22%3A%5B%22FOR_SALE%22%2C%22ON_AUCTION%22%5D%7D

![OpenSea Propetys forn sale](OpenSea Store image\on action.PNG)

One of the propetys:

https://rinkeby.opensea.io/assets/0x04932e34196ad9092c695d6f335cea47a7a8082a/1/

![OpenSea Propetys forn sale](OpenSea Store image\for sale on Opensea.PNG)

# Project Resources

* [Remix - Solidity IDE](https://remix.ethereum.org/)
* [Visual Studio Code](https://code.visualstudio.com/)
* [Truffle Framework](https://truffleframework.com/)
* [Ganache - One Click Blockchain](https://truffleframework.com/ganache)
* [Open Zeppelin ](https://openzeppelin.org/)
* [Interactive zero knowledge 3-colorability demonstration](http://web.mit.edu/~ezyang/Public/graph/svg.html)
* [Docker](https://docs.docker.com/install/)
* [ZoKrates](https://github.com/Zokrates/ZoKrates)