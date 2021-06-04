pragma solidity ^0.5.0;

import "./PupperCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/TimedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/distribution/RefundablePostDeliveryCrowdsale.sol";

// Inherit the crowdsale contracts:
contract PupperCoinSale is Crowdsale, MintedCrowdsale, CappedCrowdsale, TimedCrowdsale, RefundablePostDeliveryCrowdsale{

    constructor(
        // Constructor parameters:
        uint rate,
        address payable wallet,
        PupperCoin token,
        uint goal,
        uint open,
        uint close
    )
        // Pass constructor parameters to the crowdsale contracts:
        Crowdsale(rate, wallet, token)
        TimedCrowdsale(open, close)
        CappedCrowdsale(goal)
        RefundableCrowdsale(goal)
        public
    {
        // constructor can stay empty
    }
}

contract PupperCoinSaleDeployer {

    address public token_sale_address;
    address public token_address;

    constructor(
        // Constructor parameters:
        string memory name,
        string memory symbol,
        address payable wallet,
        uint goal
    )
        public
    {
        // Create the PupperCoin and keep its address:
        PupperCoin token = new PupperCoin(name, symbol, 0);
        token_address = address(token);

        // Create the PupperCoinSale and tell it about the token, set the goal, and set the open and close times to now and (now + 24 weeks):
        PupperCoinSale token_sale = new PupperCoinSale(1, wallet, token, goal, now, now + 24 weeks);
        token_sale_address = address(token_sale);

        // Make the PupperCoinSale contract a minter, then have the PupperCoinSaleDeployer renounce its minter role:
        token.addMinter(token_sale_address);
        token.renounceMinter();
    }
}
