export GRADLE_OPTS="-Xms2g -Xmx4048m -Xss16m -XX:+HeapDumpOnOutOfMemoryError -Dfile.encoding=UTF-8"

export ORG_GRADLE_PROJECT_githubUser="x-access-token"
export ORG_GRADLE_PROJECT_githubPassword=`op read "op://Jobb/GithubPat/credential"` # https://support.1password.com/command-line-getting-started/