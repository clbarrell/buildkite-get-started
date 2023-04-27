#!/bin/bash

PLATFORM=$1

if [ -z "$PLATFORM" ]; then
  PLATFORM="no platform set"
fi

echo -e "--- \033[32m🔨 Build the rocket 🔨\033[0m"
echo "This is the first step, where we painstakingly put together all 2,303,638 parts of our rocket."
echo -e "Building our rocket on: \033[43m$PLATFORM\033[0m"