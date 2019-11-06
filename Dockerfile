FROM alpine:3.10

ADD https://storage.googleapis.com/kubernetes-release/release/v1.14.3/bin/linux/amd64/kubectl /usr/local/bin/kubectl

ENV HOME=/config

RUN set -x && \
    apk add --no-cache curl ca-certificates && \
    chmod +x /usr/local/bin/kubectl && \
    adduser kubectl -Du 1010 -h /config

USER kubectl
