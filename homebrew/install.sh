#!/bin/bash
# Filename: /brew/brew-install.sh | Created 1 Sept 2021
# Description: A Bash Script To Install Homebrew and xcode dev tools
# Author: @AtropineTears
# Company: @NightshadeLabs

# Todo: Add --cert-status (needs OpenSSL) to homebrew install and return hash of file (export it)

if test ! $(which brew); then
  echo "  Installing Homebrew for you."

  #-------Pre-Reqs---------#
  xcode-select --install

  #-------Installation-------#
  # Description: Installs Homebrew with cURL using TLS 1.3 as minimum, and only resolves to using IPv4 Addresses.
  # Maybe Switch  To This| /usr/bin/ruby -e "$(curl --tlsv1.3 --ipv4 -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  /bin/bash -c "$(curl --tlsv1.3 --ipv4 -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

  # Makes sure Homebrew Auto-Updates before running brew install, brew upgrade, or brew tap
  # Default: Turned Off
  # export HOMEBREW_NO_AUTO_UPDATE=0

  #-------Set Autoupdate and Set Autoupgrade-------#
  # Automatically updates/upgrades every twelve hours. It will also send a notficiation when it is updating. The first time it is called it will also upgrade right then and there.
  brew autoupdate start 43200 --upgrade --enable-notification --immediate

  # Installs OpenSSL and cURL with OpenSSL
  brew install openssl
  brew install curl --with-openssl
  brew link --force curl

  #-------ANALYTICS-------#
  # [PRIVACY]
  # Turns off Homebrew Analytical Data to be sent to developers
  brew analytics off

fi
