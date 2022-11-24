clear

tput setaf 1
echo "WARNING: This is an EXPERIMENTAL feature. Use at your own risk."

read -p "Repo you want to add: " repo

echo " $repo" >> data/applist.txt
