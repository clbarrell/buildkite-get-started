#!/bin/bash

echo -e "+++ \033[31m\033[43m🚀 Time to deploy 🚀\033[0m"

# Launch the rocket
echo -e "\033[35m"
cat ./scripts/rocket.txt
echo -e "\033[0m"

# Annotate
echo -e "Rocket is deployed! Let's go to the :waxing_crescent_moon:! (This is an annotation from \`/deploy/deploy.sh\`)" | buildkite-agent annotate --style 'success'