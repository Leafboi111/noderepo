clear

tput setaf 1
echo "WARNING: This is an EXPERIMENTAL feature. Use at your own risk."
echo "Enter the repo in the format of 'user/repo' assuming 'https://github.com/'."
echo "Only bash and python supported."
echo "It is best that the repo follows 'https://github.com/leafboi111/FooApp' as a template."
echo "Things might break, as the repo you enter most likely is unofficial."

confirm() {
    # call with a prompt string or use a default
    read -r -p "${1:-Continue? [y/N]} " response
    case "$response" in
        [yY][eE][sS]|[yY]) 
            true
            ;;
        *)
            false
            exit 0;;
    esac
}

confirm

tput setaf 7

read -p "Repo you want to add: " repo

echo " $repo" >> data/repolist.txt
