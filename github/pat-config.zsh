github_pat() {
  if [ -z "$PAT_SECRET" ]; then
    echo "Henter Github PAT fra 1Password"
    export PAT_SECRET=$(op read "op://Jobb/GithubPat/credential") # https://support.1password.com/command-line-getting-started/
    call reload! # Reloads the shell
 else
    echo "Github PAT fra 1Password er allerede satt"
  fi
}