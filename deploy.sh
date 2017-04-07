#!/bin/bash

BRANCH=$1
VERSION=`git describe --always`

cd $DEPLOYMENT_FOLDER

git add -A
git commit -m "Commit $VERSION - Build as of `date`"
git push origin $BRANCH

cd -
