if [ -z "$WERCKER_GIT_PUSH_GITHUB_ACCESS_TOKEN"  ]; then
    echo "pushing to default origin. You may not have permission to do this. Check if you have correctly set your access token"
    git push origin $WERCKER_GIT_BRANCH --tags
else
    echo "access token is specified"
    REMOTE="https://$WERCKER_GIT_PUSH_GITHUB_ACCESS_TOKEN@github.com/$WERCKER_GIT_OWNER/$WERCKER_GIT_REPOSITORY.git"
    echo "pushing to remote [ $REMOTE ]"
    git push $REMOTE $WERCKER_GIT_BRANCH --tags
fi

