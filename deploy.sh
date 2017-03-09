cd $DEPLOYMENT_FOLDER

git add -A
git commit -m "`date`"
git push origin master

cd -
