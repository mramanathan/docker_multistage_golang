FROM golang:1.10

WORKDIR /go/src/webapp
COPY webapp.go .

RUN \
    go get -d -v \
    && go install -v \
    && go build

EXPOSE 9090
CMD ["./webapp"]
