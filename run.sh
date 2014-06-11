if [ -z "$WERCKER_GIT_PUSH_REMOTE"  ]; then
    export WERCKER_GIT_PUSH_REMOTE="github_write";
fi

git push $WERCKER_GIT_PUSH_REMOTE $WERCKER_GIT_BRANCH --tags