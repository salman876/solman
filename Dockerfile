FROM golang:latest

WORKDIR /app

COPY . .

ENV GOCACHE=/root/.cache/go-build
RUN --mount=type=cache,target="/root/.cache/go-build" go build -o app .

EXPOSE 9000

CMD ["./app"]