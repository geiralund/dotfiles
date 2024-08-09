github_pat() {
  if [ -z "$PAT_SECRET" ]; then
    echo "Henter Github PAT fra 1Password"
    PAT_SECRET=$(op read "op://Jobb/GithubPat/credential") # https://support.1password.com/command-line-getting-started/
    export PAT_SECRET
  else
    echo "Github PAT fra 1Password er allerede satt"
  fi
}