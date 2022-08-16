#!/usr/bin/env bash

set -euo pipefail

echo "${CA_BUNDLE}" > "/tmp/ca-bundle.pem"
export NODE_EXTRA_CA_CERTS="/tmp/ca-bundle.pem"

find "${CHECK_DIR}" -name \*.md -print0 | xargs -0 -n1 markdown-link-check --verbose --config "${CONFIG_PATH}"
