BUILD_PATH = build
BINARY_BASENAME = bin-test
ARCH = amd64
CANARY_TOKEN = PLEASE_INSERT_TOKEN
LD_FLAGS = "-s -w -X main.CanaryToken=$(CANARY_TOKEN)"

all: linux windows macosx

linux: | setup
	GOOS=$@ ARCH=amd64 go build -ldflags $(LD_FLAGS) -o $(BUILD_PATH)/$(BINARY_BASENAME)_$@-$(ARCH)
	strip -s $(BUILD_PATH)/$(BINARY_BASENAME)_$@-$(ARCH)

windows: | setup
	GOOS=$@ ARCH=amd64 go build -ldflags $(LD_FLAGS) -o $(BUILD_PATH)/$(BINARY_BASENAME)_$@-$(ARCH).exe

darwin: | setup
	GOOS=$@ ARCH=amd64 go build -ldflags $(LD_FLAGS) -o $(BUILD_PATH)/$(BINARY_BASENAME)_$@-$(ARCH)

setup:
	mkdir -p $(BUILD_PATH)

clean:
	go clean
	rm -rf $(BUILD_PATH)

.PHONY: all clean setup
