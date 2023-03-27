# Build stage
FROM golang:1.19-alpine3.16 AS builder
# Set destination for COPY
WORKDIR /app
# Copy the source code. Note the slash at the end, as explained in
# https://docs.docker.com/engine/reference/builder/#copy
COPY *.go ./
# Build
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o api main.go

# Run stage
FROM alpine:3.16
WORKDIR /app
COPY --from=builder /app/api .

EXPOSE 8080
# Run
CMD [ "/app/api" ]

