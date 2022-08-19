FROM golang:1.19.0-alpine AS build

COPY ./ /backend

WORKDIR /backend

RUN go mod download

COPY main.go ./

RUN go build -o /backend

FROM golang:1.19.0-alpine

COPY --from=build /backend /backend

WORKDIR /backend

ENTRYPOINT ["./backend"]
