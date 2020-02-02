#!/bin/bash

git checkout -b auto-commit
git add src
git commit -am "Changed file $*, Auto-Commit V0.1"
git push --set-upstream origin $(git branch-name)
<<<<<<< HEAD
hub pull-request --no-edit
=======
>>>>>>> ee7d1b7e2019a9600191824a53ae4829faea38ee
git checkout master
git pull