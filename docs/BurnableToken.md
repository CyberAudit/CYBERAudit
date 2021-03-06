# Burnable Token (BurnableToken.sol)

View Source: [openzeppelin-solidity/contracts/token/ERC20/BurnableToken.sol](../openzeppelin-solidity/contracts/token/ERC20/BurnableToken.sol)

**↗ Extends: [BasicToken](BasicToken.md)**
**↘ Derived Contracts: [TokenBase](TokenBase.md)**

**BurnableToken**

Token that can be irreversibly burned (destroyed).

**Events**

```js
event Burn(address indexed burner, uint256  value);
```

## Functions

- [burn(uint256 _value)](#burn)
- [_burn(address _who, uint256 _value)](#_burn)

### burn

⤿ Overridden Implementation(s): [TokenBase.burn](TokenBase.md#burn)

Burns a specific amount of tokens.

```js
function burn(uint256 _value) public nonpayable
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| _value | uint256 | The amount of token to be burned. | 

### _burn

```js
function _burn(address _who, uint256 _value) internal nonpayable
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| _who | address |  | 
| _value | uint256 |  | 

## Contracts

* [AuditToken](AuditToken.md)
* [BasicToken](BasicToken.md)
* [BulkTransfer](BulkTransfer.md)
* [BurnableToken](BurnableToken.md)
* [CustomAdmin](CustomAdmin.md)
* [CustomLockable](CustomLockable.md)
* [CustomOwnable](CustomOwnable.md)
* [CustomPausable](CustomPausable.md)
* [ERC20](ERC20.md)
* [ERC20Basic](ERC20Basic.md)
* [ERC20Mock](ERC20Mock.md)
* [ForceEther](ForceEther.md)
* [Migrations](Migrations.md)
* [Ownable](Ownable.md)
* [Reclaimable](Reclaimable.md)
* [SafeERC20](SafeERC20.md)
* [SafeMath](SafeMath.md)
* [StandardToken](StandardToken.md)
* [TokenBase](TokenBase.md)
* [TransferState](TransferState.md)
