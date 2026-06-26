#!/usr/bin/env bash
set -euo pipefail

postman collection run "./postman/collections/ReqRes API Tests" \
  --environment "./postman/environments/DEV.environment.yaml"