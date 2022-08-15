FROM ghcr.io/tcort/markdown-link-check:stable

RUN apk update && apk add --no-cache bash

COPY check.sh /tmp/check.sh

ENTRYPOINT [ "/tmp/check.sh" ]
