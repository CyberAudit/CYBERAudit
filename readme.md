# CyberAudit (AUDT)

This repository contains ERC20 token contract code of CyberAudit.

## How to Install?

**Install Truffle Tools**

https://truffleframework.com

```
npm install -g web3@0.20.1 solidity-coverage@0.5.11 truffle@4.1.14
```


**Clone the Repository**

```
git clone https://github.com/CyberAudit/CyberAudit
```

**Install Packages**

```
npm install
```

## Running Tests

**Start Local RPC Client**

```shell
ganache-cli -g 1 -l 9984452
```

**Run Tests**

```shell
npm run test
```

**Run Coverage Tool**

```shell
npm run coverage
```

Open the file `./coverage/index.html` to view report.

**Generate Documentation**

```shell
npm install -g solidoc
rm -R ./build
npm run compile
solidoc
```

**Flatten Contracts**

```shell
npm install -g sol-flattener
sol-flattener
```

[Documentation](docs/CyberAudit.md)
