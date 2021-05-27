<h3 align="center">From Crowdsale To ICO</h3>
<p align="center">
  <a href="https://github.com/bgregory0913/From_Crowdsale_To_ICO/">
    <img src="readme_img.jpg" alt="FinancialPlanning" align="center">
  </a>
</p>
                                                                   
[Photo by RODNAE Productions from Pexels](https://www.pexels.com/photo/green-sticky-note-beside-white-and-green-pen-7414214/)

A Crowdsale is a contract that acts as an intermediary for investors to pre-purchase a startup company's service or product with tokens in exchange for redemption when the company becomes established and financially viable. 

# Project Overview:

* The intention of this project is to provide other blockchain developers a prototype Crowdsales SmartContract and demonstrate the use of open-source [Solidity](https://soliditylang.org/) contract libraries such as [OpenZeppelin](https://openzeppelin.com/contracts/) to help understand how the process works from beginning to end. I'll demonstrate how build a simple, __capped__, __mintable__, and __refundable__ Crowdsale contract token using the OpenZeppelin library and Solidity.
* The first Solidity contract, [PupperCoin.sol](https://github.com/bgregory0913/From_Crowdsale_To_ICO/blob/main/PupperCoin.sol), is a standard `ERC20Mintable` and `ERC20Detailed` contract that will be used to create an `ERC20` token that will be minted through the [PupperCoinCrowdSale.sol](https://github.com/bgregory0913/From_Crowdsale_To_ICO/blob/main/PupperCoinCrowdSale.sol) contract.
* The second Solidity contract, [PupperCoinCrowdSale.sol](https://github.com/bgregory0913/From_Crowdsale_To_ICO/blob/main/PupperCoinCrowdSale.sol), is the Crowdsale contract that will manage the entire process, allowing investors to send `ETH` in exchange for your coin. This contract will mint the tokens automatically and distribute them to buyers in one transaction.


## Getting Started:

### Resources
* This project is coded with [Solidity](https://soliditylang.org/) using the [Remix IDE](https://remix.ethereum.org/) and deployed on a local Web3 testnet.
  * You will need to install [Web3](https://web3js.readthedocs.io/en/v1.3.4/), however, Remix is a browser based application and doesn't require installation if you do not wish to. Be sure not to clear your browser cache, though, as this will delete any contracts you have created in Remix.

* You will need to download TruffleSuite's [Ganache](https://www.trufflesuite.com/ganache) to generate and populate test wallets with ethereum. 

The last thing to install is the [MetaMask](https://metamask.io/) browser extension, which will allow you to connect your local Ganache wallets to the Remix contracts you create.
* You can use all of these resources on both Windows and Mac.



* Open Ganache to initiate the testnet on your local machine and also retrieve addresses to use for funding and transactions
  * Populate some test wallets with ETH.
* Install the MetMask extension in your browser.


### Part 1 - Preparing and Deploying the Contract:

* Coding and compiling the contract in Remix:

![compiled_contract](https://github.com/bgregory0913/From_Crowdsale_To_ICO/blob/main/compiled_crowd_sale.PNG)

* Deploying the contract with Remix:

![deploying_contract](https://github.com/bgregory0913/From_Crowdsale_To_ICO/blob/main/deploying_contract.PNG)

  * Click `Transact` then `Confirm` on the Metamask popup to approve the transaction.


### Part 2 - Executing Transactions:

* Click the `Deployed Contracts` dropdown then copy the value for `token_address` and `token_sale_address` (click the blue buttons to display then copy the addresses).

![copy_paste_address](https://github.com/bgregory0913/From_Crowdsale_To_ICO/blob/main/pasting_addresses_LI.jpg)

* Select `PupperCoin` from the `Contract` dropdown menu and paste the `token_address` into the `At Address` textbox at the bottom.
  * Switch to the `PupperCoinSale` contract and paste the `token_sale_address` into the `At Address` textbox then click the `At Address` button (you should see it enable after you paste the address).

* Under `Deployed Contracts`, expand the `PupperCoinSale` contract and enter an address from Ganache with available tokens as the beneficiary under `buyTokens` (click the red button to expand). Set the value to contribute then click the red `Transact` button.

![enter_ganache_address](https://github.com/bgregory0913/From_Crowdsale_To_ICO/blob/main/enter_ganache_to_sale.PNG)



## Contact:
Blake Gregory - [LinkedIn](www.linkedin.com/in/blake-greg) - blake.gregory@tilineum.com
