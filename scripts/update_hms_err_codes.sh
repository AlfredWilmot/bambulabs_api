#!/usr/bin/env sh

set -e

SCRIPT_DIR="$(dirname "$(realpath "${0}")")"
ROOT="$(dirname "${SCRIPT_DIR}")"
OUT_FILE_PATH="${ROOT}/internal/hms/errors.go"

go run "${SCRIPT_DIR}/hms.go" > "${OUT_FILE_PATH}"
echo "Done!"
