#!/bin/bash

# open applications to install in the default browser
open http://www.iterm2.com/
open https://www.dropbox.com/install2
# open https://agilebits.com/downloads
open http://atom.io/
open http://www.skype.com/en/download-skype/skype-for-computer/
open http://www.charlesproxy.com/latest-release/download.do


# open app store to install purchased apps
open -a App\ Store


# install home brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# install yarn & git
brew install yarn git bash-completion bash-git-prompt --without-node
# use nvm for node & npm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

