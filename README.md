<h3 align="center">From Crowdsale To ICO</h3>
<p align="center">
  <a href="https://github.com/bgregory0913/From_Crowdsale_To_ICO/">
    <img src="readme_img.jpg" alt="FinancialPlanning" align="center">
  </a>
</p>
                                                                   
[Photo by RODNAE Productions from Pexels](https://www.pexels.com/photo/green-sticky-note-beside-white-and-green-pen-7414214/)

A Crowdsale is a contract that acts as an intermediary for investors to pre-purchase a startup company's service or product with tokens in exchange for redemption when the company becomes established and financially viable. 

# Project Overview:

* The intention of this project is to provide other blockchain developers a prototype Crowdsales SmartContract and demonstrate the use of open-source Solidity libraries such as OpenZeppelin to help understand how the process works from beginning to end. I'll demonstrate how build a simple, __capped__, __mintable__, and __refundable__ Crowdsale contract token using the OpenZeppelin library and Solidity.
* The first Solidity contract, [PupperCoin.sol](https://github.com/bgregory0913/From_Crowdsale_To_ICO/blob/main/PupperCoin.sol), is a standard `ERC20Mintable` and `ERC20Detailed` contract that will be used to create an ERC20 token that will be minted through the [PupperCoinCrowdSale.sol](https://github.com/bgregory0913/From_Crowdsale_To_ICO/blob/main/PupperCoinCrowdSale.sol) contract.
* The second Solidity contract, [PupperCoinCrowdSale.sol](https://github.com/bgregory0913/From_Crowdsale_To_ICO/blob/main/PupperCoinCrowdSale.sol), is the Crowdsale contract that will manage the entire process, allowing investors to send `ETH` in exchange for your coin. This contract will mint the tokens automatically and distribute them to buyers in one transaction.


## Getting Started:

### Part 1 - Preparing and Deploying the Contract:

* Coding and compiling the contract in Remix:

![compiled_contract](https://github.com/bgregory0913/From_Crowdsale_To_ICO/blob/main/compiled_crowd_sale.PNG)

* Deploying the contract with Remix:

![deploying_contract](https://github.com/bgregory0913/From_Crowdsale_To_ICO/blob/main/deploying_contract.PNG)

* Contract Deployed:

![deployed_contract](https://github.com/bgregory0913/From_Crowdsale_To_ICO/blob/main/contract_deployed.PNG)


### Part 2 - Executing Transactions:




## Resources
* This project is coded with [Solidity](https://soliditylang.org/) using the [Remix IDE](https://remix.ethereum.org/) and deployed on a local Web3 testnet on my own machine.
* You can use all of these resources as well on both Windows and Mac.


## Contact:
Blake Gregory - [LinkedIn](www.linkedin.com/in/blake-greg) - blake.gregory@tilineum.com
