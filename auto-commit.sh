#!/bin/bash

git checkout -b auto-commit
git add --all
git commit -am "Changed file $*, Auto-Commit V0.1"
git push --set-upstream origin $(git branch-name)
hub pull-request --no-edit
git checkout master
git pull