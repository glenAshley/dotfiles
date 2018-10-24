# GAPs Dotfiles

Mostly borrowed from
https://github.com/mathiasbynens/dotfiles/
https://github.com/paulirish/dotfiles/

## Setup

To set up, or to update

```
bootstrap.sh
```

Then, if on a MacOS machine

```
setup-osx.sh
```

This opens webpages for downloads, installs homebrew etc.

## iTerm

Open iTerm preferences and choose "Load preferences from a custom URL or folder", and choose

```
~/Dropbox/AppData/iTerm 2
```

## Extra

Extra is for config which isn't committed to the repo, eg.

```
export MY_SECRET="don't tell anyone"
```

## Troubleshooting

**nvm**
if `nvm` gives errors like

```
nvm is not compatible with the npm config "prefix" option
```

see [Best way to install and use nvm on Mac](https://medium.com/@isaacjoe/best-way-to-install-and-use-nvm-on-mac-e3a3f6bc494d)
