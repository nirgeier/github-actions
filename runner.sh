#!/bin/bash

# Create a folder
mkdir ~/actions-runner 

cd ~/actions-runner

# Download the latest runner package
curl -o actions-runner-osx-x64-2.309.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.309.0/actions-runner-osx-x64-2.309.0.tar.gz

# Extract the runner
tar xzf ./actions-runner-osx-x64-2.309.0.tar.gz

# Create the runner and start the configuration experience
./config.sh --url https://github.com/nirgeier/github-actions --token AAEHREVI2RYLBQQW7ZBAQODFCM7OC

# Last step, run it!
./run.sh