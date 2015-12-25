#!/bin/bash

# install homebrew and cask
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git
brew tap phinze/homebrew-cask
brew tap homebrew/dupes
brew tap caskroom/versions
brew install brew-cask

brew cask install google-chrome 
brew cask install 1password
brew cask install alfred
brew cask install caffeine
brew cask install dropbox
brew cask install firefox
brew cask install flux
brew cask install iterm2
brew cask install sublime-text
brew cask install bootxchanger
brew cask install arq
brew cask install laullon-gitx
brew cask install jumpcut
brew cask install moom
brew cask install skype
brew cask install the-unarchiver
brew cask install karabiner
brew cask install seil

brew install rbenv
brew install ruby-build
rbenv init
rbenv install 1.9.3-p362
rbenv install 2.0.0-p0 
rbenv global 2.0.0-p0 
gem install bundler compass jekyll RedCloth sass bootstrap-sass mdless
rbenv rehash

brew install python
pip install virtualenv

brew install perl
brew install erlang

brew install mercurial

brew install ack
brew install the_silver_searcher
brew install autoconf
brew install colordiff
brew install curl
brew install emacs --cocoa
brew install findbugs
brew install fish
brew install ncftp
brew install openssl
brew install p7zip
brew install pdfgrep
brew install reattach-to-user-namespace
brew install rlwrap
brew install ssh-copy-id
brew install tmux
brew install wget
brew install zsh
brew install hub
brew install legit

brew install ispell --with-lang-en

