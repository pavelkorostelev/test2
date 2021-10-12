FROM golang:1.17.2-alpine3.14
ENV GO111MODULE=auto
ENV GOBIN=$GOPATH/app
RUN mkdir $GOPATH/app && \
    cd $GOPATH/app
WORKDIR $GOBIN
COPY . .
RUN apk add --no-cache git && \
    go get && \
    CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .
EXPOSE 8081

CMD ["./app"]
