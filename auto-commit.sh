#!/bin/bash

git checkout -b auto-commit
git add src
git commit -am "Changed file $*, Auto-Commit V0.1"
git push --set-upstream origin $(git branch-name)
git checkout master
git pull