#!/bin/bash

# open applications to install in the default browser
open http://www.iterm2.com/
open https://code.visualstudio.com/download
open https://www.dropbox.com/en_GB/downloading
open https://www.microsoft.com/en-gb/microsoft-365/microsoft-teams/download-app
open https://www.skype.com/en/get-skype/
open https://support.sonos.com/s/downloads
open https://toggl.com/track/toggl-desktop/
open https://tunnelblick.net/downloads.html
open https://www.figma.com/downloads
open https://cyberduck.io/download/


# open app store to install purchased apps
open -a App\ Store
echo "Install 1Password, Slack, NordVPN, WhatsApp, XCode, Things, GIPHY Capture"

# install home brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# form ARM process
sudo mkdir /opt/homebrew
sudo chown -R $(whoami):staff /opt/homebrew
curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C /opt/homebrew
# install zsh
brew install zsh
# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "Open ~/.zshrc and add `zsh-autosuggestions zsh-yarn-completions` to `plugins`"
# install node & yarn
brew install node yarn 
# use nvm for node & npm?
# curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash



# echo instructions
echo ""
echo "Iterm2 Instructions"
echo "Preferences > General > Preferences"
echo "Load preferences from a custom folder or URL"
echo "iCloud Drive/AppData/iTerm2"
echo "-------"
echo ""
echo "Visual Studio Code"
echo "Open the Command Palette (⇧⌘P) and type 'shell command' to find the Shell Command:"
echo "Install 'code' command in PATH command."
echo "-------"
echo ""
echo "Tunnelblick"
echo "Open the Command Palette (⇧⌘P) and type 'shell command' to find the Shell Command:"
echo "Install 'code' command in PATH command."
echo "-------"
echo ""
