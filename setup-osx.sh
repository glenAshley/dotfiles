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
# install npm/node
# npm install -g nodemon grunt-cli
# sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/bin/subl
# ln -s ~/Dropbox/AppData/iTerm\ 2/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist


# synchronise app settings

# make directories
mkdir -p "~/Dropbox/AppData/Sublime Text 3/Installed Packages"
mkdir -p "~/Dropbox/AppData/Sublime Text 3/Packages"
mkdir -p "~/Library/Application Support/Sublime Text 3/Installed Packages"
mkdir -p "~/Library/Application Support/Sublime Text 3/Packages"
ln -s "~/Dropbox/AppData/Sublime Text 3/Installed Packages/" "~/Library/Application Support/Sublime Text 3/Installed Packages/"
ln -s "~/Dropbox/AppData/Sublime Text 3/Packages/" "~/Library/Application Support/Sublime Text 3/Packages/"
