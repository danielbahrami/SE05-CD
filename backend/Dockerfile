FROM golang:1.19.0-alpine AS build

COPY ./ /backend
WORKDIR /backend

RUN go mod download
RUN go build -o backend

FROM golang:1.19.0-alpine

LABEL org.opencontainers.image.source "https://github.com/danielbahrami/SE05-CD"

COPY --from=build /backend /backend
WORKDIR /backend

ENTRYPOINT ["./backend"]