# New Laptop Setup

Documentation and scripts to quickly set up a new MacBook Laptop.

- [Application Installs](#appliation-installs)

  - [Install Homebrew](#install-homebrew)

  - [Install Raycast to replace MacOs Spotlight](#install-raycast-to-replace-macos-spotlight)
    - [Set up RayCast](#set-up-raycast)
  - [Install Apps via Brew](#install-apps-via-brew)

- [Manual Installs](#manual-installs)

  - [Application Websites](#application-websites)
  - [Mac App Store Installs](#mac-app-store-installs)

- [Configuration](#configuration)
  - [System Settings](#system-settings)
    - [Dock](#dock)
    - [Desktop and Stage Manager](#desktop-and-stage-manager)
    - [Widgets](#widgets)
  - [Finder](#finder)
- [Individual Application configuration](#individual-application-configuration)
  - [Hazel](#hazel)
  - [VS Code](#vs-code)
    - [Settings](#settings)
    - [Extensions](#extensions)
  - [Warp Terminal](#warp)
    - [Install Oh-My-Zsh](#install-oh-my-zsh)
    - [Settings](#settings-1)
- [Browser Extensions](#browser-extensions)
  - [Safari Settings & Extensions](#safari-settings-extensions)
  - [Firefox, Chrome Settings & Extensions](#firefox-chrome-settings-extensions)
- [SSH Keys](#ssh-keys)

## Application Installs

### Install Homebrew

First, install [Homebrew](https://brew.sh/).

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

After the install, you will be prompted to run two commands (see below).

```
`(echo; echo 'eval "$ (/opt /homebrew/bin/brew shellenv)! ) ›> /Users/'$HOME'/.zprof
`eval "$ (/opt/homebrew/bin/brew shellenv)"`
```

### Install Raycast to replace MacOs Spotlight

```
brew install raycast
```

### Set up RayCast

- Settings:
  - Disable Show Spotlight search
  - Assign Command-Space bar to Raycast
- Store:
  - hiddenbar
  - Search Emoji and symbols

## Install Apps via Brew

Run this command to install apps. [See App List](list-brew-installs.txt).

```
xargs brew install < ./list-brew-installs.txt
```

## Manual Installs

### Application Websites

Apps that are not available via `brew` will be installed manually. The following command will either open browser window to the App's website, download page or the latest DMG file. ([See App List](list-manual-install-apps.txt)).

```
xargs open < manual-install-apps.txt
```

#### Mac App Store Installs

Download and install from App Store:

- Drafts
- Due
- Vinegar

## Configuration

### System Settings

#### Dock

`System Preferences > Desktop & Dock`

- Turn on Automatically hide and show Dock
- Set Dock to the right as minimized as possible
- Disable animate openings
- Disable show suggested and recent apps

#### Desktop and Stage Manager

`System Preferences > Desktop & Dock > Desktop and Stage Manager`

- Disable "Show items" on Desktop
- Disable "Click Wallpaper to reveal Desktop"

#### Widgets

`System Preferences > Desktop & Dock > Widgets`

- Disable on widgets on desktop

### Finder

Open the Finder's preferences/settings: `cmd +,`

- Check "Open folders tabs instead of windows"
- Uncheck "Show warning before changing file extensions"
- Check "Remove items from the Trash every 30 days" (this might be better handled with Hazel)
- Search default: change to "Search current folder"
- Check: Menu > View > Show Path Bar
- Check: Menu > View > Show Status Bar

UI changes:

- Remove non-essential items in Sidebar
- Sort items in sidebar based on frequency of use.

## Individual Application configuration

## Hazel

[Hazel](https://www.noodlesoft.com/hazel.php) is a Mac app that allows you to configure your

- Configure to move any files in `Downloads` older than a 1 week to the trash.l
- Configure so trash is emptied every 2 weeks.

## VS Code

### Settings

- See my settings in [VS Code Settings](settings-vscode.md).

### Extensions

- See my extensions in [VS Code Extensions](extensions-vscode.md).

## Warp

[Warp](https://www.warp.dev) is a terminal written in Rust with built in features for git, AI queries, etc.

If you ran the [Install Apps via Brew](#install-apps-via-brew), Warp has already been installed.

### Install Oh-My-Zsh

> "[oh-my-zsh](https://ohmyz.sh) is a delightful, open source, community-driven framework for managing your Zsh configuration. It comes bundled with thousands of helpful functions, helpers, plugins, themes, and a few things that make you shout.."

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Settings

- My my settings in [Warp Settings](settings-warp.md).

## Browser Extensions

### Safari Settings & Extensions

#### Settings

- Set DuckDuckGo (DDG) as default search engine.

#### Extensions

- Install Vinegar Extension (downloaded in [Manual Installs](#manual-installs))
  [“Vinegar”](https://apps.apple.com/us/app/vinegar-tube-cleaner/id1591303229) is a Safari extension for iPhone, iPad, and Mac that replaces the YouTube player on youtube.com with a minimal HTML player (bonus: it blocks ads).

### Firefox, Chrome Settings & Extensions

- Install [React Dev tools](https://react.dev/learn/react-developer-tools)
- Install [Dark Reader](https://darkreader.org)
- Install [uBlock Origin](https://ublockorigin.com)
- Install [Privacy Badger](https://privacybadger.org)
- Install [Decentraleyes](https://decentraleyes.org)

#### Firefox

- Disable Recommend stories in Home Content
- Disable Web search in Home Content
- Disable Recent activity in Home Content
- Set new tab to open in blank page
- Set DDG as default search engine

## SSH Keys

Follow the [steps in GitHub's docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

```
ssh-keygen -t ed25519 -C "your_email@example.com"
```

```
eval "$(ssh-agent -s)"
```

```
touch ~/.ssh/config && echo 'Host github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519' > ~/.ssh/config
```

```
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
```

### Copy key to github

```
pbcopy < ~/.ssh/id_ed25519.pub &&
open https://github.com/settings/keys
```