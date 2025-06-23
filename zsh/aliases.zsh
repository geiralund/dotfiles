alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

alias cp='cp -i'

alias rm='rm -i'


alias sniff='sudo lsof -iTCP -sTCP:LISTEN -n -P'
alias tot='du -cksh'
alias weather='curl wttr.in/Askim'
alias serve='python3 -m http.server'

alias elastic='open https://logs.adeo.no/'


function log() {
  if [[ -z "$1" ]]; then
    echo "Bruk: logapp <app-navn>"
    return 1
  fi
  stern --exclude-container cloudsql-proxy -lapp="$1"
}

function loggmeldinger() {
  if [[ -z "$1" ]]; then
    echo "Bruk: logapp <app-navn>"
    return 1
  fi
  stern --exclude-container cloudsql-proxy -lapp="$1" -o json | jq -r '
                                                                  .message
                                                                  | fromjson
                                                                  | select(.message | test("committing offset*"; "i") | not)
                                                                  | select(.message | test("responding to ping*"; "i") | not)
                                                                  | "\(.level) -> \(.message)"
                                                                '
}
