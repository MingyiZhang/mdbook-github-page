#!/usr/bin/env bash

latest_tag=$(git describe --abbrev=0 --tags)
gh_pages="gh-pages"
pages_tag="$latest_tag-docs"

git checkout $gh_pages
git merge main --no-commit --no-ff
mdbook build documents
git add docs
git commit -m "Update web docs: $latest_tag"
git tag "$pages_tag"
git push -u origin gh-pages --force
git push -u origin "$pages_tag"

git checkout main