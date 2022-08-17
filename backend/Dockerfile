FROM golang:1.19.0-alpine AS build

<<<<<<< HEAD
COPY ./ /backend
WORKDIR /backend

RUN go mod download
RUN go build -o backend

FROM golang:1.19.0-alpine

LABEL org.opencontainers.image.source "https://github.com/danielbahrami/SE05-CD"

COPY --from=build /backend /backend
WORKDIR /backend

ENTRYPOINT ["./backend"]
=======
COPY ./ /app
WORKDIR /app

RUN go mod download
RUN go build -o /app

FROM golang:1.19.0-alpine

LABEL org.opencontainers.image.source="https://github.com/danielbahrami/SE05-CD"

COPY --from=build /app /app
WORKDIR /app

ENTRYPOINT ["./app"]
>>>>>>> 4ff1fd1 (Initial backend dockerfile)
