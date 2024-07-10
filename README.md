## Taiko Nitro Verifyer

This is a verifier for the Taiko blockchain. It is a Rust implementation of the Taiko verifier that uses the Nitro enclave to leverage it's TEE for proof generation.

It's build using certificate and attestation verification from `marlinprotocol/NitroProver`.

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Deploy

```shell
$ forge script script/NitroVerifyer.s.sol:NitroVerifyerScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```
