FROM golang:1.24.2

WORKDIR /usr/src/app 

COPY go.mod go.sum ./

RUN go mod tidy 

COPY . .

RUN go build -o app .

CMD ["./app"]