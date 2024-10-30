#!/usr/bin/env bash

# Configuration file containing username and token
file='config.txt'
username=""
token=""
i=1

# Read the username and token from the config file
while IFS= read -r line; do
    if [ "$i" -eq 1 ]; then
        username="$line"
    elif [ "$i" -eq 2 ]; then
        token="$line"
    fi
    i=$((i + 1))
done < "$file"

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
