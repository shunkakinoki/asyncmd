#!/bin/bash

NEW_UUID=$(LC_ALL=C tr -dc 'A-Za-z0-9' </dev/urandom | head -c 13)
BRANCH_NAME=`auto-commit/${NEW_UUID}`

echo $BRANCH_NAME
git checkout master
git pull
git checkout -b $BRANCH_NAME
git add src
git commit -am "Changed file $*, Auto-Commit V0.1"
git push --set-upstream origin $(git branch-name)
