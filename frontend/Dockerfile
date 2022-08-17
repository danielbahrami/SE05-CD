FROM golang:latest

EXPOSE 8080

WORKDIR /app

COPY . .

RUN go mod download

RUN go build -o /frontend

ENTRYPOINT ["/frontend"]