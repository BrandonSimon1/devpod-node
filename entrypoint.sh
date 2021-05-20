#!/bin/bash -i

# Set up git identity
git config --global user.name $NAME
git config --global user.email $EMAIL

# Set up git credentials
mkdir ~/.ssh/
echo -e "$SSH_PRIVATE_KEY" > ~/.ssh/id_rsa
chmod 0600 ~/.ssh/id_rsa

ssh-keyscan github.com >> ~/.ssh/known_hosts

# Clone repo if doesn't exist yet
if [ ! -d /repo ]
then
    mkdir /repo 
    cd /repo 
    git clone $REPO_URL .
fi

# Install node
nvm install $NODE_VERSION 
nvm use $NODE_VERSION 
nvm alias default $NODE_VERSION

npm install -g yarn

sleep infinity