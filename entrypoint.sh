#!/bin/sh -l

npm install
npm run build:prod

git config --global user.email "you@example.com"
git config --global user.name "Your Name"
git add .
git commit -m "compiled assest"


git-ftp push \
  --auto-init \
  --all \
  --force \
  --syncroot $INPUT_SYNCROOT \
  --user $INPUT_USER \
  --passwd $INPUT_PASSWORD \
  $INPUT_URL
