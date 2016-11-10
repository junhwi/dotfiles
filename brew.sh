#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

brew install bash-completion
# add mvn auto competion
curl -L -o $(brew --prefix)/etc/bash_completion.d/mvn https://raw.github.com/dimaj/maven-bash-completion/master/bash_completion.bash


brew install git
brew install git-lfs

# Remove outdated versions from the cellar.
brew cleanup
