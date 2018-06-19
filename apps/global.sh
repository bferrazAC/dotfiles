#!/bin/bash

###############################################################################
# setup-apps
#
# A shell script to automate application setup on Mac OS X.
###############################################################################

###############################################################################
# Install applications with Homebrew Cask
###############################################################################
echo "Homebrew Cask: installing apps..."
brew cask install 1password
brew cask install adobe-creative-cloud
brew cask install atom
brew cask install dash
brew cask install docker
brew cask install dropbox
brew cask install firefox
brew cask install github-desktop
brew cask install google-cloud-sdk
brew cask install google-chrome
brew cask install google-drive
brew cask install hyper
brew cask install imageoptim
brew cask install java
brew cask install paw
brew cask install postman
brew cask install screaming-frog-seo-spider
brew cask install sketch
brew cask install sketch-toolbox
brew cask install skype
brew cask install slack
brew cask install spectacle
brew cask install spotify
brew cask install sublime-text
brew cask install toggldesktop
brew cask install transmit
brew cask install visual-studio-code

###############################################################################
# Cleanup
###############################################################################
brew cask cleanup
echo "macOS Apps Done Setup!"
