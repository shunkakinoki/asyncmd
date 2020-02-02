#!/bin/bash

NEW_UUID=$(LC_ALL=C tr -dc 'A-Za-z0-9' </dev/urandom | head -c 13)
BRANCH_NAME=`auto-commit/${NEW_UUID}`

git checkout master
git pull

if [ `git branch --list $BRANCH_NAME` ]
then
    git checkout -b $BRANCH_NAME
    git add src
    git commit -am "Changed file $*, Auto-Commit V0.1"
    git push
else
    git checkout -b $BRANCH_NAME
    git add src
    git commit -am "Changed file $*, Auto-Commit V0.1"
    git push --set-upstream origin $(git branch-name)
    hub pull-request --no-edit
    
fi
