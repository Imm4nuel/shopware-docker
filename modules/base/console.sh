#!/usr/bin/env bash
set -euo pipefail

SHOPWARE_PROJECT=$2
shift 2

compose run \
  --rm \
  --no-deps \
  -u "$(id -u):$(id -g)" \
  --entrypoint="bin/console" \
  -w "/var/www/html/$SHOPWARE_PROJECT" \
  cli "$@"
