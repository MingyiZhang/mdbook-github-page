#!/usr/bin/env bash

git checkout gh-pages
git merge main
mdbook build documents --dest-dir ../docs
git add docs
git commit -m "Update docs web"
git push -u origin gh-pages

git checkout main