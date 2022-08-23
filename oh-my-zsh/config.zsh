export ZSH=~/.oh-my-zsh
#ZSH_THEME="af-magic"
#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
)
source ${ZSH}/oh-my-zsh.sh
# Syntaks
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Autocomplete
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# kubectx on prompt
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
PROMPT='$(kube_ps1)'${PROMPT}