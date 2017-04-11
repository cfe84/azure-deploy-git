#!/bin/bash

ENVIRONMENT=$1
VERSION=`git describe --always`

echo "Deploying version $VERSION to $ENVIRONMENT"

cd $DEPLOYMENT_FOLDER

git add -A
git commit -m "Commit $VERSION - Build as of `date`"
git push $ENVIRONMENT master

cd -
