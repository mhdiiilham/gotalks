FROM golang:1.17-alpine

RUN apk update && apk add --no-cache git

WORKDIR /app

RUN go get golang.org/x/net
RUN go get golang.org/x/tools
RUN go install golang.org/x/tools/cmd/present@latest

COPY . .

EXPOSE 8080

CMD [ "present", "-use_playground", "-http", ":8080"]
