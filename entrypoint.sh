#!/bin/sh -l

npm install

npm run build:prod

git-ftp push \
  --auto-init \
  --all \
  --force \
  --syncroot $INPUT_SYNCROOT \
  --user $INPUT_USER \
  --passwd $INPUT_PASSWORD \
  $INPUT_URL
