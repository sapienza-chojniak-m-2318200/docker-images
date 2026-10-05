FROM alpine:latest

RUN apk add --no-cache curl

# Default application command
CMD ["echo", "Test Container Running..."]