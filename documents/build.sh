#!/usr/bin/env bash

git branch -D gh-pages
git checkout -b gh-pages
mdbook build documents
cp documents/CNAME docs/CNAME
git add docs
git commit -m "Update docs web"
git push -u origin gh-pages --force

git checkout main