FROM golang:1.19.0-alpine AS build

COPY ./ /frontend
WORKDIR /frontend

RUN go mod download
RUN go build -o frontend

FROM golang:1.19.0-alpine

LABEL org.opencontainers.image.source "https://github.com/amatzen/SE05-CD-SimpleFortuneCookie"

COPY --from=build /frontend /frontend
WORKDIR /frontend

ENTRYPOINT ["./frontend"]