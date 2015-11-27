#!/bin/bash

###
# Run this after installing Dropbox, Sublime etc.
###

# synchronise app settings

# Sublime Text
mkdir -p "~/Dropbox/AppData/Sublime Text 3/Installed Packages"
mkdir -p "~/Dropbox/AppData/Sublime Text 3/Packages"
mkdir -p "~/Library/Application Support/Sublime Text 3/Installed Packages"
mkdir -p "~/Library/Application Support/Sublime Text 3/Packages"
ln -s "~/Dropbox/AppData/Sublime Text 3/Installed Packages/" "~/Library/Application Support/Sublime Text 3/Installed Packages/"
ln -s "~/Dropbox/AppData/Sublime Text 3/Packages/" "~/Library/Application Support/Sublime Text 3/Packages/"
sudo mkdir ~/.bin
sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/.bin/subl

# iTerm
ln -s ~/Dropbox/AppData/iTerm\ 2/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
