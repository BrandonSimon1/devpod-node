#!/bin/bash

echo "https://$GITHUB_USERNAME:$GITHUB_PASSWORD@github.com" > ~/.git-credentials
git config --global user.name $NAME
git config --global user.email $EMAIL

mkdir /repo \
 && cd /repo \
 && git clone $REPO_URL . \
 && yarn 

sleep infinity