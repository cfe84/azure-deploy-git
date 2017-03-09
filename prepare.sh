if [ ! -d "$DEPLOYMENT_FOLDER/.git" ]; then
    if [ ! -d "$DEPLOYMENT_FOLDER" ]; then
        mkdir "$DEPLOYMENT_FOLDER"
    fi
    cd "$DEPLOYMENT_FOLDER"
    git init
    git remote add origin https://$DEPLOYMENT_USER:$DEPLOYMENT_PASSWORD@$DEPLOYMENT_URL
    git pull origin master
    cd -
fi