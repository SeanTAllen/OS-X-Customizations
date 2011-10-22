#!/bin/sh

# turn off dashboard - turn back on w/ boolean NO
defaults write com.apple.dashboard mcx-disabled -boolean YES 

### make the dock as unobtrusive as possible
defaults write com.apple.dock tilesize -int 1
defaults write com.apple.dock pinning -string start

### removes the dock entirely <= beware there be dragons here
# sudo rm -rf /System/Library/CoreServices/Dock.app

# turn off creation of .DS_Store on network drives
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# tcp segment size to something more 'modern'
sudo sysctl -w net.inet.tcp.mssdflt=1460
