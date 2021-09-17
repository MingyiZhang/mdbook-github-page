#!/usr/bin/env bash

branch_name="gh-pages"
branch=$(git branch --list $branch_name)

if [[ -z $branch ]]; then
  git branch -D gh-pages
fi

git checkout -b gh-pages
mdbook build documents
git add docs
git commit -m "Update docs web"
git push -u origin gh-pages --force

git checkout main