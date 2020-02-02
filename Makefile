run:
	@echo "make run asyncmd..."
	fswatch -0 -d src | xargs -0 -n 1 make auto-commit

auto-commit:
	-git checkout -b auto-commit
	-git add src
	-git commit -am "Changed file $*, Auto-Commit V0.1"
	-git push --set-upstream origin $(git branch-name)
	-hub pull-request --draft --no-edit