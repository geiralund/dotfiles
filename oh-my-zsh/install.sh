# Check for oh-my-zsh
echo "  Installing oh-my-zsh for you."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"



if [[ -d ~/.zsh/zsh-syntax-highlighting ]]; then
    printf "Update zsh-syntax-highlighting \n"
    cd ~/.zsh/zsh-syntax-highlighting  || { echo "$HOME/.zsh/zsh-syntax-highlighting finne ikke"; exit 1; }
    git pull

else
    printf "Installing zsh-syntax-highlighting \n"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
fi



if [[ -d ~/.zsh/zsh-autosuggestions ]]; then
    printf "Update zsh-autosuggestions \n"
    cd ~/.zsh/zsh-autosuggestions  || { echo "$HOME/.zsh/zsh-autosuggestions finnes ikke"; exit 1; }
    git pull

else
    printf "Installing zsh-autosuggestions \n"
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
fi




