# Add git login
#!/usr/bin/env bash
file='config.txt'

username=""
token=""
i=1  

while IFS= read -r line; do  
    # Reading each line
    if [ "$i" -eq 1 ]; then
        username="$line"
    elif [ "$i" -eq 2 ]; then
        token="$line"
    fi
    i=$((i + 1))  
done < "$file"
echo "$username"
echo "$token"
#echo "$token" | gh auth login --with-token


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


