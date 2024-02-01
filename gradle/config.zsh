export GRADLE_OPTS="-Xms2g -Xmx4048m -Xss16m -XX:+HeapDumpOnOutOfMemoryError -Dfile.encoding=UTF-8"

gradle_secrets() {
    export ORG_GRADLE_PROJECT_githubUser="x-access-token"
    if [ -z "$ORG_GRADLE_PROJECT_githubPassword" ]; then
      echo "Henter Github PAT fra 1Password"
      export ORG_GRADLE_PROJECT_githubPassword=`op read "op://Jobb/GithubPat/credential"` # https://support.1password.com/command-line-getting-started/
      export GITHUB_USERNAME=$ORG_GRADLE_PROJECT_githubUser
      export GITHUB_PASSWORD=$ORG_GRADLE_PROJECT_githubPassword
    else
      echo "Github PAT fra 1Password er allerede satt"
    fi

}

