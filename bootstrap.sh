#!/bin/bash

cd "$(dirname "${BASH_SOURCE}")"
git pull
function doIt() {
    rsync --exclude "gap" --exclude "git" --exclude "init" --exclude "setup*" \
        --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" \
        --exclude ".gitignore" -av . ~
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt
  fi
fi
unset doIt
source ~/.profile

# Git user
printf "\nWhat is your Git user.name? "
read NAME
git config --global user.name "$NAME"
printf "\nWhat is your Git user.email (Git noreply)? "
read EMAIL
git config --global user.email $EMAIL

printf "\nSee https://help.github.com/articles/generating-a-new-gpg-key/"
gpg --full-generate-key
gpg --list-secret-keys --keyid-format LONG
printf "\nWhat is your GPG signinkey (after rsa4096/)? "
read SIGNINKEY
git config --global user.signingkey $SIGNINKEY
