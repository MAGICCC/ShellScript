#!/bin/bash

for fil in `ls`; do
  if [ -f "${fil}" ]; then
    openssl dgst -sha512 ${fil}
  fi
done
