# New Laptop Setup

Documentation and scripts to quickly set up a new MacBook Laptop per my preferences and requirements. Inspired by [w3cj](https://github.com/w3cj)'s YT video: [Set up a Mac in 2024 for Power Users and Developers](https://www.youtube.com/watch?v=GK7zLYAXdDs).

## TOC

- [Application Installs](#application-installs)

  - [Install Homebrew](#install-homebrew)

  - [Install Raycast to replace MacOs Spotlight](#install-raycast-to-replace-macos-spotlight)
    - [Set up RayCast](#set-up-raycast)
  - [Install Apps via Brew](#install-apps-via-brew)

- [Manual Installs](#manual-installs)

  - [Application Websites](#application-websites)
  - [Mac App Store Installs](#mac-app-store-installs)

- [System Preferences and Settings](#system-preferences-and-settings)
  - [Control Center](#control-center)
  - [Dock](#dock)
  - [Desktop and Stage Manager](#desktop-and-stage-manager)
  - [Notifications](#notifications)
  - [Trackpad](#trackpad)
  - [Widgets](#widgets)
- [Individual Application Configuration](#individual-application-configuration)
  - [Finder](#finder)
  - [Hazel](#hazel)
  - [VS Code](#vs-code)
    - [Settings](#settings)
    - [Extensions](#extensions)
  - [Warp Terminal](#warp)
    - [Install Oh-My-Zsh](#install-oh-my-zsh)
    - [Settings](#settings-1)
- [Browser Extensions](#browser-extensions)
  - [Safari Settings and Extensions](#safari-settings-and-extensions)
  - [Firefox, Chrome Settings and Extensions](#firefox-chrome-settings-and-extensions)
- [SSH Keys](#ssh-keys)
- [Todo](#todo)

## Application Installs

### Install Homebrew

First, install [Homebrew](https://brew.sh/).

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

After the install, you will be prompted to run two commands.

### Install Raycast to replace MacOS Spotlight

MacOS Spotlight is a quick way to open applications, perform searches for files, and many other tasks. I have replaced Spotlight with [RayCast](https://www.raycast.com) because it has so many features: extensibility, snippets, integrated ChatGPT, and more.

```
brew install raycast
```

### Set up RayCast

- Settings:
  - Disable Show Spotlight search in System Settings > Keyboard Shortcuts > Spotlight
  - Assign Command-Space bar to Raycast (Raycast Settings)
- Store:
  - hiddenbar
  - Search Emoji and symbols

## Install Apps via Brew

Run this command to install a list of apps. [See my list](list-brew-installs.txt).

```
xargs brew install < ./list-brew-casks.txt
xargs brew install < ./list-brew-formula.txt
```

## Manual Installs

Apps that are not available via `brew` will be installed manually. The following command will either open browser window to the App's website, download page or the latest DMG file. ([See App List](list-manual-install-apps.txt)).

### Application Websites

```
xargs open < ./list-manual-install-apps.txt
```

### Mac App Store Installs

Download and install from [Mac App Store](https://apps.apple.com/us/genre/mac/id39?mt=12):

- Drafts ([website](https://getdrafts.com/), [store](https://apps.apple.com/us/app/drafts/id1236254471))
- Due ([website](https://www.dueapp.com/), [store](https://apps.apple.com/us/app/due-reminders-timers/id390017969))
- Vinegar Extension ([store](https://apps.apple.com/us/app/vinegar-tube-cleaner/id1591303229))

## System Preferences and Settings

### Control Center

#### Modules

`System Preferences > Control Center`

- Turn Bluetooth "Show in Menu Bar"

#### Menu Bar Only

- Clock - uncheck Show Day of Week
- Set to "Don't Show": Spotlight, Siri,

### Dock

`System Preferences > Desktop & Dock`

- Turn on Automatically hide and show Dock.
- Set Dock to the right as minimized as possible.
- Disable animate openings.
- Disable show suggested and recent apps.

### Desktop and Stage Manager

`System Preferences > Desktop & Dock > Desktop and Stage Manager`

- Disable "Show items" on Desktop.
- Set "Click Wallpaper to reveal Desktop" to "Only in Stage Manager"

### Notifications

`System Preferences > Notifications`

- Turn off notifications for Game Center, Home, Tips, and others as needed.

### Trackpad

`System Preferences > Trackpad`

- "Secondary click" set to Two Fingers (default)
- Enable "Tap to click"

### Widgets

`System Preferences > Desktop & Dock > Widgets`

- Disable Widgets on Desktop.

## Individual Application Configuration

### Finder

Open the Finder's preferences/settings: `cmd +,`

- General: Uncheck all of the items to show on Desktop
- Advanced: "When performing a search" - set to "Search this Mac"
- Advanced: Uncheck "Show warning before changing file extensions".
- Advanced: Uncheck "Show warning before changing an extension"
- Advanced: Uncheck "Show warning before emptying trash"
- Search default: change to "Search this Mac".
- Enable: Menu > View > Show Path Bar.
- Enable: Menu > View > Show Status Bar.

UI changes:

- Remove non-essential items in Sidebar.
- Sort items in sidebar based on frequency of use.

### Hazel

[Hazel](https://www.noodlesoft.com/hazel.php) is "Automated Organization for Your Mac."

- Configure to move any files in `Downloads` older than a 1 week to the trash.
- Configure to move any `Screenshot*` files to trash after 5 days.
- Enable delete files in trash that are greater than 1 week old
- Enable App Sweep

### VS Code

##### Extensions

- See my extensions in [VS Code Extensions](extensions-vscode.md) and command to install them via CLI.

#### Settings

- See my settings in [VS Code Settings](settings-vscode.md).

### Warp

[Warp](https://www.warp.dev) is a terminal written in Rust with built in features for git, AI queries, etc.

If you ran the [Install Apps via Brew](#install-apps-via-brew), Warp has already been installed.

#### Install Oh-My-Zsh

> "[oh-my-zsh](https://ohmyz.sh) is a delightful, open source, community-driven framework for managing your Zsh configuration. It comes bundled with thousands of helpful functions, helpers, plugins, themes, and a few things that make you shout.."

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### Settings

- My my settings in [Warp Settings](settings-warp.md).

## Browser Extensions

### Safari Settings and Extensions

#### Settings

- Search: Set DuckDuckGo (DDG) as default search engine.
- Verify "Use ⌘-1 through ⌘-9 to switch tabs" checked
- Verify "⌘-click opens a link in a new tab" checked
- Verify "When a new tab or window opens, make it active" Unchecked
- Advanced: Check "Show features for web developers".
- Enable Vinegar in Extensions.

- Enable "Always show Tab Bar" Menu > View
- Enable "Show Favorite Bar" Menu > View
- Enable "Show Status Bar" Menu > View

#### Extensions

- Install Vinegar Extension (downloaded in [Manual Installs](#manual-installs))
  [“Vinegar”](https://apps.apple.com/us/app/vinegar-tube-cleaner/id1591303229) is a Safari extension for iPhone, iPad, and Mac that replaces the YouTube player on youtube.com with a minimal HTML player (bonus: it blocks ads).

### Firefox, Chrome Settings and Extensions

- Install [React Dev tools](https://react.dev/learn/react-developer-tools)
- Install [Redux DevTools](https://addons.mozilla.org/en-US/firefox/addon/reduxdevtools/)
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

## Todo

- Set up my dotfile configurations per [https://github.com/w3cj/dotfiles](https://github.com/w3cj/dotfiles)
