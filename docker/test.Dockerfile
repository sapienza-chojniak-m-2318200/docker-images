FROM alpine:3.20

RUN apk add --no-cache curl

# Default application command
CMD ["echo", "API Container Running..."]