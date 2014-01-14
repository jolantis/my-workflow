# Setup Mac OS X

This file represents a guide to make a clean install in Mac OS. Here is located all commands and procediments that's I have to do to have a perfect build.

## 1. Run Software Update

Make sure everything is up to date.

![](http://f.cl.ly/items/382O04411U0a1i0G2E3j/software-update.png)

## 2. Install [Xcode](https://developer.apple.com/xcode/) and its ["Command Line Tools"](https://developer.apple.com/downloads/index.action)

1. Go to App Store and install Xcode.
2. Open and accept the terms
3. Then go to the terminal and install "Command Line Tools":

```sh
$ xcode-select --install
```

> Notice this only works for Mac OS X Mavericks (10.9). For earlier versions, continue to use the in-app download in Xcode.

## 3. Install Dotfiles

For shell I'm using [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), because it's very simple to install and configure. I just have to make a few simple configurations:

- Install oh-my-zsh with these commands:

```
# install via curl
$ curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
# copy .zshrc template
$ cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
# set zsh as your default shell
$ chsh -s /bin/zsh
```

- Add this line in `.zshrc`:

```sh
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
export PATH=$PATH:$HOME/.rvm/bin
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
```

- And put my [function and alias](https://gist.github.com/pedronauck/8422840) configuration in `.oh-my-zsh/custom` folder.

## 4. Install Softwares

Many softwares can be installed through [homebrew-cask](https://github.com/phinze/homebrew-cask) which makes the process way simpler. To install is too simple:

```sh
$ brew tap phinze/cask
$ brew install brew-cask
```

To facilitate I made a file containing a [list of apps](https://github.com/pedronauck/my-workflow/blob/master/apps.md) that always install. Simply run via curl:

```sh
curl -L https://raw.github.com/pedronauck/my-workflow/master/utils/apps.sh | sh
```

Just make sure to move all apps from `/opt/homebrew-cask/Caskroom/` to `/Applications`. And to remove all installations files from `/Library/Caches/Homebrew`.

## 5. Generate SSH keys for GitHub

Visit [GitHub's official guide](https://help.github.com/articles/generating-ssh-keys#platform-mac) for instructions.

From that point on you're going to be able to do some git operations with GitHub \o/

## 6. Set [Chrome Canary](https://www.google.com/intl/en/chrome/browser/canary.html) as default browser

1. Launch Safari
2. Apple ➜ Preferences
3. General ➜ Default Web Browser
4. Select “Chrome Canary” from the drop-down menu

## 7. Configure [Sublime Text](http://sublimetext.com/)

***TODO: Create a repo containing my sublime settings***

There you can find the whole list of plugins, preferences and snippets.

## 8. Install [Alfred](http://alfredapp.com) Workflows

Load alfred preferences through `~/Dropbox/personal/apps/alfred` and set Alfred to save preferences in Dropbox.

![](http://i44.tinypic.com/123aatk.png)

## 9. Download [IE test VMs](http://www.modern.ie/en-us/virtualization-tools) for [VirtualBox](https://www.virtualbox.org/)

These take a while to download, so maybe do it on a separate day as a background process.

```sh
# IE8 - XP
curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/OSX/IE8_XP/IE8.XP.For.MacVirtualBox.ova"

# IE9 - Win7
curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/OSX/IE9_Win7/IE9.Win7.For.MacVirtualBox.part{1.sfx,2.rar,3.rar,4.rar,5.rar}"

# IE10 - Win8
curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/OSX/IE10_Win8/IE10.Win8.For.MacVirtualBox.part{1.sfx,2.rar,3.rar}"
```

## 11. Profit!

:)