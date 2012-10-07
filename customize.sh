#!/bin/sh

# turn off dashboard - turn back on w/ boolean NO
defaults write com.apple.dashboard mcx-disabled -boolean YES 

### make the dock as unobtrusive as possible
defaults write com.apple.dock tilesize -int 1
defaults write com.apple.dock pinning -string start

# turn off creation of .DS_Store on network drives
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# tcp segment size to something more 'modern'
sudo sysctl -w net.inet.tcp.mssdflt=1460

# modify boot time images
sudo cp BootLogo.png /System/Library/CoreServices/
sudo cp DefaultDesktop /System/Library/CoreServices/

# Show remaining battery time; hide percentage
defaults write com.apple.menuextra.battery ShowPercent -string "NO"
defaults write com.apple.menuextra.battery ShowTime -string "YES"

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable opening and closing window animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# Increase window resize speed for Cocoa applications
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# Allow quitting Finder via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Disable window animations and Get Info animations in Finder
defaults write com.apple.finder DisableAllAnimations -bool true

# Show all filename extensions in Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Empty Trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Remove the auto-hiding Dock delay
defaults write com.apple.Dock autohide-delay -float 0
# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Disable the Ping sidebar in iTunes
defaults write com.apple.iTunes disablePingSidebar -bool true

# Disable all the other Ping stuff in iTunes
defaults write com.apple.iTunes disablePing -bool true

# Set my preferred desktop background
sudo cp Solarized-Darker.png "/Library/Desktop Pictures/Solid Colors/"
defaults write com.apple.desktop Background '{default =     {
       BackgroundColor =         (
           "0.2549019753932953",
           "0.4117647111415863",
           "0.6666666865348816"
       );
       Change = Never;
       ChangePath = "/Library/Desktop Pictures/Solid Colors";
       ChangeTime = 1800;
       CollectionString = "Apple Images";
       DApertureExpanded = 1;
       DAppleExpanded = 1;
       DFolders =         (
           "~/Wallpaper"
       );
       DFoldersExpanded = 1;
       DRSSExpanded = 0;
       DRSSFeeds =         (
       );
       DSKDesktopPrefPane =         {
           UserFolderPaths =             (
           );
       };
       DiPhotoExpanded = 1;
       DrawBackgroundColor = 1;
       ImageFileAlias = <00000000 00d60003 00000000 cae79faa 0000482b 00000000 00079f0c 015f86fa 0000cba2 16b70000 00000920 fffe0000 00005062 7368ffff ffff0001 000c0007 9f0c0007 9e4e0005 2024000e 002a0014 0053006f 006c0061 00720069 007a0065 0064002d 00440061 0072006b 00650072 002e0070 006e0067 000f0012 00080064 00610065 00640061 006c0075 00730012 003a4c69 62726172 792f4465 736b746f 70205069 63747572 65732f53 6f6c6964 20436f6c 6f72732f 536f6c61 72697a65 642d4461 726b6572 2e706e67 00130001 2f00ffff 0000>;
       ImageFilePath = "/Library/Desktop Pictures/Solid Colors/Solarized-Darker.png";
       NewChangePath = "/Library/Desktop Pictures/Solid Colors";
       NewImageFilePath = "/Library/Desktop Pictures/Solid Colors/Solarized-Darker.png";
       PathIsAperture = 0;
       PathIsIPhoto = 0;
       Placement = Crop;
       Random = 0;
       TimerPopUpTag = 6;
   };}'

# Kill affected applications
for app in Safari Finder Dock Mail SystemUIServer; do killall "$app" > /dev/null 2>&1; done
echo "Done. Note that some of these changes require a logout/restart to take effect."

