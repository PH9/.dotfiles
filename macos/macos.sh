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

# Run the screensaver if we're in the bottom-left hot corner.
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0

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

# Restart finder to make setting effect
killall -HUP Finder
