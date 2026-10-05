FROM alpine:latest

RUN apk add --no-cache curl

# Default application command
CMD ["echo", "API Container Running..."]