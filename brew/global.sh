#!/bin/bash

source common/functions.sh

###############################################################################
# setup-brew
#
# A shell script to automate system tool setup for Mac OS X.
###############################################################################


###############################################################################
# Install Xcode command line tools
###############################################################################
echo "Installing Xcode Command Line Tools..."
xcode-select --install


###############################################################################
# Check for Homebrew, else install
###############################################################################
echo "Checking for, or Installing Homebrew..."
if [ -z `command -v brew` ]; then
    echo "Brew is missing! Installing it..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi;


###############################################################################
# Make sure we're on latest Homebrew
###############################################################################
echo "Homebrew: updating..."
brew update


###############################################################################
# Upgrade any already-installed formulae
###############################################################################
echo "Homebrew: upgrading..."
brew upgrade


###############################################################################
# Install utilities
###############################################################################
echo "Homebrew: updating default unix tools..."
brew install coreutils
brew install moreutils
brew install findutils
brew install bash
brew install bash-completion
brew tap homebrew/dupes
brew install homebrew/dupes/grep
brew install homebrew/dupes/screen


###############################################################################
# Install mongo db
###############################################################################
if which mongod &> /dev/null; then
    msg_checking "mongodb"
else
    msg_install "mongodb" "brew install mongodb"
    brew install mongodb --with-openssl
    msg_ok "OK"
fi

###############################################################################
# Symbolic links
###############################################################################
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
sudo mkdir -p /data/db
ls -ld /data/db/
sudo chmod 0755 /data/db
sudo chown mongod:mongod /data/db


###############################################################################
# Run Homebrew cleanup to remove installation/cached files
###############################################################################
echo "Homebrew: cleaning up..."
brew cleanup