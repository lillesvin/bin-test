package main

import (
	"net"
	"os"
)

var CanaryToken string

func main() {
	_, err := net.LookupIP(CanaryToken + ".canarytokens.com")
	if err != nil {
		os.Exit(1)
	}
	os.Exit(0)
}
