#!/usr/bin/env bash

URL="http://localhost:7474"
if [ -z $1 ]; then
  echo "Using default url: $URL"
else
  URL=$1
  echo "Using url: $URL"
fi

node ./node_modules/protractor/bin/webdriver-manager update

node node_modules/protractor/bin/protractor tests.js --baseUrl=$URL
