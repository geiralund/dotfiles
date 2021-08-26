alias k='kubectl'

alias pods='{name=$(cat -); k get pods --all-namespaces -lapp=$name; }<<<'

alias dev-fss='kubectx dev-fss'
alias dev-sbs='kubectx dev-sbs'
alias prod-sbs='kubectx prod-sbs'
alias prod-fss='kubectx prod-fss'
alias dev-gcp='kubectx dev-gcp'
alias prod-gcp='kubectx prod-gcp'