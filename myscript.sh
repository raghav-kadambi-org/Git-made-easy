# Add git login
#!/usr/bin/env bash
file='config.txt'


token=""

# Read each line from the file
while IFS= read -r line; do  
    token="$line"  # Store the current line in token
done < "$file"


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


