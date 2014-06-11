if [ -z "$WERCKER_GIT_PUSH_REMOTE"  ]; then
    git push origin $WERCKER_GIT_BRANCH --tags
else
    git push $WERCKER_GIT_PUSH_REMOTE $WERCKER_GIT_BRANCH --tags
fi

