PLUGIN_BINARY=bin/java-rookout
export GOARCH=amd64
export GOOS=linux
export GO111MODULE=on

default: build

.PHONY: clean
clean: ## Remove build artifacts
	rm -rf ${PLUGIN_BINARY}

build:
	go build -o ${PLUGIN_BINARY} .

rebuild: clean build
