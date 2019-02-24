# GO Env for go1.11 - go1.12 where Modules are not enabled by default 
# -mod=vendor is to ensure that go build tools use /vendor folder to find dependencies
GO_ENV=GO111MODULE=on GOFLAGS=-mod=vendor

all: test cmd/parser

dep:
	$(GO_ENV) go mod vendor

test:
	$(GO_ENV) go test ./parser ./model

fmt:
	$(GO_ENV) go fmt ./...

cmd/parser: cmd/main.go
	$(GO_ENV) go build -o $@ $<

clean:
	rm -f cmd/parser
