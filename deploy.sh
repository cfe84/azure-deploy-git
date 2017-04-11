#!/bin/bash

BRANCH=$1
VERSION=`git describe --always`

cd $DEPLOY_FOLDER

git add -A
git commit -m "Commit $VERSION - Build as of `date`"
git push origin $BRANCH

cd -
