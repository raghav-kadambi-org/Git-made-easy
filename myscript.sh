#!/usr/bin/env bash

# Read username and token from the config file
readarray -t config < config.txt
username="${config[0]}"
token="${config[2]}"

# Authenticate with GitHub using the token and HTTPS
echo "Logging in to GitHub as $username..."
echo "$token" | gh auth login --with-token --hostname github.com --git-protocol https

# Add all the files to staging
git add .

# Commit all the files with a message
echo "Enter the commit message: "
read -r message
git commit -m "$message"

# Push the commit to the specified branch
echo "Enter the branch you want to push: "
read -r branch
git push origin "$branch"
