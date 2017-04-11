#!/bin/bash

ENVIRONMENT=$1
echo "Preparing environment for $ENVIRONMENT"

if [ ! -d "$DEPLOYMENT_FOLDER/.git" ]; then
    if [ ! -d "$DEPLOYMENT_FOLDER" ]; then
        mkdir "$DEPLOYMENT_FOLDER"
    fi
    cd "$DEPLOYMENT_FOLDER"
    git init
else
    cd "$DEPLOYMENT_FOLDER"
fi

if [ ! `git remote | grep $ENVIRONMENT` ]; then
    URL=`eval echo -n $DEPLOYMENT_URL`
    git remote add $ENVIRONMENT https://$DEPLOYMENT_USER:$DEPLOYMENT_PASSWORD@$URL
fi

git fetch $ENVIRONMENT
git clean -xdf
git checkout $ENVIRONMENT/master --force
git branch -f master $ENVIRONMENT/master
git checkout master

cd -
