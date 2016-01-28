#!/bin/bash

# Taken from https://www.objc.io/issues/6-build-tools/travis-ci/#add-scripts

set -e

# Create a custom keychain
security create-keychain -p travis macos-build.keychain

# Make the custom keychain default, so xcodebuild will use it for signing
security default-keychain -s macos-build.keychain

# Unlock the keychain
security unlock-keychain -p travis macos-build.keychain

# Set keychain timeout to 1 hour for long builds
security set-keychain-settings -t 3600 -l ~/Library/Keychains/macos-build.keychain

# Add certificates to keychain and allow codesign to access them
security import ./src/travis/certs/apple.cer -k ~/Library/Keychains/gephi-build.keychain -T /usr/bin/codesign
security import ./mac_app.cer -k ~/Library/Keychains/macos-build.keychain -T /usr/bin/codesign
security import ./dev_id.p12 -k ~/Library/Keychains/macos-build.keychain -P $KEY_PASSWORD -T /usr/bin/codesign

# Display the available identities
security find-identity
