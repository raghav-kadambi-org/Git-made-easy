# Add git login
#!/usr/bin/env bash

echo "Enter github username"
read username
echo "Enter github token"  # Remember to give read org permission to your token
read -s token
echo "$token" | gh auth login --with-token



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


