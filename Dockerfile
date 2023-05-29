FROM golang:1.20.4-alpine3.18

WORKDIR /app

COPY go.mod ./
COPY main.go ./

RUN go build -o /golang && go run main.go

CMD [ "/golang" ]
