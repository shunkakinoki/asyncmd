#!/bin/bash

NEW_UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
git checkout -b auto-commit/$NEW_UUID
git add --all
git commit -am "Changed file $*, Auto-Commit V0.1"
git push --set-upstream origin $(git branch-name)