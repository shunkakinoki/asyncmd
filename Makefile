run:
	fswatch -0 -d src | xargs -0 -n 1 bash ./auto-commit.sh