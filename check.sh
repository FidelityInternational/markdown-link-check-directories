#!/usr/bin/env bash

set -euo pipefail

find "${CHECK_DIR}" -name \*.md -print0 | xargs -0 -n1 markdown-link-check --verbose --config "${CONFIG_PATH}"
