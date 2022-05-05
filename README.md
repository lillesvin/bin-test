# bin-test

Generate a small, simple binary for pentesting purposes. Looks up a domain name to trigger a CanaryTokens alert.

# Build & usage

## Generate a DNS token

Here: https://canarytokens.org/generate

## Clone repo and build code

Clone this repo and build with either:

```
make [all|windows|linux|darwin] CANARY_TOKEN=<YOUR_TOKEN>
```

or:

```
GOOS=windows ARCH=amd64 go build -ldflags "-s -w -X main.CanaryToken=<YOUR_TOKEN>"
```

**NOTE:** YOUR\_TOKEN refers to only the token part of the CanaryTokens URL
i.e. the "cxeipefxyz6amtv9vtztqh2v" part of
"mcxeipefxyz6amtv9vtztqh2vm.canarytokens.com".

## Usage

Now drop the binary file somewhere and wait. If it's executed on a machine with
network connectivity, then you'll get your CanaryTokens alert email.


