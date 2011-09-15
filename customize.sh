#!/bin/sh

# turn off dashboard - turn back on w/ boolean NO
defaults write com.apple.dashboard mcx-disabled -boolean YES 

# turn off creation of .DS_Store on network drives
defaults write com.apple.desktopservices DSDontWriteNetworkStores true
