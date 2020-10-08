#!/bin/sh -l

git-ftp push \
  --auto-init \
  --all \
  --force \
  --syncroot $INPUT_SYNCROOT \
  --user $INPUT_USER \
  --passwd $INPUT_PASSWORD \
  $INPUT_URL
