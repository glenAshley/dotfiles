#!/bin/bash

# open applications to install in the default browser
open http://www.iterm2.com/
open https://www.dropbox.com/install2
open https://agilebits.com/downloads
open http://www.sublimetext.com/3
open https://www.google.com/intl/en/chrome/browser/canary.html
open http://www.skype.com/en/download-skype/skype-for-computer/
open http://www.keepassx.org/downloads/
open http://www.charlesproxy.com/latest-release/download.do


# open app store to install purchased apps
open -a App\ Store


# install home brew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
# install node.js, npm, grunt etc.
brew install node git bash-completion
npm install -g nodemon grunt-cli
#install meteor
curl https://install.meteor.com/ | sh
