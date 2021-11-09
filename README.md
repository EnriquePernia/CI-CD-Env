# Jenkins and Sonar docker compose

This docker compose set up a Jenkis + Sonarqube environment ready to develop CI/CD pipelines. Both use internal docker volumes to persist data, you can change this if you want to get a local copy of the configuration folders.

Jenkins is exposed on port 8000 and Sonar on port 9000.

## About Jenkins image

The image used for Jenkins is based on jenkins/jenkins:lts, but with some packages installed for developing python pipelines.

## Usage

If you want to install some plugins on jenkins, you can do it on the interface or you can just write them down on jenkins_plugins/plugins.txt file.

To setup jenkins and start working just:

1. Execute `docker-compose up`

2. Copy the password provided in the shell

3. Paste it on jenkins interface `localhost:8000`

To access Sonarqube:

1. Go to `localhost:9000`
2. Username & Password -> admin
