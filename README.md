# GAPs Dotfiles

Mostly borrowed from
https://github.com/mathiasbynens/dotfiles/
https://github.com/paulirish/dotfiles/


## Setup

run sync.sh to set up, and to update


## Extra

Extra is for config which isn't committed to the repo

eg.

    # Git
    export GIT_AUTHOR_NAME="Glen Ashley Peterson"
    export GIT_AUTHOR_EMAIL=glen@screenrev.com
    export GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
    export GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
    git config --global user.name "$GIT_AUTHOR_NAME"
    git config --global user.email "$GIT_AUTHOR_EMAIL"
