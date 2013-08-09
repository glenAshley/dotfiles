# Add .bin file to path, and local folder
export PATH=$HOME/.bin:$PATH:.

# Colours
export CLICOLOR=1

# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
    [ -r "$file" ] && source "$file"
done
unset file

# Prefer US English and use UTF-8
# Seems to break on Ubuntu
# export LANG="en_GB"
# export LC_ALL="en_GB.UTF-8" # Prefer individual settings
# export LC_TIME="en_GB.UTF-8"
# export LC_MONETARY="en_GB.UTF-8"
# export LC_MEASUREMENT="en_GB.UTF-8"
# export LC_PAPER="en_GB.UTF-8"
# export LC_ADDRESS="en_GB.UTF-8"

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
    shopt -s "$option" 2> /dev/null
done

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh
# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall

# add completion for git
[ -r ~/.git-completion.sh ] && source ~/.git-completion.sh

# If possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion


# NVM (node version manager)
[[ -s /Users/glen/.nvm/nvm.sh ]] && . /Users/glen/.nvm/nvm.sh
