#!/usr/bin/env bash

latest_tag=$(git describe --abbrev=0 --tags)
gh_pages="gh-pages"

git checkout $gh_pages
git merge main --no-commit --no-ff
mdbook build documents
git add docs
git commit -m "Update docs web $latest_tag"
git push -u origin gh-pages --force

git checkout main