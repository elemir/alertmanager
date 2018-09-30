#!/bin/sh

set -e

curl -O https://raw.githubusercontent.com/prometheus/alertmanager/master/api/v2/openapi.yaml
swagger generate client -f openapi.yaml
go build ./...
echo "Generating finished"
