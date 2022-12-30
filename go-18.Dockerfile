FROM golang:1.18-alpine as builder-base
RUN apk update && apk upgrade
RUN apk add --no-cache build-base bash curl nano vim wget

WORKDIR /go/src/

RUN go install github.com/cosmtrek/air@latest

ENTRYPOINT ["air"]
