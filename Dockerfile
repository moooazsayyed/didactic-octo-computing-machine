FROM jenkins/jenkins:lts-jdk17

USER root

# Install required plugins
RUN jenkins-plugin-cli --plugins \
    configuration-as-code \
    github-oauth \
    git

# Copy JCasC config
COPY jenkins.yml /var/jenkins_home/jenkins.yml

USER jenkins
