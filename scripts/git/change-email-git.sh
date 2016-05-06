#!/bin/sh

if [ -z "$1" ]; then
  echo "You need to pass old email as an argument"
  exit 1
fi

git filter-branch --env-filter '
OLD_EMAIL="$1"
CORRECT_NAME="Lukasz Kaniowski"
CORRECT_EMAIL="lukasz.kaniowski@gmail.com"
if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags
