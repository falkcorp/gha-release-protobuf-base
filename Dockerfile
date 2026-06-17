FROM golang:1.26-alpine@sha256:f85330846cde1e57ca9ec309382da3b8e6ae3ab943d2739500e08c86393a21b1

ARG BUF_VERSION=1.43.0

RUN apk add --no-cache curl git bash && \
    curl -sSL "https://github.com/bufbuild/buf/releases/download/v${BUF_VERSION}/buf-Linux-x86_64" -o /usr/local/bin/buf && \
    chmod +x /usr/local/bin/buf

WORKDIR /repo

COPY src/entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
