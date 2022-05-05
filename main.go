package main

import (
	"fmt"
	"net"
)

var CanaryToken string

func main() {
	_, _ = net.LookupIP(fmt.Sprintf("%s.canarytokens.com", CanaryToken))
}
