# azure-deploy-git

Deploy to Azure app services using local git repos

Configure environment variables
```sh
export DEPLOYMENT_USER=git-user-on-azure
export DEPLOYMENT_PASSWORD=git-password-on-azure
export DEPLOYMENT_URL='appservicename-$ENVIRONMENT.scm.azurewebsites.net:443/appservicename.git'
export DEPLOYMENT_FOLDER=bin

git config --global user.email "build@server.com"
git config --global user.name "Mr. Build Server"
```

- Do pre-build stuff
- Prepare git directory with `./prepare.sh ENVIRONMENT_NAME`
- Build
- Commit and push with `./deploy.sh ENVIRONMENT_NAME`
- Do post-build stuff
- Promote from one environment to the next with `./promote.sh qa prod`

More on that [here](https://www.feval.ca/posts/deploy-azure-git/)
