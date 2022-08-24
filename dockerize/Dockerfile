FROM golang:1.16-alpine
WORKDIR /go/dockerize
COPY ./ ./
RUN go mod init dockerize
RUN go mod tidy
RUN go build
RUN pwd
RUN ls
CMD go run .


