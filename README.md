# My Mac Setup

## MacOS Preferences

### OS Changes

```sh
# Enable repeating keys by pressing and holding down keys
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Sort folders first in Finder
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Use current directory as default search scope in Finder
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Show path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true

# Restart Finder for changes to take effect
killall Finder
```

### System Preferences

- Menu Bar > Uncheck "Show in Menu Bar" for Spotlight and Siri
- Dock > Automatically hide the dock
- Trackpad > Tap to click

## CommandLine Tools for Xcode

```sh
sudo xcode-select --install
```

## Homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

---

## iTerm2

```
brew install --cask iterm2
```

<details>
    <summary>Customisation</summary>

1. Import [Dracula theme](iterm2/Dracula.itermcolors)
2. Import [preferences file](iterm2/com.googlecode.iterm2.plist) using [these instructions](https://gitlab.com/gnachman/iterm2/-/wikis/Move-Settings-Between-Machines#back-up-user-defaults)
</details>

---

## zsh Setup

```sh
# Install zsh
brew install zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install forked spaceship theme
git clone https://github.com/anurag-roy/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Paste .zshrc file

```

## Free Apps

- [Brooklyn](https://github.com/pedrommcarrasco/Brooklyn) `brew install --cask brooklyn`
- [Alfred](https://www.alfredapp.com/) `brew install --cask alfred`
- [Numi](https://numi.app/) `brew install --cask numi`
- [Numi Alfred Integration](https://github.com/nikolaeu/numi/wiki/Alfred-Integration)
- [Discord](https://discord.com/) `brew install --cask discord`
- [Skype](https://www.skype.com/en/get-skype/) `brew install --cask skype`
- [IINA](https://iina.io/) `brew install --cask iina`
- [Sideloadly!](https://sideloadly.io/#download)
- [Rectangle](https://rectangleapp.com/) `brew install --cask rectangle`
- [AltTab](https://alt-tab-macos.netlify.app/) `brew install --cask alt-tab`
- [Amphetamine](https://apps.apple.com/us/app/amphetamine/id937984704)
- [ImageOptim](https://imageoptim.com/mac) `brew install --cask imageoptim`
- [Windscribe](https://windscribe.com/) `brew install --cask windscribe`
- [Transmission](https://transmissionbt.com/download/) `brew install --cask transmission`
- [TextMate](https://macromates.com/) `brew install --cask textmate`

## Dev Tools

- [Chrome](https://www.google.com/intl/en_in/chrome/), [Chrome Canary](https://www.google.com/intl/en_in/chrome/canary/)
- [VS Code Insiders](https://code.visualstudio.com/insiders/)

  Settings > Select "Turn on Settings Sync" > Sign in

  And everything should be good to go. In case anything goes wrong, use json/script from vscode folder.

- [Safari TP](https://developer.apple.com/safari/technology-preview/)
- [Insomnia](https://insomnia.rest/) `brew install --cask insomnia`

# Paid Apps

- Alfred Powerpack
- Bartender
- Sensei
- iStats Menu Bar
- Downie 4
- Fantastical
