FROM golang:1.23-alpine AS builder
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 go build -o /app/service ./cmd/api

FROM alpine:3.20
RUN apk --no-cache add ca-certificates tzdata
COPY --from=builder /app/service /service
ENTRYPOINT ["/service"]
