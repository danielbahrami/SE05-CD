FROM golang:latest

WORKDIR /backend

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /backend

ENTRYPOINT ["/backend"]