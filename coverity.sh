#!/bin/sh

set -e

echo "TRAVIS_OS_NAME: $TRAVIS_OS_NAME"
echo "JOB: $JOB"
echo "COVERITY_SCAN_PROJECT_NAME: $COVERITY_SCAN_PROJECT_NAME"
echo "COVERITY_SCAN_TOKEN: $COVERITY_SCAN_TOKEN"

if [[ $TRAVIS_OS_NAME != osx || $JOB != AAA ]]; then
  echo "Bad build configuration: $TRAVIS_OS_NAME / $JOB"
  exit 1
fi

curl -s https://scan.coverity.com/scripts/travisci_build_coverity_scan.sh | bash
