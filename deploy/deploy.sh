#!/bin/bash

echo -e "+++ \033[31m\033[43m🚀 Time to deploy 🚀\033[0m"

# Launch the rocket
echo -e "\033[35m"
cat ./deploy/rocket.txt
echo -e "\033[0m"

# Annotate
buildkite-agent annotate 'Rocket is deployed! Nek minute, 🌒! (This is an annotation from `/deploy/deploy.sh`)' --style 'success'