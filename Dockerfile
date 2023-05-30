FROM golang:1.20.4-alpine3.18 as dev

WORKDIR /usr/src/app

COPY . .

RUN go build -o desafio -ldflags "-s -w"

FROM scratch

WORKDIR /usr/src/app

COPY --from=dev /usr/src/app .

ENTRYPOINT [ "./desafio"]
