#!/bin/sh

# turn off dashboard - turn back on w/ boolean NO
defaults write com.apple.dashboard mcx-disabled -boolean YES 

# turn off creation of .DS_Store on network drives
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# tcp segment size to something more 'modern'
sudo sysctl -w net.inet.tcp.mssdflt=1460
