#!/bin/bash

circleci config validate \
  --org-id 4421c6f6-6e7a-4828-9fed-8ebc67dc0920 \
  --org-slug github/laboperator \
  --token "$CIRCLE_TOKEN" \
  "$OUTPUT_FILE"
