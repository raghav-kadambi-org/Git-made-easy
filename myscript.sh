#!/usr/bin/env bash



# Add all the files
git add .
# Commit all the files

echo "Enter the commit message: "
read  message
git commit -m"$message"

# Push the commit files
echo "Enter the branch you want to push: "
read branch

git push $branch


