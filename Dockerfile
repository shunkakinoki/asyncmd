FROM williamyeh/fswatch:1.1

RUN apt-get -y install hub=2.14.1 --no-install-recommends

COPY auto-commit.sh auto-commit.sh
