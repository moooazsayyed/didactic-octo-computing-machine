FROM jenkins/jenkins:lts-jdk17
USER root
# Install plugins if needed (e.g. configuration-as-code, github-oauth, oidc)
RUN jenkins-plugin-cli --plugins "configuration-as-code github-oauth"
COPY jenkins.yml /var/jenkins_home/jenkins.yml
USER jenkins
