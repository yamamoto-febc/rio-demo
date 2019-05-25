FROM golang:1.11.1
ENV GOPATH="/go"
RUN ["mkdir", "-p", "/go/src/github.com/yamamoto-febc/rio-demo"]
COPY * /go/src/github.com/yamamoto-febc/rio-demo/
WORKDIR /go/src/github.com/yamamoto-febc/rio-demo
RUN ["go", "build", "-o", "demo"]
CMD ["./demo"]
