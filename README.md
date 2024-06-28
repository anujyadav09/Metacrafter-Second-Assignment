# Metacrafter-second-assignment-
# AnujYadav Token Contract

## Overview

This Solidity smart contract implements a basic ERC-20 token with the name "anuj" and the abbreviation "yadav". It includes functionalities for minting and burning tokens. The contract maintains a total supply of tokens and keeps track of balances for each address.

## Features

- *Token Name:* "anuj"
- *Token Abbreviation:* "yadav"
- *Minting:* Allows new tokens to be created and assigned to addresses.
- *Burning:* Allows tokens to be destroyed from addresses, reducing the total supply.

## Public Variables

- token_name (string): The name of the token.
- abbrev (string): The abbreviation of the token.
- totalSupply (uint): The total supply of tokens in circulation.

## Functions

### Mint Function

The mint function allows the creation of new tokens and assigns them to a specified address.

*Signature:*

```solidity
function mint(address _to, uint _value) public
```

*Parameters:*

- _to (address): The address to which the newly minted tokens will be assigned.
- _value (uint): The amount of tokens to be minted.

*Example:*

```solidity
mint(0xAbC123...789, 100);
```

This example mints 100 tokens and assigns them to the address 0xAbC123...789.

### Burn Function

The burn function allows the destruction of tokens from a specified address, reducing the total supply.

*Signature:*

```solidity
function burn(address _from, uint _value) public
```

*Parameters:*

- _from (address): The address from which the tokens will be burned.
- _value (uint): The amount of tokens to be burned.

*Example:*

```solidity
burn(0xAbC123...789, 50);
```

This example burns 50 tokens from the address 0xAbC123...789.

*Important Note:*
- The burn function includes a requirement check to ensure that the address has sufficient balance to burn the specified amount of tokens.

## Mapping

- balances (mapping(address => uint)): A mapping to store the balance of tokens for each address.

## Usage

Deploy the contract on an Ethereum-compatible blockchain. Once deployed, use the mint and burn functions to manage the token supply. 

## License

This project is licensed under the MIT License.
See the [LICENSE](LICENSE) file for details.
