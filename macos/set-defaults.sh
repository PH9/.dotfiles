#!/usr/bin/env bash
# Sets reasonable macOS defaults.
#
# Or, in other words, set shit how I like in macOS.
#
# The original idea (and a couple settings) were grabbed from:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.macos
#
# Run ./set-defaults.sh and you'll be good to go.

# Use AirDrop over every interface. srsly this should be a default.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder.
chflags nohidden ~/Library

# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 1

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Show hidden files in Finder
defaults write com.apple.Finder AppleShowAllFiles -bool true

# Show files extension
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Hide Safari's bookmark bar.
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Announce every quarter hour with Deniel sound
defaults write com.apple.speech.synthesis.general.prefs TimeAnnouncementPrefs -dict TimeAnnouncementsEnabled -bool YES \
    TimeAnnouncementsIntervalIdentifier -string EveryQuarterHourInterval \
    TimeAnnouncementsVoiceSettings '{ VoiceIdentifier = "com.apple.speech.synthesis.voice.daniel.premium"; }'

# Allow iOS simulator to use fullscreen along with xcode
defaults write com.apple.iphonesimulator AllowFullscreenMode -bool YES

# Not to show iOS simulator device bezels
defaults write com.apple.iphonesimulator FloatingNameMode 2

# Show internal hdd, external hdd, and mounted server on desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true

# Set macOS as dark theme
sudo defaults write /Library/Preferences/.GlobalPreferences.plist _HIEnableThemeSwitchHotKey -bool true

# Restart finder to make setting effect
killall -HUP Finder
