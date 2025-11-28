#!/bin/bash

for f in "$SRC_PATH"/{**,.}/*.yml; do
  yq eval --inplace '(.. | select(. | tag == "!script")) |= load_str(strenv(SRC_PATH) + "/" + strenv(SCRIPTS_FOLDER) + "/" + .)' "$f"
done
