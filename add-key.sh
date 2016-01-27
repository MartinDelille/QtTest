#!/bin/bash

set -e

security create-keychain -p travis macos-build.keychain
security default-keychain -s macos-build.keychain
security unlock-keychain -p travis macos-build.keychain
security set-keychain-settings -t 3600 -l ~/Library/Keychains/macos-build.keychain
security import ./mac_app.cer -k ~/Library/Keychains/macos-build.keychain -T /usr/bin/codesign
security find-identity
