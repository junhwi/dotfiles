#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

brew install bash-completion

brew install git
brew install git-lfs

# Remove outdated versions from the cellar.
brew cleanup
