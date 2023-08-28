FROM golang:1.20-alpine as builder-base
RUN apk update && apk upgrade
RUN apk add --no-cache build-base bash curl nano vim wget

RUN mkdir -p /go/src/server/
WORKDIR /go/src/server/

RUN go install github.com/cosmtrek/air@latest

