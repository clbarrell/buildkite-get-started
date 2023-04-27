#!/bin/bash

# View more tips for log output 👇
# https://buildkite.com/docs/pipelines/links-and-images-in-log-output

# This function takes a URL and optional link text and will output the correct escape code sequence:
function inline_link {
  LINK=$(printf "url='%s'" "$1")

  if [ $# -gt 1 ]; then
    LINK=$(printf "$LINK;content='%s'" "$2")
  fi

  printf '\033]1339;%s\a\n' "$LINK"
}

# This function takes an image URL and alternative text and will output the correct escape code sequence:
function inline_image {
  printf '\033]1338;url='"$1"';alt='"$2"'\a\n'
}

echo -e "--- \033[34m🚦 Test the rocket - will it fly? 🚦\033[0m"

echo 'Remember to look at the Buildkite Docs'
inline_link 'https://www.buildkite.com/docs'

echo 'Inspection complete :white_check_mark: Rocket confirmed OK'
inline_image 'https://media0.giphy.com/media/8Ry7iAVwKBQpG/giphy.gif' 'Rainbows'



