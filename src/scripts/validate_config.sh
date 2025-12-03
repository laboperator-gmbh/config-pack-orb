#!/bin/bash

circleci config validate \
  --org-id 9b4e3c5a-4325-401a-a8e2-2c79447c81ff \
  --org-slug github/laboperator-gmbh \
  --token "$CIRCLE_TOKEN" \
  "$OUTPUT_FILE"
