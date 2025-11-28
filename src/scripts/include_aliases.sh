#!/bin/bash

for f in "$SRC_PATH"/{**,.}/*.yml; do
  # shellcheck disable=SC2016
  yq eval --inplace 'load(strenv(SRC_PATH) + "/" + strenv(ALIAS_FILE)) as $aliases | (.. | select(. | tag == "!alias")) |= $aliases[.]' "$f"
done
rm -f "${SRC_PATH}/${ALIAS_FILE}"
